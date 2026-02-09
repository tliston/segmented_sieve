#include <stdio.h>
#include <stdlib.h>
#include <stdint.h>
#include <string.h>
#include <time.h>
#include <math.h>
#include <locale.h>
#include <emmintrin.h>
#include <pthread.h>
#include <unistd.h>

#define BLOCK_BYTES 32760
#define BLOCK_BITS  (BLOCK_BYTES * 8)

static uint8_t mask[] = { 1, 2, 4, 8, 16, 32, 64, 128 };
static uint8_t mask2[] = { 254, 253, 251, 247, 239, 223, 191, 127 };

typedef struct {
    uint64_t p;
    uint64_t next_bit;
} PrimeState;

typedef struct {
    uint64_t start_bit;
    uint64_t end_bit;
    PrimeState *base_primes;
    uint64_t thread_total;
} ThreadData;

uint8_t pattern_a[16] =
    { 0x6D, 0xDB, 0xB6, 0x6D, 0xDB, 0xB6, 0x6D, 0xDB, 0xB6, 0x6D, 0xDB, 0xB6, 0x6D, 0xDB, 0xB6, 0x6D };
uint8_t pattern_b[8] = { 0xDB, 0xB6, 0x6D, 0xDB, 0xB6, 0x6D, 0xDB, 0xB6 };

// the number of primes in our calculated list of base primes
// we keep it global to make it accessible to all threads
size_t prime_count = 0;

struct timespec diff_timespec(const struct timespec *time1, const struct timespec *time0) {
    struct timespec diff = {.tv_sec = time1->tv_sec - time0->tv_sec,    // 
        .tv_nsec = time1->tv_nsec - time0->tv_nsec
    };
    if (diff.tv_nsec < 0) {
        diff.tv_nsec += 1000000000;
        diff.tv_sec--;
    }
    return diff;
}

PrimeState *GetBasePrimes(uint64_t limit, size_t *count) {
    uint64_t byte_len = (limit >> 4) + 2;
    uint8_t *mem = (uint8_t *) malloc(byte_len);
    memset(mem, 0xFF, byte_len);
    mem[0] &= 0xFE;

    uint64_t i_limit = sqrt(limit);
    for (uint64_t i = 3; i <= i_limit; i += 2) {
        if (mem[i >> 4] & mask[(i >> 1) & 7]) {
            for (uint64_t j = (i * i) >> 1; j < (limit >> 1) + 1; j += i) {
                mem[j >> 3] &= mask2[j & 7];
            }
        }
    }
    size_t c = 0;
    for (uint64_t i = 3; i <= limit; i += 2) {
        if (mem[i >> 4] & mask[(i >> 1) & 7])
            c++;
    }
    PrimeState *primes = (PrimeState *) malloc(sizeof(PrimeState) * c);
    size_t idx = 0;
    for (uint64_t i = 3; i <= limit; i += 2) {
        if (mem[i >> 4] & mask[(i >> 1) & 7]) {
            primes[idx].p = i;
            primes[idx].next_bit = (i * i) >> 1;
            idx++;
        }
    }
    *count = idx;
    free(mem);
    return primes;
}

// Converted to run as a thread...
void *SieveRange(void *arg) {
    ThreadData *data = (ThreadData *) arg;
    uint8_t *block = (uint8_t *) _mm_malloc(BLOCK_BYTES, 16);
    __m128i v16 = _mm_loadu_si128((__m128i *) pattern_a);
    __m128i v8 = _mm_loadl_epi64((__m128i *) pattern_b);

    PrimeState *local_primes = malloc(sizeof(PrimeState) * prime_count);
    memcpy(local_primes, data->base_primes, sizeof(PrimeState) * prime_count);

    // Precise fast-forwarding for each thread's range
    for (size_t i = 0; i < prime_count; i++) {
        uint64_t p = local_primes[i].p;
        uint64_t next = local_primes[i].next_bit;
        if (next < data->start_bit) {
            uint64_t skip = (data->start_bit - next + p - 1) / p;
            local_primes[i].next_bit = next + skip * p;
        }
    }

    data->thread_total = 0;

    for (uint64_t offset = data->start_bit; offset < data->end_bit; offset += BLOCK_BITS) {
        uint64_t bits_in_block = (offset + BLOCK_BITS > data->end_bit) ? (data->end_bit - offset) : BLOCK_BITS;

        uint8_t *p2 = block;
        uint8_t *pmax = block + BLOCK_BYTES;
        while (p2 < pmax) {
            _mm_storeu_si128((__m128i *) p2, v16);
            _mm_storel_epi64((__m128i *) (p2 + 16), v8);
            p2 += 24;
        }
        if (offset == 0)
            block[0] = 0x6E;                     // Restore 3, clear 1

        for (size_t i = 0; i < prime_count; i++) {
            uint64_t p = local_primes[i].p;
            uint64_t chk_bit = local_primes[i].next_bit;
            if (chk_bit >= offset + bits_in_block)
                continue;

            chk_bit -= offset;
            uint64_t step = p;

            if (bits_in_block > (step << 3)) {
                uint64_t unroll_limit = bits_in_block - (step << 3);
                while (chk_bit < unroll_limit) {
                    block[chk_bit >> 3] &= mask2[chk_bit & 7];
                    block[(chk_bit + step) >> 3] &= mask2[(chk_bit + step) & 7];
                    block[(chk_bit + 2 * step) >> 3] &= mask2[(chk_bit + 2 * step) & 7];
                    block[(chk_bit + 3 * step) >> 3] &= mask2[(chk_bit + 3 * step) & 7];
                    block[(chk_bit + 4 * step) >> 3] &= mask2[(chk_bit + 4 * step) & 7];
                    block[(chk_bit + 5 * step) >> 3] &= mask2[(chk_bit + 5 * step) & 7];
                    block[(chk_bit + 6 * step) >> 3] &= mask2[(chk_bit + 6 * step) & 7];
                    block[(chk_bit + 7 * step) >> 3] &= mask2[(chk_bit + 7 * step) & 7];
                    chk_bit += (step << 3);
                }
            }
            while (chk_bit < bits_in_block) {
                block[chk_bit >> 3] &= mask2[chk_bit & 7];
                chk_bit += step;
            }
            local_primes[i].next_bit = offset + chk_bit;
        }

        uint64_t *block64 = (uint64_t *) block;
        for (uint64_t k = 0; k < BLOCK_BYTES / 8; k++) {
            uint64_t current_idx = offset + (k * 64);
            if (current_idx >= data->end_bit)
                break;
            uint64_t val = block64[k];
            if (current_idx + 64 > data->end_bit) {
                // Correct masking for the end of a thread's range
                val &= (~0ULL >> (current_idx + 64 - data->end_bit));
            }
            data->thread_total += __builtin_popcountll(val);
        }
    }

    _mm_free(block);
    free(local_primes);
    return NULL;
}

int main(int argc, char *argv[]) {
    if (argc < 2) {
        printf("Usage: %s max\n", argv[0]);
        return 1;
    }
    uint64_t max_num = strtoull(argv[1], NULL, 0);
    uint64_t total_bits = (max_num >> 1) + 1;

    setlocale(LC_ALL, "");

    // --- CORE DETECTION LOGIC ---
    // we're going to run a bunch of threads!!!
    int num_threads;
    // sysconf returns the number of processors currently online
    long nprocs = sysconf(_SC_NPROCESSORS_ONLN);
    if (nprocs < 1) {
        num_threads = 8;                         // Default fallback
    } else {
        num_threads = (int)nprocs;
    }
    printf("Creating %i threads...\n", num_threads);
    pthread_t threads[num_threads];
    ThreadData data[num_threads];

    PrimeState *base_primes = GetBasePrimes(sqrt(max_num), &prime_count);

    // CRITICAL: Align each thread to a BLOCK_BITS boundary to preserve SIMD pattern mod-3 logic
    uint64_t total_blocks = (total_bits + BLOCK_BITS - 1) / BLOCK_BITS;
    uint64_t blocks_per_thread = total_blocks / num_threads;

    struct timespec begin, end, diff;
    clock_gettime(CLOCK_REALTIME, &begin);

    for (int i = 0; i < num_threads; i++) {
        data[i].start_bit = i * blocks_per_thread * BLOCK_BITS;
        // Last thread takes the remainder
        if (i == num_threads - 1) {
            data[i].end_bit = total_bits;
        } else {
            data[i].end_bit = (i + 1) * blocks_per_thread * BLOCK_BITS;
            if (data[i].end_bit > total_bits)
                data[i].end_bit = total_bits;
        }
        data[i].base_primes = base_primes;
        pthread_create(&threads[i], NULL, SieveRange, &data[i]);
    }

    uint64_t total_primes = 1;                   // Count 2
    for (int i = 0; i < num_threads; i++) {
        pthread_join(threads[i], NULL);
        total_primes += data[i].thread_total;
    }

    clock_gettime(CLOCK_REALTIME, &end);
    diff = diff_timespec(&end, &begin);
    printf("Time = %0.5f seconds\n", diff.tv_sec + (diff.tv_nsec / 1e9));
    printf("Total primes: %'lu in %'lu\n", total_primes, max_num);

    free(base_primes);
    return 0;
}
