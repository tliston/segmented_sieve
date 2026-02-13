#include <stdio.h>
#include <stdlib.h>
#include <stdint.h>
#include <string.h>
#include <time.h>
#include <math.h>
#include <locale.h>
#include <immintrin.h>
#include <pthread.h>
#include <unistd.h>

#define BLOCK_BYTES 32760
#define BLOCK_BITS  (BLOCK_BYTES * 8)
#define SUPER_PATTERN_BYTES 3360

static uint8_t mask[] = { 254, 253, 251, 247, 239, 223, 191, 127 };

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

// make this global so it can be accessed by all threads
size_t prime_count = 0;

// AVX2 Pattern for primes 3, 5, 7. Period = 3*5*7 = 105 bits.
// We use a 105-byte buffer to make tiling simple.
#ifdef __AVX2__
static uint8_t super_pattern[SUPER_PATTERN_BYTES] __attribute__((aligned(32)));
#else
static uint8_t pattern105[105];
#endif

// we run this code once, in the beginning of main()
void init_avx_pattern() {
    uint8_t p105[105];
    memset(p105, 0xFF, 105);
    for (int i = 0; i < 105 * 8; i++) {
        uint64_t num = 2 * i + 1;
        if (num % 3 == 0 || num % 5 == 0 || num % 7 == 0) {
            p105[i >> 3] &= ~(1 << (i & 7));
        }
    }
#ifdef __AVX2__
    for (int i = 0; i < SUPER_PATTERN_BYTES; i += 105) {
        memcpy(super_pattern + i, p105, 105);
    }
#else
    memcpy(pattern105, p105, 105);
#endif
}

void static inline FastFill(uint8_t *block, size_t n_bytes) {
#ifdef __AVX2__
    size_t i = 0;
    __m256i *sp_avx = (__m256i *)super_pattern;
    for (; i + SUPER_PATTERN_BYTES <= n_bytes; i += SUPER_PATTERN_BYTES) {
        __m256i *dest = (__m256i *)(block + i);
        for (int j = 0; j < SUPER_PATTERN_BYTES / 32; j++) {
            _mm256_store_si256(&dest[j], _mm256_load_si256(&sp_avx[j]));
        }
    }
    if (i < n_bytes) memcpy(block + i, super_pattern, n_bytes - i);
#else
    for (size_t i = 0; i < n_bytes; i += 105) {
        size_t to_copy = (n_bytes - i < 105) ? (n_bytes - i) : 105;
        memcpy(block + i, pattern105, to_copy);
    }
#endif
}

struct timespec inline diff_timespec(const struct timespec *time1, const struct timespec *time0) {
    struct timespec diff = {.tv_sec = time1->tv_sec - time0->tv_sec, .tv_nsec = time1->tv_nsec - time0->tv_nsec};
    if (diff.tv_nsec < 0) { diff.tv_nsec += 1000000000; diff.tv_sec--; }
    return diff;
}

PrimeState *GetBasePrimes(uint64_t limit, size_t *count) {
    uint64_t byte_len = (limit >> 4) + 2;
    uint8_t *mem = (uint8_t *) malloc(byte_len);
    memset(mem, 0xFF, byte_len);
    mem[0] &= 0xFE;

    uint64_t i_limit = sqrt(limit);
    for (uint64_t i = 3; i <= i_limit; i += 2) {
        if (mem[i >> 4] & (1 << ((i >> 1) & 7))) {
            for (uint64_t j = (i * i) >> 1; j < (limit >> 1) + 1; j += i) {
                mem[j >> 3] &= mask[j & 7];
            }
        }
    }
    size_t c = 0;
    for (uint64_t i = 3; i <= limit; i += 2) {
        if (mem[i >> 4] & (1 << ((i >> 1) & 7))) c++;
    }
    PrimeState *primes = (PrimeState *) malloc(sizeof(PrimeState) * c);
    size_t idx = 0;
    for (uint64_t i = 3; i <= limit; i += 2) {
        if (mem[i >> 4] & (1 << ((i >> 1) & 7))) {
            primes[idx].p = i;
            primes[idx].next_bit = (i * i) >> 1;
            idx++;
        }
    }
    *count = idx;
    free(mem);
    return primes;
}

// this is now configured to work as a thread
void *SieveRange(void *arg) {
    ThreadData *data = (ThreadData *) arg;
    uint8_t *block = (uint8_t *) _mm_malloc(BLOCK_BYTES, 32); // Align for AVX2

    PrimeState *local_primes = malloc(sizeof(PrimeState) * prime_count);
    memcpy(local_primes, data->base_primes, sizeof(PrimeState) * prime_count);

    // fast forward the next_bit values for each prime, based on our working range
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

        // AVX2 Fast Fill (skips 3, 5, 7)
        FastFill(block, BLOCK_BYTES);

        // if this is the first block, set the bit representing 1 (bit 0) to 0
        // (i.e. 1 isn't prime) and restore the bits representing 3, 5, and 7
        // (bits 1, 2, and 3) to 1 (i.e. 3, 5, and 7 *are* prime...)
        if (offset == 0) block[0] = 0x6E;

        // Optimized Inner Loop starting from the 4th prime (11, index 3)
        for (size_t i = 3; i < prime_count; i++) {
            uint64_t p = local_primes[i].p;
            uint64_t chk_bit = local_primes[i].next_bit;
            if (chk_bit >= offset + bits_in_block) continue;

            chk_bit -= offset;
            uint64_t step = p;

            // Manual loop unrolling (8x)
            if (bits_in_block > (step << 3)) {
                uint64_t unroll_limit = bits_in_block - (step << 3);
                while (chk_bit < unroll_limit) {
                    block[chk_bit >> 3] &= mask[chk_bit & 7];
                    uint64_t c1 = chk_bit + step; block[c1 >> 3] &= mask[c1 & 7];
                    uint64_t c2 = c1 + step; block[c2 >> 3] &= mask[c2 & 7];
                    uint64_t c3 = c2 + step; block[c3 >> 3] &= mask[c3 & 7];
                    uint64_t c4 = c3 + step; block[c4 >> 3] &= mask[c4 & 7];
                    uint64_t c5 = c4 + step; block[c5 >> 3] &= mask[c5 & 7];
                    uint64_t c6 = c5 + step; block[c6 >> 3] &= mask[c6 & 7];
                    uint64_t c7 = c6 + step; block[c7 >> 3] &= mask[c7 & 7];
                    chk_bit = c7 + step;
                }
            }
            // do any "left over" bits that aren't in our
            // multiple-of-8 sized block...
            while (chk_bit < bits_in_block) {
                block[chk_bit >> 3] &= mask[chk_bit & 7];
                chk_bit += step;
            }
            local_primes[i].next_bit = offset + chk_bit;
        }

        // we want to step through memory as 64-bit values
        // so we need to convert to the proper kind of pointer
        uint64_t *block64 = (uint64_t *) block;
        // step through memory, and count the bits that are
        // turned on within each 64-bit chunk...
        for (uint64_t k = 0; k < BLOCK_BYTES / 8; k++) {
            uint64_t current_idx = offset + (k * 64);
            // if we're beyond the end_bit, we're done
            if (current_idx >= data->end_bit) break;
            uint64_t val = block64[k];
            // if we're right before the end of our range,
            // blank out any bits that are beyond the end
            // of our range before counting...
            if (current_idx + 64 > data->end_bit)
                val &= (~0ULL >> (current_idx + 64 - data->end_bit));
            // count bits using popcount()
            data->thread_total += __builtin_popcountll(val);
        }
    }

    // free memory and return
    _mm_free(block);
    free(local_primes);
    return NULL;
}

int main(int argc, char *argv[]) {
    if (argc < 2) { printf("Usage: %s max\n", argv[0]); return 1; }
    uint64_t input_max; 
    uint64_t max_num = input_max = strtoull(argv[1], NULL, 0);
    if (!(max_num & 1)) max_num--;
    uint64_t total_bits = (max_num >> 1) + 1;

    setlocale(LC_ALL, "");
    init_avx_pattern();

    long nprocs = sysconf(_SC_NPROCESSORS_ONLN);
    int num_threads = (nprocs < 1) ? 8 : (int)nprocs;
    printf("Creating %i threads...\n", num_threads);

    pthread_t threads[num_threads];
    ThreadData data[num_threads];
    PrimeState *base_primes = GetBasePrimes(sqrt(max_num), &prime_count);

    uint64_t total_blocks = (total_bits + BLOCK_BITS - 1) / BLOCK_BITS;
    uint64_t blocks_per_thread = total_blocks / num_threads;

    struct timespec begin, end, diff;
    clock_gettime(CLOCK_REALTIME, &begin);

    for (int i = 0; i < num_threads; i++) {
        data[i].start_bit = i * blocks_per_thread * BLOCK_BITS;
        data[i].end_bit = (i == num_threads - 1) ? total_bits : (i + 1) * blocks_per_thread * BLOCK_BITS;
        if (data[i].end_bit > total_bits) data[i].end_bit = total_bits;
        data[i].base_primes = base_primes;
        pthread_create(&threads[i], NULL, SieveRange, &data[i]);
    }

    uint64_t total_primes = 1; // Count 2
    for (int i = 0; i < num_threads; i++) {
        pthread_join(threads[i], NULL);
        total_primes += data[i].thread_total;
    }

    clock_gettime(CLOCK_REALTIME, &end);
    diff = diff_timespec(&end, &begin);
    printf("Time = %0.5f seconds\n", diff.tv_sec + (diff.tv_nsec / 1e9));
    printf("Total primes: %'lu in %'lu\n", total_primes, input_max);

    free(base_primes);
    return 0;
}
