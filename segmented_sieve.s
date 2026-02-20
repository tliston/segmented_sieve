	.file	"segmented_sieve.c"
	.intel_syntax noprefix
# GNU C99 (Ubuntu 13.3.0-6ubuntu2~24.04.1) version 13.3.0 (x86_64-linux-gnu)
#	compiled by GNU C version 13.3.0, GMP version 6.3.0, MPFR version 4.2.1, MPC version 1.3.1, isl version isl-0.26-GMP

# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed: -march=alderlake -mmmx -mpopcnt -msse -msse2 -msse3 -mssse3 -msse4.1 -msse4.2 -mavx -mavx2 -mno-sse4a -mno-fma4 -mno-xop -mfma -mno-avx512f -mbmi -mbmi2 -maes -mpclmul -mno-avx512vl -mno-avx512bw -mno-avx512dq -mno-avx512cd -mno-avx512er -mno-avx512pf -mno-avx512vbmi -mno-avx512ifma -mno-avx5124vnniw -mno-avx5124fmaps -mno-avx512vpopcntdq -mno-avx512vbmi2 -mgfni -mvpclmulqdq -mno-avx512vnni -mno-avx512bitalg -mno-avx512bf16 -mno-avx512vp2intersect -mno-3dnow -madx -mabm -mno-cldemote -mclflushopt -mclwb -mno-clzero -mcx16 -mno-enqcmd -mf16c -mfsgsbase -mfxsr -mno-hle -msahf -mno-lwp -mlzcnt -mmovbe -mmovdir64b -mmovdiri -mno-mwaitx -mpconfig -mpku -mno-prefetchwt1 -mprfchw -mptwrite -mrdpid -mrdrnd -mrdseed -mno-rtm -mserialize -mno-sgx -msha -mshstk -mno-tbm -mno-tsxldtrk -mvaes -mwaitpkg -mno-wbnoinvd -mxsave -mxsavec -mxsaveopt -mxsaves -mno-amx-tile -mno-amx-int8 -mno-amx-bf16 -mno-uintr -mhreset -mno-kl -mno-widekl -mavxvnni -mno-avx512fp16 -mno-avxifma -mno-avxvnniint8 -mno-avxneconvert -mno-cmpccxadd -mno-amx-fp16 -mno-prefetchi -mno-raoint -mno-amx-complex --param=l1-cache-size=32 --param=l1-cache-line-size=64 --param=l2-cache-size=18432 -mtune=alderlake -masm=intel -O3 -std=gnu99 -funroll-loops -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection -fcf-protection
	.text
	.p2align 4
	.globl	SieveRange
	.type	SieveRange, @function
SieveRange:
.LFB6496:
	.cfi_startproc
	endbr64	
	push	r15	#
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
# /usr/lib/gcc/x86_64-linux-gnu/13/include/mm_malloc.h:45:   if (posix_memalign (&__ptr, __alignment, __size) == 0)
	mov	edx, 32760	#,
	mov	esi, 32	#,
# segmented_sieve.c:118: void *SieveRange(void *arg) {
	push	r14	#
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	mov	r14, rdi	# arg, tmp637
	push	r13	#
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	push	r12	#
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	push	rbp	#
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	push	rbx	#
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	sub	rsp, 232	#,
	.cfi_def_cfa_offset 288
# segmented_sieve.c:118: void *SieveRange(void *arg) {
	mov	rax, QWORD PTR fs:40	# tmp644, MEM[(<address-space-1> long unsigned int *)40B]
	mov	QWORD PTR 216[rsp], rax	# D.45593, tmp644
	xor	eax, eax	# tmp644
# /usr/lib/gcc/x86_64-linux-gnu/13/include/mm_malloc.h:45:   if (posix_memalign (&__ptr, __alignment, __size) == 0)
	lea	rdi, 208[rsp]	# tmp219,
	call	posix_memalign@PLT	#
	xor	r11d, r11d	# _154
	test	eax, eax	# tmp638
	jne	.L2	#,
	mov	r11, QWORD PTR 208[rsp]	# _154, D.45459
.L2:
# segmented_sieve.c:122:     PrimeState *local_primes = malloc(sizeof(PrimeState) * prime_count);
	mov	r15, QWORD PTR prime_count[rip]	# prime_count.0_1, prime_count
	mov	QWORD PTR 8[rsp], r11	# %sfp, _154
	mov	rbx, r15	# _2, prime_count.0_1
	mov	QWORD PTR 56[rsp], r15	# %sfp, prime_count.0_1
	sal	rbx, 4	# _2,
	mov	rdi, rbx	#, _2
	call	malloc@PLT	#
# /usr/include/x86_64-linux-gnu/bits/string_fortified.h:29:   return __builtin___memcpy_chk (__dest, __src, __len,
	mov	rsi, QWORD PTR 16[r14]	# MEM[(struct ThreadData *)arg_106(D)].base_primes, MEM[(struct ThreadData *)arg_106(D)].base_primes
	mov	rcx, rbx	#, _2
	mov	rdx, rbx	#, _2
	mov	rdi, rax	#, local_primes
# segmented_sieve.c:122:     PrimeState *local_primes = malloc(sizeof(PrimeState) * prime_count);
	mov	r13, rax	# local_primes, tmp639
# /usr/include/x86_64-linux-gnu/bits/string_fortified.h:29:   return __builtin___memcpy_chk (__dest, __src, __len,
	call	__memcpy_chk@PLT	#
# segmented_sieve.c:126:     for (size_t i = 0; i < prime_count; i++) {
	test	r15, r15	# prime_count.0_1
	mov	r11, QWORD PTR 8[rsp]	# _154, %sfp
# segmented_sieve.c:129:         if (next < data->start_bit) {
	mov	r15, QWORD PTR [r14]	# ivtmp.97, MEM[(struct ThreadData *)arg_106(D)].start_bit
# segmented_sieve.c:126:     for (size_t i = 0; i < prime_count; i++) {
	je	.L6	#,
	lea	rax, -16[rbx]	# tmp381,
	lea	rsi, -1[r15]	# _115,
	mov	rcx, r13	# ivtmp.103, local_primes
	shr	rax, 4	# tmp379,
	lea	r8, [rbx+r13]	# _18,
	add	rax, 1	# tmp382,
	and	eax, 7	# tmp383,
	je	.L5	#,
	cmp	rax, 1	# tmp383,
	je	.L147	#,
	cmp	rax, 2	# tmp383,
	je	.L148	#,
	cmp	rax, 3	# tmp383,
	je	.L149	#,
	cmp	rax, 4	# tmp383,
	je	.L150	#,
	cmp	rax, 5	# tmp383,
	je	.L151	#,
	cmp	rax, 6	# tmp383,
	je	.L152	#,
# segmented_sieve.c:128:         uint64_t next = local_primes[i].next_bit;
	mov	r9, QWORD PTR 8[r13]	# next, MEM[(long unsigned int *)_172 + 8B]
# segmented_sieve.c:129:         if (next < data->start_bit) {
	cmp	r9, r15	# next, ivtmp.97
	jnb	.L112	#,
# segmented_sieve.c:127:         uint64_t p = local_primes[i].p;
	mov	rdi, QWORD PTR 0[r13]	# p, MEM[(long unsigned int *)_172]
# segmented_sieve.c:131:             local_primes[i].next_bit = next + skip * p;
	xor	edx, edx	# tmp524
# segmented_sieve.c:130:             uint64_t skip = (data->start_bit - next + p - 1) / p;
	lea	rcx, [rsi+rdi]	# tmp522,
	sub	rcx, r9	# tmp523, next
# segmented_sieve.c:131:             local_primes[i].next_bit = next + skip * p;
	mov	rax, rcx	# tmp525, tmp523
	div	rdi	# p
	sub	rcx, rdx	# tmp526, tmp524
# segmented_sieve.c:131:             local_primes[i].next_bit = next + skip * p;
	add	rcx, r9	# tmp527, next
	mov	QWORD PTR 8[r13], rcx	# MEM[(long unsigned int *)_172 + 8B], tmp527
.L112:
# segmented_sieve.c:126:     for (size_t i = 0; i < prime_count; i++) {
	lea	rcx, 16[r13]	# ivtmp.103,
.L152:
# segmented_sieve.c:128:         uint64_t next = local_primes[i].next_bit;
	mov	r10, QWORD PTR 8[rcx]	# next, MEM[(long unsigned int *)_172 + 8B]
# segmented_sieve.c:129:         if (next < data->start_bit) {
	cmp	r10, r15	# next, ivtmp.97
	jnb	.L115	#,
# segmented_sieve.c:127:         uint64_t p = local_primes[i].p;
	mov	rbp, QWORD PTR [rcx]	# p, MEM[(long unsigned int *)_172]
# segmented_sieve.c:131:             local_primes[i].next_bit = next + skip * p;
	xor	edx, edx	# tmp532
# segmented_sieve.c:130:             uint64_t skip = (data->start_bit - next + p - 1) / p;
	lea	r12, [rsi+rbp]	# tmp530,
	sub	r12, r10	# tmp531, next
# segmented_sieve.c:131:             local_primes[i].next_bit = next + skip * p;
	mov	rax, r12	# tmp533, tmp531
	div	rbp	# p
	sub	r12, rdx	# tmp534, tmp532
# segmented_sieve.c:131:             local_primes[i].next_bit = next + skip * p;
	add	r12, r10	# tmp535, next
	mov	QWORD PTR 8[rcx], r12	# MEM[(long unsigned int *)_172 + 8B], tmp535
.L115:
# segmented_sieve.c:126:     for (size_t i = 0; i < prime_count; i++) {
	add	rcx, 16	# ivtmp.103,
.L151:
# segmented_sieve.c:128:         uint64_t next = local_primes[i].next_bit;
	mov	r10, QWORD PTR 8[rcx]	# next, MEM[(long unsigned int *)_172 + 8B]
# segmented_sieve.c:129:         if (next < data->start_bit) {
	cmp	r10, r15	# next, ivtmp.97
	jnb	.L118	#,
# segmented_sieve.c:127:         uint64_t p = local_primes[i].p;
	mov	r9, QWORD PTR [rcx]	# p, MEM[(long unsigned int *)_172]
# segmented_sieve.c:131:             local_primes[i].next_bit = next + skip * p;
	xor	edx, edx	# tmp540
# segmented_sieve.c:130:             uint64_t skip = (data->start_bit - next + p - 1) / p;
	lea	rdi, [rsi+r9]	# tmp538,
	sub	rdi, r10	# tmp539, next
# segmented_sieve.c:131:             local_primes[i].next_bit = next + skip * p;
	mov	rax, rdi	# tmp541, tmp539
	div	r9	# p
	sub	rdi, rdx	# tmp542, tmp540
# segmented_sieve.c:131:             local_primes[i].next_bit = next + skip * p;
	add	rdi, r10	# tmp543, next
	mov	QWORD PTR 8[rcx], rdi	# MEM[(long unsigned int *)_172 + 8B], tmp543
.L118:
# segmented_sieve.c:126:     for (size_t i = 0; i < prime_count; i++) {
	add	rcx, 16	# ivtmp.103,
.L150:
# segmented_sieve.c:128:         uint64_t next = local_primes[i].next_bit;
	mov	rbp, QWORD PTR 8[rcx]	# next, MEM[(long unsigned int *)_172 + 8B]
# segmented_sieve.c:129:         if (next < data->start_bit) {
	cmp	rbp, r15	# next, ivtmp.97
	jnb	.L121	#,
# segmented_sieve.c:127:         uint64_t p = local_primes[i].p;
	mov	r12, QWORD PTR [rcx]	# p, MEM[(long unsigned int *)_172]
# segmented_sieve.c:131:             local_primes[i].next_bit = next + skip * p;
	xor	edx, edx	# tmp548
# segmented_sieve.c:130:             uint64_t skip = (data->start_bit - next + p - 1) / p;
	lea	r10, [rsi+r12]	# tmp546,
	sub	r10, rbp	# tmp547, next
# segmented_sieve.c:131:             local_primes[i].next_bit = next + skip * p;
	mov	rax, r10	# tmp549, tmp547
	div	r12	# p
	sub	r10, rdx	# tmp550, tmp548
# segmented_sieve.c:131:             local_primes[i].next_bit = next + skip * p;
	add	r10, rbp	# tmp551, next
	mov	QWORD PTR 8[rcx], r10	# MEM[(long unsigned int *)_172 + 8B], tmp551
.L121:
# segmented_sieve.c:126:     for (size_t i = 0; i < prime_count; i++) {
	add	rcx, 16	# ivtmp.103,
.L149:
# segmented_sieve.c:128:         uint64_t next = local_primes[i].next_bit;
	mov	rbp, QWORD PTR 8[rcx]	# next, MEM[(long unsigned int *)_172 + 8B]
# segmented_sieve.c:129:         if (next < data->start_bit) {
	cmp	rbp, r15	# next, ivtmp.97
	jb	.L223	#,
.L124:
# segmented_sieve.c:126:     for (size_t i = 0; i < prime_count; i++) {
	add	rcx, 16	# ivtmp.103,
.L148:
# segmented_sieve.c:128:         uint64_t next = local_primes[i].next_bit;
	mov	r12, QWORD PTR 8[rcx]	# next, MEM[(long unsigned int *)_172 + 8B]
# segmented_sieve.c:129:         if (next < data->start_bit) {
	cmp	r12, r15	# next, ivtmp.97
	jb	.L224	#,
.L127:
# segmented_sieve.c:126:     for (size_t i = 0; i < prime_count; i++) {
	add	rcx, 16	# ivtmp.103,
.L147:
# segmented_sieve.c:128:         uint64_t next = local_primes[i].next_bit;
	mov	r9, QWORD PTR 8[rcx]	# next, MEM[(long unsigned int *)_172 + 8B]
# segmented_sieve.c:129:         if (next < data->start_bit) {
	cmp	r9, r15	# next, ivtmp.97
	jnb	.L130	#,
# segmented_sieve.c:127:         uint64_t p = local_primes[i].p;
	mov	r12, QWORD PTR [rcx]	# p, MEM[(long unsigned int *)_172]
# segmented_sieve.c:131:             local_primes[i].next_bit = next + skip * p;
	xor	edx, edx	# tmp572
# segmented_sieve.c:130:             uint64_t skip = (data->start_bit - next + p - 1) / p;
	lea	rdi, [rsi+r12]	# tmp570,
	sub	rdi, r9	# tmp571, next
# segmented_sieve.c:131:             local_primes[i].next_bit = next + skip * p;
	mov	rax, rdi	# tmp573, tmp571
	div	r12	# p
	sub	rdi, rdx	# tmp574, tmp572
# segmented_sieve.c:131:             local_primes[i].next_bit = next + skip * p;
	add	rdi, r9	# tmp575, next
	mov	QWORD PTR 8[rcx], rdi	# MEM[(long unsigned int *)_172 + 8B], tmp575
.L130:
# segmented_sieve.c:126:     for (size_t i = 0; i < prime_count; i++) {
	add	rcx, 16	# ivtmp.103,
	cmp	r8, rcx	# _18, ivtmp.103
	je	.L6	#,
.L5:
# segmented_sieve.c:128:         uint64_t next = local_primes[i].next_bit;
	mov	r10, QWORD PTR 8[rcx]	# next, MEM[(long unsigned int *)_172 + 8B]
# segmented_sieve.c:129:         if (next < data->start_bit) {
	cmp	r10, r15	# next, ivtmp.97
	jnb	.L4	#,
# segmented_sieve.c:127:         uint64_t p = local_primes[i].p;
	mov	rbp, QWORD PTR [rcx]	# p, MEM[(long unsigned int *)_172]
# segmented_sieve.c:131:             local_primes[i].next_bit = next + skip * p;
	xor	edx, edx	# tmp229
# segmented_sieve.c:130:             uint64_t skip = (data->start_bit - next + p - 1) / p;
	lea	r9, [rsi+rbp]	# tmp222,
	sub	r9, r10	# tmp223, next
# segmented_sieve.c:131:             local_primes[i].next_bit = next + skip * p;
	mov	rax, r9	# tmp230, tmp223
	div	rbp	# p
	sub	r9, rdx	# tmp231, tmp229
# segmented_sieve.c:131:             local_primes[i].next_bit = next + skip * p;
	add	r9, r10	# tmp232, next
	mov	QWORD PTR 8[rcx], r9	# MEM[(long unsigned int *)_172 + 8B], tmp232
.L4:
# segmented_sieve.c:128:         uint64_t next = local_primes[i].next_bit;
	mov	rdi, QWORD PTR 24[rcx]	# next, MEM[(long unsigned int *)_172 + 8B]
# segmented_sieve.c:126:     for (size_t i = 0; i < prime_count; i++) {
	lea	r12, 16[rcx]	# tmp384,
# segmented_sieve.c:129:         if (next < data->start_bit) {
	cmp	rdi, r15	# next, ivtmp.97
	jnb	.L133	#,
# segmented_sieve.c:127:         uint64_t p = local_primes[i].p;
	mov	r10, QWORD PTR 16[rcx]	# p, MEM[(long unsigned int *)_172]
# segmented_sieve.c:131:             local_primes[i].next_bit = next + skip * p;
	xor	edx, edx	# tmp579
# segmented_sieve.c:130:             uint64_t skip = (data->start_bit - next + p - 1) / p;
	lea	rcx, [rsi+r10]	# tmp577,
	sub	rcx, rdi	# tmp578, next
# segmented_sieve.c:131:             local_primes[i].next_bit = next + skip * p;
	mov	rax, rcx	# tmp580, tmp578
	div	r10	# p
	sub	rcx, rdx	# tmp581, tmp579
# segmented_sieve.c:131:             local_primes[i].next_bit = next + skip * p;
	add	rcx, rdi	# tmp582, next
	mov	QWORD PTR 8[r12], rcx	# MEM[(long unsigned int *)_172 + 8B], tmp582
.L133:
# segmented_sieve.c:128:         uint64_t next = local_primes[i].next_bit;
	mov	rbp, QWORD PTR 24[r12]	# next, MEM[(long unsigned int *)_172 + 8B]
# segmented_sieve.c:129:         if (next < data->start_bit) {
	cmp	rbp, r15	# next, ivtmp.97
	jnb	.L135	#,
# segmented_sieve.c:127:         uint64_t p = local_primes[i].p;
	mov	r9, QWORD PTR 16[r12]	# p, MEM[(long unsigned int *)_172]
# segmented_sieve.c:131:             local_primes[i].next_bit = next + skip * p;
	xor	edx, edx	# tmp588
# segmented_sieve.c:130:             uint64_t skip = (data->start_bit - next + p - 1) / p;
	lea	rdi, [rsi+r9]	# tmp586,
	sub	rdi, rbp	# tmp587, next
# segmented_sieve.c:131:             local_primes[i].next_bit = next + skip * p;
	mov	rax, rdi	# tmp589, tmp587
	div	r9	# p
	sub	rdi, rdx	# tmp590, tmp588
# segmented_sieve.c:131:             local_primes[i].next_bit = next + skip * p;
	add	rdi, rbp	# tmp591, next
	mov	QWORD PTR 24[r12], rdi	# MEM[(long unsigned int *)_172 + 8B], tmp591
.L135:
# segmented_sieve.c:128:         uint64_t next = local_primes[i].next_bit;
	mov	r10, QWORD PTR 40[r12]	# next, MEM[(long unsigned int *)_172 + 8B]
# segmented_sieve.c:129:         if (next < data->start_bit) {
	cmp	r10, r15	# next, ivtmp.97
	jnb	.L137	#,
# segmented_sieve.c:127:         uint64_t p = local_primes[i].p;
	mov	rbp, QWORD PTR 32[r12]	# p, MEM[(long unsigned int *)_172]
# segmented_sieve.c:131:             local_primes[i].next_bit = next + skip * p;
	xor	edx, edx	# tmp597
# segmented_sieve.c:130:             uint64_t skip = (data->start_bit - next + p - 1) / p;
	lea	rcx, [rsi+rbp]	# tmp595,
	sub	rcx, r10	# tmp596, next
# segmented_sieve.c:131:             local_primes[i].next_bit = next + skip * p;
	mov	rax, rcx	# tmp598, tmp596
	div	rbp	# p
	sub	rcx, rdx	# tmp599, tmp597
# segmented_sieve.c:131:             local_primes[i].next_bit = next + skip * p;
	add	rcx, r10	# tmp600, next
	mov	QWORD PTR 40[r12], rcx	# MEM[(long unsigned int *)_172 + 8B], tmp600
.L137:
# segmented_sieve.c:128:         uint64_t next = local_primes[i].next_bit;
	mov	rdi, QWORD PTR 56[r12]	# next, MEM[(long unsigned int *)_172 + 8B]
# segmented_sieve.c:129:         if (next < data->start_bit) {
	cmp	rdi, r15	# next, ivtmp.97
	jnb	.L139	#,
# segmented_sieve.c:127:         uint64_t p = local_primes[i].p;
	mov	r9, QWORD PTR 48[r12]	# p, MEM[(long unsigned int *)_172]
# segmented_sieve.c:131:             local_primes[i].next_bit = next + skip * p;
	xor	edx, edx	# tmp606
# segmented_sieve.c:130:             uint64_t skip = (data->start_bit - next + p - 1) / p;
	lea	r10, [rsi+r9]	# tmp604,
	sub	r10, rdi	# tmp605, next
# segmented_sieve.c:131:             local_primes[i].next_bit = next + skip * p;
	mov	rax, r10	# tmp607, tmp605
	div	r9	# p
	sub	r10, rdx	# tmp608, tmp606
# segmented_sieve.c:131:             local_primes[i].next_bit = next + skip * p;
	add	r10, rdi	# tmp609, next
	mov	QWORD PTR 56[r12], r10	# MEM[(long unsigned int *)_172 + 8B], tmp609
.L139:
# segmented_sieve.c:128:         uint64_t next = local_primes[i].next_bit;
	mov	rbp, QWORD PTR 72[r12]	# next, MEM[(long unsigned int *)_172 + 8B]
# segmented_sieve.c:129:         if (next < data->start_bit) {
	cmp	rbp, r15	# next, ivtmp.97
	jnb	.L141	#,
# segmented_sieve.c:127:         uint64_t p = local_primes[i].p;
	mov	rdi, QWORD PTR 64[r12]	# p, MEM[(long unsigned int *)_172]
# segmented_sieve.c:131:             local_primes[i].next_bit = next + skip * p;
	xor	edx, edx	# tmp615
# segmented_sieve.c:130:             uint64_t skip = (data->start_bit - next + p - 1) / p;
	lea	rcx, [rsi+rdi]	# tmp613,
	sub	rcx, rbp	# tmp614, next
# segmented_sieve.c:131:             local_primes[i].next_bit = next + skip * p;
	mov	rax, rcx	# tmp616, tmp614
	div	rdi	# p
	sub	rcx, rdx	# tmp617, tmp615
# segmented_sieve.c:131:             local_primes[i].next_bit = next + skip * p;
	add	rcx, rbp	# tmp618, next
	mov	QWORD PTR 72[r12], rcx	# MEM[(long unsigned int *)_172 + 8B], tmp618
.L141:
# segmented_sieve.c:128:         uint64_t next = local_primes[i].next_bit;
	mov	r10, QWORD PTR 88[r12]	# next, MEM[(long unsigned int *)_172 + 8B]
# segmented_sieve.c:129:         if (next < data->start_bit) {
	cmp	r10, r15	# next, ivtmp.97
	jnb	.L143	#,
# segmented_sieve.c:127:         uint64_t p = local_primes[i].p;
	mov	r9, QWORD PTR 80[r12]	# p, MEM[(long unsigned int *)_172]
# segmented_sieve.c:131:             local_primes[i].next_bit = next + skip * p;
	xor	edx, edx	# tmp624
# segmented_sieve.c:130:             uint64_t skip = (data->start_bit - next + p - 1) / p;
	lea	rbp, [rsi+r9]	# tmp622,
	sub	rbp, r10	# tmp623, next
# segmented_sieve.c:131:             local_primes[i].next_bit = next + skip * p;
	mov	rax, rbp	# tmp625, tmp623
	div	r9	# p
	sub	rbp, rdx	# tmp626, tmp624
# segmented_sieve.c:131:             local_primes[i].next_bit = next + skip * p;
	add	rbp, r10	# tmp627, next
	mov	QWORD PTR 88[r12], rbp	# MEM[(long unsigned int *)_172 + 8B], tmp627
.L143:
# segmented_sieve.c:128:         uint64_t next = local_primes[i].next_bit;
	mov	rdi, QWORD PTR 104[r12]	# next, MEM[(long unsigned int *)_172 + 8B]
# segmented_sieve.c:129:         if (next < data->start_bit) {
	cmp	rdi, r15	# next, ivtmp.97
	jnb	.L145	#,
# segmented_sieve.c:127:         uint64_t p = local_primes[i].p;
	mov	r10, QWORD PTR 96[r12]	# p, MEM[(long unsigned int *)_172]
# segmented_sieve.c:131:             local_primes[i].next_bit = next + skip * p;
	xor	edx, edx	# tmp633
# segmented_sieve.c:130:             uint64_t skip = (data->start_bit - next + p - 1) / p;
	lea	rcx, [rsi+r10]	# tmp631,
	sub	rcx, rdi	# tmp632, next
# segmented_sieve.c:131:             local_primes[i].next_bit = next + skip * p;
	mov	rax, rcx	# tmp634, tmp632
	div	r10	# p
	sub	rcx, rdx	# tmp635, tmp633
# segmented_sieve.c:131:             local_primes[i].next_bit = next + skip * p;
	add	rcx, rdi	# tmp636, next
	mov	QWORD PTR 104[r12], rcx	# MEM[(long unsigned int *)_172 + 8B], tmp636
.L145:
# segmented_sieve.c:126:     for (size_t i = 0; i < prime_count; i++) {
	lea	rcx, 112[r12]	# ivtmp.103,
	cmp	r8, rcx	# _18, ivtmp.103
	jne	.L5	#,
.L6:
# segmented_sieve.c:137:     for (uint64_t offset = data->start_bit; offset < data->end_bit; offset += BLOCK_BITS) {
	mov	rsi, QWORD PTR 8[r14]	# _183, MEM[(struct ThreadData *)arg_106(D)].end_bit
# segmented_sieve.c:135:     data->thread_total = 0;
	mov	QWORD PTR 24[r14], 0	# MEM[(struct ThreadData *)arg_106(D)].thread_total,
# segmented_sieve.c:137:     for (uint64_t offset = data->start_bit; offset < data->end_bit; offset += BLOCK_BITS) {
	cmp	r15, rsi	# ivtmp.97, _183
	jnb	.L29	#,
# segmented_sieve.c:70:     if (i < n_bytes) memcpy(block + i, super_pattern, n_bytes - i);
	lea	r8, 30240[r11]	# _276,
	lea	rdi, 10080[r11]	# tmp348,
	mov	QWORD PTR 8[rsp], rsi	# %sfp, _183
	mov	QWORD PTR 64[rsp], r8	# %sfp, _276
	lea	r10, 13440[r11]	# tmp356,
	lea	r8, 26880[r11]	# tmp355,
	lea	rax, 16800[r11]	# tmp353,
	lea	rdx, 20160[r11]	# tmp350,
	mov	QWORD PTR 128[rsp], r8	# %sfp, tmp355
# segmented_sieve.c:193:                 val &= (~0ULL >> (current_idx + 64 - data->end_bit));
	mov	r8d, 64	# tmp366,
	lea	rcx, 23520[r11]	# tmp347,
	mov	QWORD PTR 88[rsp], rdi	# %sfp, tmp348
	lea	rbx, 0[r13+rbx]	# _361,
	sub	r8d, esi	# tmp366, _183
	mov	QWORD PTR 136[rsp], r10	# %sfp, tmp356
	lea	r9, 3360[r11]	# tmp354,
	lea	rbp, 6720[r11]	# tmp351,
	mov	QWORD PTR 112[rsp], rax	# %sfp, tmp353
	lea	r12, 262016[r15]	# ivtmp.99,
	mov	QWORD PTR 96[rsp], rdx	# %sfp, tmp350
	mov	QWORD PTR 80[rsp], rcx	# %sfp, tmp347
	mov	QWORD PTR 16[rsp], rbx	# %sfp, _361
	mov	ebx, r8d	# tmp367, tmp366
	mov	QWORD PTR 120[rsp], r9	# %sfp, tmp354
	mov	r9, r15	# ivtmp.97, ivtmp.97
	mov	QWORD PTR 104[rsp], rbp	# %sfp, tmp351
	mov	rbp, r13	# local_primes, local_primes
	mov	r13, r11	# _154, _154
.L28:
# segmented_sieve.c:138:         uint64_t bits_in_block = (offset + BLOCK_BITS > data->end_bit) ? (data->end_bit - offset) : BLOCK_BITS;
	mov	r15, QWORD PTR 8[rsp]	# _183, %sfp
# segmented_sieve.c:138:         uint64_t bits_in_block = (offset + BLOCK_BITS > data->end_bit) ? (data->end_bit - offset) : BLOCK_BITS;
	lea	r11, 64[r12]	# tmp234,
# segmented_sieve.c:138:         uint64_t bits_in_block = (offset + BLOCK_BITS > data->end_bit) ? (data->end_bit - offset) : BLOCK_BITS;
	mov	QWORD PTR 32[rsp], r9	# %sfp, ivtmp.97
# /usr/lib/gcc/x86_64-linux-gnu/13/include/avxintrin.h:923:   *__P = __A;
	mov	rdi, r13	#, _154
	mov	edx, 3360	#,
# segmented_sieve.c:138:         uint64_t bits_in_block = (offset + BLOCK_BITS > data->end_bit) ? (data->end_bit - offset) : BLOCK_BITS;
	mov	rsi, r15	# tmp359, _183
	sub	rsi, r9	# tmp359, ivtmp.97
	cmp	r15, r11	# _183, tmp234
	mov	r9d, 262080	# iftmp.3_96,
	cmovb	r9, rsi	# tmp359,, iftmp.3_96
# /usr/lib/gcc/x86_64-linux-gnu/13/include/avxintrin.h:923:   *__P = __A;
	lea	rsi, super_pattern[rip]	#,
# segmented_sieve.c:138:         uint64_t bits_in_block = (offset + BLOCK_BITS > data->end_bit) ? (data->end_bit - offset) : BLOCK_BITS;
	mov	QWORD PTR 24[rsp], r9	# %sfp, iftmp.3_96
# /usr/lib/gcc/x86_64-linux-gnu/13/include/avxintrin.h:923:   *__P = __A;
	call	memcpy@PLT	#
	mov	rdi, QWORD PTR 120[rsp]	#, %sfp
	mov	edx, 3360	#,
	lea	rsi, super_pattern[rip]	#,
	call	memcpy@PLT	#
	mov	rdi, QWORD PTR 104[rsp]	#, %sfp
	mov	edx, 3360	#,
	lea	rsi, super_pattern[rip]	#,
	call	memcpy@PLT	#
	mov	rdi, QWORD PTR 88[rsp]	#, %sfp
	mov	edx, 3360	#,
	lea	rsi, super_pattern[rip]	#,
	call	memcpy@PLT	#
	mov	rdi, QWORD PTR 136[rsp]	#, %sfp
	mov	edx, 3360	#,
	lea	rsi, super_pattern[rip]	#,
	call	memcpy@PLT	#
	mov	rdi, QWORD PTR 112[rsp]	#, %sfp
	mov	edx, 3360	#,
	lea	rsi, super_pattern[rip]	#,
	call	memcpy@PLT	#
	mov	rdi, QWORD PTR 96[rsp]	#, %sfp
	mov	edx, 3360	#,
	lea	rsi, super_pattern[rip]	#,
	call	memcpy@PLT	#
	mov	rdi, QWORD PTR 80[rsp]	#, %sfp
	mov	edx, 3360	#,
	lea	rsi, super_pattern[rip]	#,
	call	memcpy@PLT	#
	mov	rdi, QWORD PTR 128[rsp]	#, %sfp
	mov	edx, 3360	#,
	lea	rsi, super_pattern[rip]	#,
	call	memcpy@PLT	#
# /usr/include/x86_64-linux-gnu/bits/string_fortified.h:29:   return __builtin___memcpy_chk (__dest, __src, __len,
	mov	rdi, QWORD PTR 64[rsp]	#, %sfp
	mov	edx, 2520	#,
	lea	rsi, super_pattern[rip]	#,
	call	memcpy@PLT	#
# segmented_sieve.c:146:         if (offset == 0) block[0] = 0x6E;
	mov	r9, QWORD PTR 32[rsp]	# ivtmp.97, %sfp
	mov	r11, QWORD PTR 24[rsp]	# iftmp.3_96, %sfp
	lea	r10, mask[rip]	# tmp368,
	test	r9, r9	# ivtmp.97
	jne	.L9	#,
# segmented_sieve.c:149:         for (size_t i = 3; i < prime_count; i++) {
	cmp	QWORD PTR 56[rsp], 3	# %sfp,
# segmented_sieve.c:146:         if (offset == 0) block[0] = 0x6E;
	mov	BYTE PTR 0[r13], 110	# MEM[(uint8_t *)_156],
# segmented_sieve.c:149:         for (size_t i = 3; i < prime_count; i++) {
	jbe	.L11	#,
.L10:
# segmented_sieve.c:152:             if (chk_bit >= offset + bits_in_block) continue;
	lea	rdi, [r11+r9]	# _281,
	mov	QWORD PTR 160[rsp], r14	# %sfp, arg
	lea	r15, 48[rbp]	# ivtmp.89,
	mov	QWORD PTR 144[rsp], rbp	# %sfp, local_primes
	mov	r14, rdi	# _281, _281
	mov	QWORD PTR 152[rsp], r12	# %sfp, ivtmp.99
	mov	DWORD PTR 172[rsp], ebx	# %sfp, tmp367
	jmp	.L21	#
.L13:
# segmented_sieve.c:149:         for (size_t i = 3; i < prime_count; i++) {
	add	r15, 16	# ivtmp.89,
	cmp	QWORD PTR 16[rsp], r15	# %sfp, ivtmp.89
	je	.L225	#,
.L21:
# segmented_sieve.c:151:             uint64_t chk_bit = local_primes[i].next_bit;
	mov	rax, QWORD PTR 8[r15]	# chk_bit, MEM[(long unsigned int *)_360 + 8B]
# segmented_sieve.c:152:             if (chk_bit >= offset + bits_in_block) continue;
	cmp	rax, r14	# chk_bit, _281
	jnb	.L13	#,
# segmented_sieve.c:150:             uint64_t p = local_primes[i].p;
	mov	rsi, QWORD PTR [r15]	# p, MEM[(long unsigned int *)_360]
# segmented_sieve.c:153:             chk_bit -= offset;
	sub	rax, r9	# chk_bit, ivtmp.97
# segmented_sieve.c:156:             if (bits_in_block > (step << 3)) {
	lea	r8, 0[0+rsi*8]	# _19,
# segmented_sieve.c:156:             if (bits_in_block > (step << 3)) {
	cmp	r8, r11	# _19, iftmp.3_96
	jb	.L14	#,
.L17:
# segmented_sieve.c:172:             while (chk_bit < bits_in_block) {
	cmp	rax, r11	# chk_bit, iftmp.3_96
	jnb	.L16	#,
	cmp	rsi, 1	# p,
	jne	.L20	#,
	mov	rcx, r11	# tmp376, iftmp.3_96
	sub	rcx, rax	# tmp376, chk_bit
	and	ecx, 7	# tmp377,
	je	.L19	#,
	cmp	rcx, 1	# tmp377,
	je	.L154	#,
	cmp	rcx, 2	# tmp377,
	je	.L155	#,
	cmp	rcx, 3	# tmp377,
	je	.L156	#,
	cmp	rcx, 4	# tmp377,
	je	.L157	#,
	cmp	rcx, 5	# tmp377,
	je	.L158	#,
	cmp	rcx, 6	# tmp377,
	je	.L159	#,
# segmented_sieve.c:173:                 block[chk_bit >> 3] &= mask[chk_bit & 7];
	mov	r12, rax	# tmp492, chk_bit
# segmented_sieve.c:173:                 block[chk_bit >> 3] &= mask[chk_bit & 7];
	mov	rbp, rax	# tmp494, chk_bit
# segmented_sieve.c:174:                 chk_bit += step;
	add	rax, 1	# chk_bit,
# segmented_sieve.c:173:                 block[chk_bit >> 3] &= mask[chk_bit & 7];
	shr	r12, 3	# tmp492,
# segmented_sieve.c:173:                 block[chk_bit >> 3] &= mask[chk_bit & 7];
	and	ebp, 7	# tmp494,
# segmented_sieve.c:173:                 block[chk_bit >> 3] &= mask[chk_bit & 7];
	movzx	r8d, BYTE PTR [r10+rbp]	# mask[_338], mask[_338]
	and	BYTE PTR 0[r13+r12], r8b	# *_340, mask[_338]
.L159:
# segmented_sieve.c:173:                 block[chk_bit >> 3] &= mask[chk_bit & 7];
	mov	rsi, rax	# tmp496, chk_bit
# segmented_sieve.c:173:                 block[chk_bit >> 3] &= mask[chk_bit & 7];
	mov	rbx, rax	# tmp498, chk_bit
# segmented_sieve.c:174:                 chk_bit += step;
	add	rax, 1	# chk_bit,
# segmented_sieve.c:173:                 block[chk_bit >> 3] &= mask[chk_bit & 7];
	shr	rsi, 3	# tmp496,
# segmented_sieve.c:173:                 block[chk_bit >> 3] &= mask[chk_bit & 7];
	and	ebx, 7	# tmp498,
# segmented_sieve.c:173:                 block[chk_bit >> 3] &= mask[chk_bit & 7];
	movzx	edx, BYTE PTR [r10+rbx]	# mask[_338], mask[_338]
	and	BYTE PTR 0[r13+rsi], dl	# *_340, mask[_338]
.L158:
# segmented_sieve.c:173:                 block[chk_bit >> 3] &= mask[chk_bit & 7];
	mov	rdi, rax	# tmp500, chk_bit
# segmented_sieve.c:173:                 block[chk_bit >> 3] &= mask[chk_bit & 7];
	mov	rcx, rax	# tmp502, chk_bit
# segmented_sieve.c:174:                 chk_bit += step;
	add	rax, 1	# chk_bit,
# segmented_sieve.c:173:                 block[chk_bit >> 3] &= mask[chk_bit & 7];
	shr	rdi, 3	# tmp500,
# segmented_sieve.c:173:                 block[chk_bit >> 3] &= mask[chk_bit & 7];
	and	ecx, 7	# tmp502,
# segmented_sieve.c:173:                 block[chk_bit >> 3] &= mask[chk_bit & 7];
	movzx	r12d, BYTE PTR [r10+rcx]	# mask[_338], mask[_338]
	and	BYTE PTR 0[r13+rdi], r12b	# *_340, mask[_338]
.L157:
# segmented_sieve.c:173:                 block[chk_bit >> 3] &= mask[chk_bit & 7];
	mov	rbp, rax	# tmp504, chk_bit
# segmented_sieve.c:173:                 block[chk_bit >> 3] &= mask[chk_bit & 7];
	mov	r8, rax	# tmp506, chk_bit
# segmented_sieve.c:174:                 chk_bit += step;
	add	rax, 1	# chk_bit,
# segmented_sieve.c:173:                 block[chk_bit >> 3] &= mask[chk_bit & 7];
	shr	rbp, 3	# tmp504,
# segmented_sieve.c:173:                 block[chk_bit >> 3] &= mask[chk_bit & 7];
	and	r8d, 7	# tmp506,
# segmented_sieve.c:173:                 block[chk_bit >> 3] &= mask[chk_bit & 7];
	movzx	esi, BYTE PTR [r10+r8]	# mask[_338], mask[_338]
	and	BYTE PTR 0[r13+rbp], sil	# *_340, mask[_338]
.L156:
# segmented_sieve.c:173:                 block[chk_bit >> 3] &= mask[chk_bit & 7];
	mov	rbx, rax	# tmp508, chk_bit
# segmented_sieve.c:173:                 block[chk_bit >> 3] &= mask[chk_bit & 7];
	mov	rdx, rax	# tmp510, chk_bit
# segmented_sieve.c:174:                 chk_bit += step;
	add	rax, 1	# chk_bit,
# segmented_sieve.c:173:                 block[chk_bit >> 3] &= mask[chk_bit & 7];
	shr	rbx, 3	# tmp508,
# segmented_sieve.c:173:                 block[chk_bit >> 3] &= mask[chk_bit & 7];
	and	edx, 7	# tmp510,
# segmented_sieve.c:173:                 block[chk_bit >> 3] &= mask[chk_bit & 7];
	movzx	edi, BYTE PTR [r10+rdx]	# mask[_338], mask[_338]
	and	BYTE PTR 0[r13+rbx], dil	# *_340, mask[_338]
.L155:
# segmented_sieve.c:173:                 block[chk_bit >> 3] &= mask[chk_bit & 7];
	mov	r12, rax	# tmp512, chk_bit
# segmented_sieve.c:173:                 block[chk_bit >> 3] &= mask[chk_bit & 7];
	mov	rcx, rax	# tmp514, chk_bit
# segmented_sieve.c:174:                 chk_bit += step;
	add	rax, 1	# chk_bit,
# segmented_sieve.c:173:                 block[chk_bit >> 3] &= mask[chk_bit & 7];
	shr	r12, 3	# tmp512,
# segmented_sieve.c:173:                 block[chk_bit >> 3] &= mask[chk_bit & 7];
	and	ecx, 7	# tmp514,
# segmented_sieve.c:173:                 block[chk_bit >> 3] &= mask[chk_bit & 7];
	movzx	ebp, BYTE PTR [r10+rcx]	# mask[_338], mask[_338]
	and	BYTE PTR 0[r13+r12], bpl	# *_340, mask[_338]
.L154:
# segmented_sieve.c:173:                 block[chk_bit >> 3] &= mask[chk_bit & 7];
	mov	r8, rax	# tmp516, chk_bit
# segmented_sieve.c:173:                 block[chk_bit >> 3] &= mask[chk_bit & 7];
	mov	rsi, rax	# tmp518, chk_bit
# segmented_sieve.c:174:                 chk_bit += step;
	add	rax, 1	# chk_bit,
# segmented_sieve.c:173:                 block[chk_bit >> 3] &= mask[chk_bit & 7];
	shr	r8, 3	# tmp516,
# segmented_sieve.c:173:                 block[chk_bit >> 3] &= mask[chk_bit & 7];
	and	esi, 7	# tmp518,
# segmented_sieve.c:173:                 block[chk_bit >> 3] &= mask[chk_bit & 7];
	movzx	ebx, BYTE PTR [r10+rsi]	# mask[_338], mask[_338]
	and	BYTE PTR 0[r13+r8], bl	# *_340, mask[_338]
# segmented_sieve.c:172:             while (chk_bit < bits_in_block) {
	cmp	r11, rax	# iftmp.3_96, chk_bit
	je	.L16	#,
.L19:
# segmented_sieve.c:174:                 chk_bit += step;
	lea	rbp, 1[rax]	# tmp378,
# segmented_sieve.c:173:                 block[chk_bit >> 3] &= mask[chk_bit & 7];
	mov	rdx, rax	# tmp331, chk_bit
# segmented_sieve.c:174:                 chk_bit += step;
	lea	rsi, 2[rax]	# chk_bit,
# segmented_sieve.c:173:                 block[chk_bit >> 3] &= mask[chk_bit & 7];
	mov	rdi, rax	# tmp333, chk_bit
# segmented_sieve.c:173:                 block[chk_bit >> 3] &= mask[chk_bit & 7];
	mov	rcx, rbp	# tmp390, tmp378
	shr	rdx, 3	# tmp331,
# segmented_sieve.c:173:                 block[chk_bit >> 3] &= mask[chk_bit & 7];
	and	edi, 7	# tmp333,
	and	ebp, 7	# tmp392,
# segmented_sieve.c:173:                 block[chk_bit >> 3] &= mask[chk_bit & 7];
	shr	rcx, 3	# tmp390,
# segmented_sieve.c:173:                 block[chk_bit >> 3] &= mask[chk_bit & 7];
	movzx	r12d, BYTE PTR [r10+rdi]	# mask[_338], mask[_338]
	movzx	r8d, BYTE PTR [r10+rbp]	# mask[_338], mask[_338]
# segmented_sieve.c:173:                 block[chk_bit >> 3] &= mask[chk_bit & 7];
	mov	rbx, rsi	# tmp395, chk_bit
# segmented_sieve.c:173:                 block[chk_bit >> 3] &= mask[chk_bit & 7];
	and	BYTE PTR 0[r13+rdx], r12b	# *_340, mask[_338]
# segmented_sieve.c:174:                 chk_bit += step;
	lea	rdi, 3[rax]	# chk_bit,
# segmented_sieve.c:173:                 block[chk_bit >> 3] &= mask[chk_bit & 7];
	shr	rbx, 3	# tmp395,
# segmented_sieve.c:173:                 block[chk_bit >> 3] &= mask[chk_bit & 7];
	and	esi, 7	# tmp397,
# segmented_sieve.c:173:                 block[chk_bit >> 3] &= mask[chk_bit & 7];
	and	BYTE PTR 0[r13+rcx], r8b	# *_340, mask[_338]
# segmented_sieve.c:174:                 chk_bit += step;
	lea	r8, 4[rax]	# chk_bit,
# segmented_sieve.c:173:                 block[chk_bit >> 3] &= mask[chk_bit & 7];
	mov	r12, rdi	# tmp400, chk_bit
# segmented_sieve.c:173:                 block[chk_bit >> 3] &= mask[chk_bit & 7];
	and	edi, 7	# tmp402,
# segmented_sieve.c:173:                 block[chk_bit >> 3] &= mask[chk_bit & 7];
	mov	rcx, r8	# tmp405, chk_bit
	shr	r12, 3	# tmp400,
# segmented_sieve.c:173:                 block[chk_bit >> 3] &= mask[chk_bit & 7];
	and	r8d, 7	# tmp407,
# segmented_sieve.c:173:                 block[chk_bit >> 3] &= mask[chk_bit & 7];
	movzx	edx, BYTE PTR [r10+rsi]	# mask[_338], mask[_338]
# segmented_sieve.c:173:                 block[chk_bit >> 3] &= mask[chk_bit & 7];
	shr	rcx, 3	# tmp405,
# segmented_sieve.c:173:                 block[chk_bit >> 3] &= mask[chk_bit & 7];
	and	BYTE PTR 0[r13+rbx], dl	# *_340, mask[_338]
	movzx	ebp, BYTE PTR [r10+rdi]	# mask[_338], mask[_338]
# segmented_sieve.c:174:                 chk_bit += step;
	lea	rbx, 5[rax]	# chk_bit,
# segmented_sieve.c:173:                 block[chk_bit >> 3] &= mask[chk_bit & 7];
	and	BYTE PTR 0[r13+r12], bpl	# *_340, mask[_338]
	movzx	esi, BYTE PTR [r10+r8]	# mask[_338], mask[_338]
# segmented_sieve.c:174:                 chk_bit += step;
	lea	r12, 6[rax]	# chk_bit,
# segmented_sieve.c:173:                 block[chk_bit >> 3] &= mask[chk_bit & 7];
	mov	rdi, rbx	# tmp410, chk_bit
# segmented_sieve.c:173:                 block[chk_bit >> 3] &= mask[chk_bit & 7];
	and	BYTE PTR 0[r13+rcx], sil	# *_340, mask[_338]
# segmented_sieve.c:174:                 chk_bit += step;
	lea	rsi, 7[rax]	# chk_bit,
# segmented_sieve.c:173:                 block[chk_bit >> 3] &= mask[chk_bit & 7];
	mov	rbp, r12	# tmp415, chk_bit
# segmented_sieve.c:173:                 block[chk_bit >> 3] &= mask[chk_bit & 7];
	and	ebx, 7	# tmp412,
# segmented_sieve.c:173:                 block[chk_bit >> 3] &= mask[chk_bit & 7];
	mov	rcx, rsi	# tmp420, chk_bit
	shr	rdi, 3	# tmp410,
# segmented_sieve.c:173:                 block[chk_bit >> 3] &= mask[chk_bit & 7];
	and	r12d, 7	# tmp417,
	and	esi, 7	# tmp422,
# segmented_sieve.c:173:                 block[chk_bit >> 3] &= mask[chk_bit & 7];
	shr	rbp, 3	# tmp415,
	shr	rcx, 3	# tmp420,
# segmented_sieve.c:174:                 chk_bit += step;
	add	rax, 8	# chk_bit,
# segmented_sieve.c:173:                 block[chk_bit >> 3] &= mask[chk_bit & 7];
	movzx	edx, BYTE PTR [r10+rbx]	# mask[_338], mask[_338]
	movzx	r8d, BYTE PTR [r10+r12]	# mask[_338], mask[_338]
	and	BYTE PTR 0[r13+rdi], dl	# *_340, mask[_338]
	movzx	ebx, BYTE PTR [r10+rsi]	# mask[_338], mask[_338]
	and	BYTE PTR 0[r13+rbp], r8b	# *_340, mask[_338]
	and	BYTE PTR 0[r13+rcx], bl	# *_340, mask[_338]
# segmented_sieve.c:172:             while (chk_bit < bits_in_block) {
	cmp	r11, rax	# iftmp.3_96, chk_bit
	jne	.L19	#,
.L16:
# segmented_sieve.c:176:             local_primes[i].next_bit = offset + chk_bit;
	add	rax, r9	# tmp335, ivtmp.97
# segmented_sieve.c:149:         for (size_t i = 3; i < prime_count; i++) {
	add	r15, 16	# ivtmp.89,
# segmented_sieve.c:176:             local_primes[i].next_bit = offset + chk_bit;
	mov	QWORD PTR -8[r15], rax	# MEM[(long unsigned int *)_360 + 8B], tmp335
# segmented_sieve.c:149:         for (size_t i = 3; i < prime_count; i++) {
	cmp	QWORD PTR 16[rsp], r15	# %sfp, ivtmp.89
	jne	.L21	#,
.L225:
	mov	rbp, QWORD PTR 144[rsp]	# local_primes, %sfp
	mov	r12, QWORD PTR 152[rsp]	# ivtmp.99, %sfp
	mov	r14, QWORD PTR 160[rsp]	# arg, %sfp
	mov	ebx, DWORD PTR 172[rsp]	# tmp367, %sfp
.L22:
# segmented_sieve.c:187:             if (current_idx >= data->end_bit) break;
	mov	r10, QWORD PTR 8[rsp]	# _183, %sfp
	cmp	r9, r10	# ivtmp.97, _183
	jnb	.L12	#,
.L11:
	mov	rsi, QWORD PTR 8[rsp]	# tmp370, %sfp
	mov	rdx, QWORD PTR 24[r14]	# arg__thread_total_lsm.40, MEM[(struct ThreadData *)arg_106(D)].thread_total
	mov	rcx, r13	# ivtmp.60, _154
# segmented_sieve.c:185:             uint64_t current_idx = offset + (k * 64);
	mov	rax, r9	# current_idx, ivtmp.97
	mov	r15, QWORD PTR 8[rsp]	# _183, %sfp
	sub	rsi, r9	# tmp370, ivtmp.97
	shr	rsi, 6	# tmp369,
	and	esi, 7	# tmp371,
	je	.L23	#,
# segmented_sieve.c:192:             if (current_idx + 64 > data->end_bit)
	mov	r11, QWORD PTR 8[rsp]	# _183, %sfp
	lea	rax, 64[r9]	# current_idx,
# segmented_sieve.c:188:             uint64_t val = block64[k];
	mov	r8, QWORD PTR 0[r13]	# val, MEM[(uint64_t *)_390]
	mov	rdi, r9	# current_idx, ivtmp.97
# segmented_sieve.c:192:             if (current_idx + 64 > data->end_bit)
	cmp	r11, rax	# _183, current_idx
	jb	.L199	#,
# segmented_sieve.c:195:             data->thread_total += __builtin_popcountll(val);
	xor	r15d, r15d	# _85
	popcnt	r15, r8	# _85, val
# segmented_sieve.c:195:             data->thread_total += __builtin_popcountll(val);
	add	rdx, r15	# arg__thread_total_lsm.40, _85
# segmented_sieve.c:184:         for (uint64_t k = 0; k < BLOCK_BYTES / 8; k++) {
	cmp	r9, r12	# ivtmp.97, ivtmp.99
	je	.L26	#,
# segmented_sieve.c:187:             if (current_idx >= data->end_bit) break;
	cmp	rax, r11	# current_idx, _183
	lea	rcx, 8[r13]	# ivtmp.60,
	jnb	.L26	#,
	cmp	rsi, 1	# tmp371,
	je	.L203	#,
	cmp	rsi, 2	# tmp371,
	je	.L162	#,
	cmp	rsi, 3	# tmp371,
	je	.L163	#,
	cmp	rsi, 4	# tmp371,
	je	.L164	#,
	cmp	rsi, 5	# tmp371,
	je	.L165	#,
	cmp	rsi, 6	# tmp371,
	je	.L166	#,
	mov	r10, rax	# current_idx, current_idx
# segmented_sieve.c:195:             data->thread_total += __builtin_popcountll(val);
	xor	esi, esi	# _85
	add	rax, 64	# current_idx,
	popcnt	rsi, QWORD PTR [rcx]	# _85, MEM[(uint64_t *)_390]
# segmented_sieve.c:195:             data->thread_total += __builtin_popcountll(val);
	add	rdx, rsi	# arg__thread_total_lsm.40, _85
# segmented_sieve.c:184:         for (uint64_t k = 0; k < BLOCK_BYTES / 8; k++) {
	cmp	r10, r12	# current_idx, ivtmp.99
	je	.L26	#,
# segmented_sieve.c:187:             if (current_idx >= data->end_bit) break;
	add	rcx, 8	# ivtmp.60,
	cmp	rax, r11	# current_idx, _183
	jnb	.L26	#,
.L166:
	mov	r8, rax	# current_idx, current_idx
# segmented_sieve.c:195:             data->thread_total += __builtin_popcountll(val);
	xor	edi, edi	# _85
	add	rax, 64	# current_idx,
	popcnt	rdi, QWORD PTR [rcx]	# _85, MEM[(uint64_t *)_390]
# segmented_sieve.c:195:             data->thread_total += __builtin_popcountll(val);
	add	rdx, rdi	# arg__thread_total_lsm.40, _85
# segmented_sieve.c:184:         for (uint64_t k = 0; k < BLOCK_BYTES / 8; k++) {
	cmp	r8, r12	# current_idx, ivtmp.99
	je	.L26	#,
# segmented_sieve.c:187:             if (current_idx >= data->end_bit) break;
	mov	r11, QWORD PTR 8[rsp]	# _183, %sfp
	add	rcx, 8	# ivtmp.60,
	cmp	rax, r11	# current_idx, _183
	jnb	.L26	#,
.L165:
	mov	r15, rax	# current_idx, current_idx
# segmented_sieve.c:195:             data->thread_total += __builtin_popcountll(val);
	xor	r10d, r10d	# _85
	add	rax, 64	# current_idx,
	popcnt	r10, QWORD PTR [rcx]	# _85, MEM[(uint64_t *)_390]
# segmented_sieve.c:195:             data->thread_total += __builtin_popcountll(val);
	add	rdx, r10	# arg__thread_total_lsm.40, _85
# segmented_sieve.c:184:         for (uint64_t k = 0; k < BLOCK_BYTES / 8; k++) {
	cmp	r15, r12	# current_idx, ivtmp.99
	je	.L26	#,
# segmented_sieve.c:187:             if (current_idx >= data->end_bit) break;
	mov	rsi, QWORD PTR 8[rsp]	# _183, %sfp
	add	rcx, 8	# ivtmp.60,
	cmp	rax, rsi	# current_idx, _183
	jnb	.L26	#,
.L164:
	mov	r8, rax	# current_idx, current_idx
# segmented_sieve.c:195:             data->thread_total += __builtin_popcountll(val);
	xor	edi, edi	# _85
	add	rax, 64	# current_idx,
	popcnt	rdi, QWORD PTR [rcx]	# _85, MEM[(uint64_t *)_390]
# segmented_sieve.c:195:             data->thread_total += __builtin_popcountll(val);
	add	rdx, rdi	# arg__thread_total_lsm.40, _85
# segmented_sieve.c:184:         for (uint64_t k = 0; k < BLOCK_BYTES / 8; k++) {
	cmp	r8, r12	# current_idx, ivtmp.99
	je	.L26	#,
# segmented_sieve.c:187:             if (current_idx >= data->end_bit) break;
	mov	r11, QWORD PTR 8[rsp]	# _183, %sfp
	add	rcx, 8	# ivtmp.60,
	cmp	rax, r11	# current_idx, _183
	jnb	.L26	#,
.L163:
	mov	r15, rax	# current_idx, current_idx
# segmented_sieve.c:195:             data->thread_total += __builtin_popcountll(val);
	xor	r10d, r10d	# _85
	add	rax, 64	# current_idx,
	popcnt	r10, QWORD PTR [rcx]	# _85, MEM[(uint64_t *)_390]
# segmented_sieve.c:195:             data->thread_total += __builtin_popcountll(val);
	add	rdx, r10	# arg__thread_total_lsm.40, _85
# segmented_sieve.c:184:         for (uint64_t k = 0; k < BLOCK_BYTES / 8; k++) {
	cmp	r15, r12	# current_idx, ivtmp.99
	je	.L26	#,
# segmented_sieve.c:187:             if (current_idx >= data->end_bit) break;
	mov	rsi, QWORD PTR 8[rsp]	# _183, %sfp
	add	rcx, 8	# ivtmp.60,
	cmp	rax, rsi	# current_idx, _183
	jnb	.L26	#,
.L162:
	mov	r8, rax	# current_idx, current_idx
# segmented_sieve.c:195:             data->thread_total += __builtin_popcountll(val);
	xor	edi, edi	# _85
	add	rax, 64	# current_idx,
	popcnt	rdi, QWORD PTR [rcx]	# _85, MEM[(uint64_t *)_390]
# segmented_sieve.c:195:             data->thread_total += __builtin_popcountll(val);
	add	rdx, rdi	# arg__thread_total_lsm.40, _85
# segmented_sieve.c:184:         for (uint64_t k = 0; k < BLOCK_BYTES / 8; k++) {
	cmp	r8, r12	# current_idx, ivtmp.99
	je	.L26	#,
# segmented_sieve.c:187:             if (current_idx >= data->end_bit) break;
	mov	r11, QWORD PTR 8[rsp]	# _183, %sfp
	add	rcx, 8	# ivtmp.60,
	cmp	rax, r11	# current_idx, _183
	jnb	.L26	#,
	mov	r15, r11	# _183, _183
	jmp	.L23	#
.L24:
# segmented_sieve.c:195:             data->thread_total += __builtin_popcountll(val);
	xor	r10d, r10d	# _85
	popcnt	r10, r8	# _85, val
# segmented_sieve.c:195:             data->thread_total += __builtin_popcountll(val);
	add	rdx, r10	# arg__thread_total_lsm.40, _85
# segmented_sieve.c:184:         for (uint64_t k = 0; k < BLOCK_BYTES / 8; k++) {
	cmp	rax, r12	# current_idx, ivtmp.99
	je	.L26	#,
# segmented_sieve.c:187:             if (current_idx >= data->end_bit) break;
	cmp	rsi, r15	# tmp372, _183
	lea	rdi, 8[rcx]	# tmp373,
	jnb	.L26	#,
# segmented_sieve.c:195:             data->thread_total += __builtin_popcountll(val);
	xor	r11d, r11d	# _85
	popcnt	r11, QWORD PTR 8[rcx]	# _85, MEM[(uint64_t *)_390]
# segmented_sieve.c:195:             data->thread_total += __builtin_popcountll(val);
	add	rdx, r11	# arg__thread_total_lsm.40, _85
# segmented_sieve.c:184:         for (uint64_t k = 0; k < BLOCK_BYTES / 8; k++) {
	cmp	rsi, r12	# tmp372, ivtmp.99
	lea	r8, 128[rax]	# current_idx,
	je	.L26	#,
# segmented_sieve.c:187:             if (current_idx >= data->end_bit) break;
	cmp	r8, r15	# current_idx, _183
	jnb	.L26	#,
# segmented_sieve.c:195:             data->thread_total += __builtin_popcountll(val);
	xor	r11d, r11d	# _85
	popcnt	r11, QWORD PTR 16[rcx]	# _85, MEM[(uint64_t *)_390]
# segmented_sieve.c:195:             data->thread_total += __builtin_popcountll(val);
	add	rdx, r11	# arg__thread_total_lsm.40, _85
# segmented_sieve.c:184:         for (uint64_t k = 0; k < BLOCK_BYTES / 8; k++) {
	cmp	r8, r12	# current_idx, ivtmp.99
	lea	r10, 192[rax]	# current_idx,
	je	.L26	#,
# segmented_sieve.c:187:             if (current_idx >= data->end_bit) break;
	cmp	r10, r15	# current_idx, _183
	jnb	.L26	#,
# segmented_sieve.c:195:             data->thread_total += __builtin_popcountll(val);
	xor	r11d, r11d	# _85
	popcnt	r11, QWORD PTR 24[rcx]	# _85, MEM[(uint64_t *)_390]
# segmented_sieve.c:195:             data->thread_total += __builtin_popcountll(val);
	add	rdx, r11	# arg__thread_total_lsm.40, _85
# segmented_sieve.c:184:         for (uint64_t k = 0; k < BLOCK_BYTES / 8; k++) {
	cmp	r10, r12	# current_idx, ivtmp.99
	lea	r8, 256[rax]	# current_idx,
	je	.L26	#,
# segmented_sieve.c:187:             if (current_idx >= data->end_bit) break;
	cmp	r8, r15	# current_idx, _183
	jnb	.L26	#,
# segmented_sieve.c:195:             data->thread_total += __builtin_popcountll(val);
	popcnt	rcx, QWORD PTR 32[rcx]	# _85, MEM[(uint64_t *)_390]
	add	rax, 320	# current_idx,
# segmented_sieve.c:195:             data->thread_total += __builtin_popcountll(val);
	add	rdx, rcx	# arg__thread_total_lsm.40, _85
# segmented_sieve.c:184:         for (uint64_t k = 0; k < BLOCK_BYTES / 8; k++) {
	cmp	r8, r12	# current_idx, ivtmp.99
	je	.L26	#,
# segmented_sieve.c:187:             if (current_idx >= data->end_bit) break;
	cmp	rax, r15	# current_idx, _183
	jnb	.L26	#,
# segmented_sieve.c:195:             data->thread_total += __builtin_popcountll(val);
	xor	r8d, r8d	# _85
	popcnt	r8, QWORD PTR 32[rdi]	# _85, MEM[(uint64_t *)_390]
# segmented_sieve.c:195:             data->thread_total += __builtin_popcountll(val);
	add	rdx, r8	# arg__thread_total_lsm.40, _85
# segmented_sieve.c:184:         for (uint64_t k = 0; k < BLOCK_BYTES / 8; k++) {
	cmp	rax, r12	# current_idx, ivtmp.99
	lea	r10, 320[rsi]	# current_idx,
	je	.L26	#,
# segmented_sieve.c:187:             if (current_idx >= data->end_bit) break;
	cmp	r10, r15	# current_idx, _183
	jnb	.L26	#,
# segmented_sieve.c:195:             data->thread_total += __builtin_popcountll(val);
	xor	eax, eax	# _85
	popcnt	rax, QWORD PTR 40[rdi]	# _85, MEM[(uint64_t *)_390]
# segmented_sieve.c:195:             data->thread_total += __builtin_popcountll(val);
	add	rdx, rax	# arg__thread_total_lsm.40, _85
# segmented_sieve.c:184:         for (uint64_t k = 0; k < BLOCK_BYTES / 8; k++) {
	cmp	r10, r12	# current_idx, ivtmp.99
	lea	r11, 384[rsi]	# current_idx,
	je	.L26	#,
# segmented_sieve.c:187:             if (current_idx >= data->end_bit) break;
	cmp	r11, r15	# current_idx, _183
	jnb	.L26	#,
	lea	rax, 448[rsi]	# current_idx,
# segmented_sieve.c:195:             data->thread_total += __builtin_popcountll(val);
	xor	esi, esi	# _85
	popcnt	rsi, QWORD PTR 48[rdi]	# _85, MEM[(uint64_t *)_390]
# segmented_sieve.c:195:             data->thread_total += __builtin_popcountll(val);
	add	rdx, rsi	# arg__thread_total_lsm.40, _85
# segmented_sieve.c:184:         for (uint64_t k = 0; k < BLOCK_BYTES / 8; k++) {
	cmp	r11, r12	# current_idx, ivtmp.99
	je	.L26	#,
# segmented_sieve.c:187:             if (current_idx >= data->end_bit) break;
	cmp	rax, r15	# current_idx, _183
	lea	rcx, 56[rdi]	# ivtmp.60,
	jnb	.L26	#,
.L23:
	lea	rsi, 64[rax]	# tmp372,
# segmented_sieve.c:188:             uint64_t val = block64[k];
	mov	r8, QWORD PTR [rcx]	# val, MEM[(uint64_t *)_390]
	mov	rdi, rax	# current_idx, current_idx
# segmented_sieve.c:192:             if (current_idx + 64 > data->end_bit)
	cmp	r15, rsi	# _183, tmp372
	jnb	.L24	#,
.L199:
# segmented_sieve.c:193:                 val &= (~0ULL >> (current_idx + 64 - data->end_bit));
	lea	r15d, [rbx+rdi]	# tmp338,
# segmented_sieve.c:193:                 val &= (~0ULL >> (current_idx + 64 - data->end_bit));
	mov	rdi, -1	# tmp340,
	shrx	r10, rdi, r15	# tmp339, tmp340, tmp338
# segmented_sieve.c:193:                 val &= (~0ULL >> (current_idx + 64 - data->end_bit));
	and	r10, r8	# val, val
# segmented_sieve.c:195:             data->thread_total += __builtin_popcountll(val);
	xor	r8d, r8d	# _270
	popcnt	r8, r10	# _270, val
# segmented_sieve.c:195:             data->thread_total += __builtin_popcountll(val);
	add	rdx, r8	# arg__thread_total_lsm.40, _270
.L26:
	mov	QWORD PTR 24[r14], rdx	# MEM[(struct ThreadData *)arg_106(D)].thread_total, arg__thread_total_lsm.40
.L12:
# segmented_sieve.c:137:     for (uint64_t offset = data->start_bit; offset < data->end_bit; offset += BLOCK_BITS) {
	mov	rdx, QWORD PTR 8[rsp]	# _183, %sfp
	add	r9, 262080	# ivtmp.97,
	add	r12, 262080	# ivtmp.99,
	cmp	r9, rdx	# ivtmp.97, _183
	jb	.L28	#,
	mov	r11, r13	# _154, _154
	mov	r13, rbp	# local_primes, local_primes
.L29:
# /usr/lib/gcc/x86_64-linux-gnu/13/include/mm_malloc.h:54:   free (__ptr);
	mov	rdi, r11	#, _154
	call	free@PLT	#
# segmented_sieve.c:201:     free(local_primes);
	mov	rdi, r13	#, local_primes
	call	free@PLT	#
# segmented_sieve.c:203: }
	mov	rax, QWORD PTR 216[rsp]	# tmp645, D.45593
	sub	rax, QWORD PTR fs:40	# tmp645, MEM[(<address-space-1> long unsigned int *)40B]
	jne	.L226	#,
	add	rsp, 232	#,
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	xor	eax, eax	#
	pop	rbx	#
	.cfi_def_cfa_offset 48
	pop	rbp	#
	.cfi_def_cfa_offset 40
	pop	r12	#
	.cfi_def_cfa_offset 32
	pop	r13	#
	.cfi_def_cfa_offset 24
	pop	r14	#
	.cfi_def_cfa_offset 16
	pop	r15	#
	.cfi_def_cfa_offset 8
	ret	
.L20:
	.cfi_restore_state
# segmented_sieve.c:173:                 block[chk_bit >> 3] &= mask[chk_bit & 7];
	mov	rbx, rax	# tmp327, chk_bit
# segmented_sieve.c:173:                 block[chk_bit >> 3] &= mask[chk_bit & 7];
	mov	rdx, rax	# tmp329, chk_bit
# segmented_sieve.c:174:                 chk_bit += step;
	add	rax, rsi	# chk_bit, p
# segmented_sieve.c:173:                 block[chk_bit >> 3] &= mask[chk_bit & 7];
	shr	rbx, 3	# tmp327,
# segmented_sieve.c:173:                 block[chk_bit >> 3] &= mask[chk_bit & 7];
	and	edx, 7	# tmp329,
# segmented_sieve.c:173:                 block[chk_bit >> 3] &= mask[chk_bit & 7];
	movzx	edi, BYTE PTR [r10+rdx]	# mask[_71], mask[_71]
	and	BYTE PTR 0[r13+rbx], dil	# *_69, mask[_71]
# segmented_sieve.c:172:             while (chk_bit < bits_in_block) {
	cmp	rax, r11	# chk_bit, iftmp.3_96
	jb	.L20	#,
	jmp	.L16	#
.L14:
# segmented_sieve.c:157:                 uint64_t unroll_limit = bits_in_block - (step << 3);
	mov	rbx, r11	# unroll_limit, iftmp.3_96
	sub	rbx, r8	# unroll_limit, _19
# segmented_sieve.c:158:                 while (chk_bit < unroll_limit) {
	cmp	rax, rbx	# chk_bit, unroll_limit
	jnb	.L17	#,
	lea	r12, [rsi+rax]	# ivtmp.78,
	mov	QWORD PTR 176[rsp], r9	# %sfp, ivtmp.97
	lea	rdx, [rsi+r12]	# ivtmp.79,
	mov	QWORD PTR 48[rsp], r8	# %sfp, _19
	lea	rbp, [rsi+rdx]	# _330,
	mov	QWORD PTR 184[rsp], r11	# %sfp, iftmp.3_96
	lea	rcx, [rsi+rbp]	# _215,
	mov	QWORD PTR 32[rsp], rbp	# %sfp, _330
	mov	QWORD PTR 24[rsp], rcx	# %sfp, _215
	add	rcx, rsi	# _212, p
	lea	rdi, [rsi+rcx]	# _161,
	and	ecx, 7	# tmp300,
	mov	QWORD PTR 192[rsp], rsi	# %sfp, p
	lea	rbp, [rsi+rdi]	# tmp295,
	and	edi, 7	# tmp298,
	movzx	ecx, BYTE PTR [r10+rcx]	# mask_I_lsm0.44, MEM[(unsigned char *)_312]
	mov	QWORD PTR 200[rsp], r14	# %sfp, _281
	and	ebp, 7	# tmp296,
	movzx	edi, BYTE PTR [r10+rdi]	# mask_I_lsm0.43, MEM[(unsigned char *)_320]
	movzx	ebp, BYTE PTR [r10+rbp]	# mask_I_lsm0.42, MEM[(unsigned char *)_166]
	mov	BYTE PTR 169[rsp], cl	# %sfp, mask_I_lsm0.44
	mov	BYTE PTR 170[rsp], dil	# %sfp, mask_I_lsm0.43
	mov	rcx, QWORD PTR 32[rsp]	# _330, %sfp
	mov	BYTE PTR 171[rsp], bpl	# %sfp, mask_I_lsm0.42
	mov	rbp, QWORD PTR 24[rsp]	# _215, %sfp
	movzx	r14d, BYTE PTR 169[rsp]	# mask_I_lsm0.44, %sfp
	and	ecx, 7	# _330,
	and	ebp, 7	# _215,
	movzx	edi, BYTE PTR [r10+rbp]	# mask_I_lsm0.45, MEM[(unsigned char *)_305]
	movzx	ebp, BYTE PTR [r10+rcx]	# mask_I_lsm0.46, MEM[(unsigned char *)_299]
	mov	BYTE PTR 72[rsp], dil	# %sfp, mask_I_lsm0.45
	mov	rdi, rdx	# tmp306, ivtmp.79
	movzx	r11d, BYTE PTR 72[rsp]	# mask_I_lsm0.45, %sfp
	and	edi, 7	# tmp306,
	mov	BYTE PTR 168[rsp], bpl	# %sfp, mask_I_lsm0.46
	mov	rbp, r12	# tmp308, ivtmp.78
	movzx	ecx, BYTE PTR [r10+rdi]	# mask_I_lsm0.47, MEM[(unsigned char *)_294]
	and	ebp, 7	# tmp308,
	mov	QWORD PTR 72[rsp], r15	# %sfp, ivtmp.89
	movzx	r15d, BYTE PTR 170[rsp]	# mask_I_lsm0.43, %sfp
	movzx	edi, BYTE PTR [r10+rbp]	# mask_I_lsm0.48, MEM[(unsigned char *)_290]
	mov	BYTE PTR 47[rsp], cl	# %sfp, mask_I_lsm0.47
	mov	rcx, rax	# tmp310, chk_bit
	and	ecx, 7	# tmp310,
	mov	BYTE PTR 32[rsp], dil	# %sfp, mask_I_lsm0.48
	lea	rdi, [rsi+rsi]	# _175,
	movzx	ebp, BYTE PTR [r10+rcx]	# mask_I_lsm0.49, MEM[(unsigned char *)_287]
	lea	rcx, [rdi+rsi]	# tmp314,
	mov	BYTE PTR 24[rsp], bpl	# %sfp, mask_I_lsm0.49
	lea	rbp, [rsi+rsi*4]	# tmp317,
	mov	rsi, r12	# ivtmp.78, ivtmp.78
	mov	r12, rbp	# tmp317, tmp317
	movzx	ebp, BYTE PTR 171[rsp]	# mask_I_lsm0.42, %sfp
.L18:
# segmented_sieve.c:159:                     block[chk_bit >> 3] &= mask[chk_bit & 7];
	mov	r9, rax	# tmp318, chk_bit
# segmented_sieve.c:159:                     block[chk_bit >> 3] &= mask[chk_bit & 7];
	movzx	r8d, BYTE PTR 24[rsp]	# mask_I_lsm0.49, %sfp
# segmented_sieve.c:162:                     uint64_t c3 = c2 + step; block[c3 >> 3] &= mask[c3 & 7];
	add	rax, rcx	# c3, tmp314
# segmented_sieve.c:159:                     block[chk_bit >> 3] &= mask[chk_bit & 7];
	shr	r9, 3	# tmp318,
# segmented_sieve.c:159:                     block[chk_bit >> 3] &= mask[chk_bit & 7];
	and	BYTE PTR 0[r13+r9], r8b	# *_21, mask_I_lsm0.49
# segmented_sieve.c:160:                     uint64_t c1 = chk_bit + step; block[c1 >> 3] &= mask[c1 & 7];
	mov	r9, rsi	# tmp319, ivtmp.78
# segmented_sieve.c:160:                     uint64_t c1 = chk_bit + step; block[c1 >> 3] &= mask[c1 & 7];
	movzx	r8d, BYTE PTR 32[rsp]	# mask_I_lsm0.48, %sfp
# segmented_sieve.c:163:                     uint64_t c4 = c3 + step; block[c4 >> 3] &= mask[c4 & 7];
	add	rsi, rcx	# c4, tmp314
# segmented_sieve.c:160:                     uint64_t c1 = chk_bit + step; block[c1 >> 3] &= mask[c1 & 7];
	shr	r9, 3	# tmp319,
# segmented_sieve.c:160:                     uint64_t c1 = chk_bit + step; block[c1 >> 3] &= mask[c1 & 7];
	and	BYTE PTR 0[r13+r9], r8b	# *_27, mask_I_lsm0.48
# segmented_sieve.c:161:                     uint64_t c2 = c1 + step; block[c2 >> 3] &= mask[c2 & 7];
	mov	r9, rdx	# tmp320, ivtmp.79
# segmented_sieve.c:161:                     uint64_t c2 = c1 + step; block[c2 >> 3] &= mask[c2 & 7];
	movzx	r8d, BYTE PTR 47[rsp]	# mask_I_lsm0.47, %sfp
# segmented_sieve.c:161:                     uint64_t c2 = c1 + step; block[c2 >> 3] &= mask[c2 & 7];
	shr	r9, 3	# tmp320,
# segmented_sieve.c:161:                     uint64_t c2 = c1 + step; block[c2 >> 3] &= mask[c2 & 7];
	and	BYTE PTR 0[r13+r9], r8b	# *_33, mask_I_lsm0.47
# segmented_sieve.c:162:                     uint64_t c3 = c2 + step; block[c3 >> 3] &= mask[c3 & 7];
	mov	r9, rax	# tmp321, c3
# segmented_sieve.c:164:                     uint64_t c5 = c4 + step; block[c5 >> 3] &= mask[c5 & 7];
	add	rax, rdi	# c5, _175
# segmented_sieve.c:162:                     uint64_t c3 = c2 + step; block[c3 >> 3] &= mask[c3 & 7];
	movzx	r8d, BYTE PTR 168[rsp]	# mask_I_lsm0.46, %sfp
# segmented_sieve.c:162:                     uint64_t c3 = c2 + step; block[c3 >> 3] &= mask[c3 & 7];
	shr	r9, 3	# tmp321,
# segmented_sieve.c:162:                     uint64_t c3 = c2 + step; block[c3 >> 3] &= mask[c3 & 7];
	and	BYTE PTR 0[r13+r9], r8b	# *_39, mask_I_lsm0.46
# segmented_sieve.c:163:                     uint64_t c4 = c3 + step; block[c4 >> 3] &= mask[c4 & 7];
	mov	r9, rsi	# tmp322, c4
# segmented_sieve.c:165:                     uint64_t c6 = c5 + step; block[c6 >> 3] &= mask[c6 & 7];
	add	rsi, rdi	# c6, _175
# segmented_sieve.c:164:                     uint64_t c5 = c4 + step; block[c5 >> 3] &= mask[c5 & 7];
	mov	r8, rax	# tmp323, c5
# segmented_sieve.c:163:                     uint64_t c4 = c3 + step; block[c4 >> 3] &= mask[c4 & 7];
	shr	r9, 3	# tmp322,
# segmented_sieve.c:164:                     uint64_t c5 = c4 + step; block[c5 >> 3] &= mask[c5 & 7];
	shr	r8, 3	# tmp323,
# segmented_sieve.c:167:                     chk_bit = c7 + step;
	add	rax, rcx	# chk_bit, tmp314
# segmented_sieve.c:163:                     uint64_t c4 = c3 + step; block[c4 >> 3] &= mask[c4 & 7];
	and	BYTE PTR 0[r13+r9], r11b	# *_45, mask_I_lsm0.45
# segmented_sieve.c:165:                     uint64_t c6 = c5 + step; block[c6 >> 3] &= mask[c6 & 7];
	mov	r9, rsi	# tmp324, c6
# segmented_sieve.c:158:                 while (chk_bit < unroll_limit) {
	add	rsi, rcx	# ivtmp.78, tmp314
# segmented_sieve.c:165:                     uint64_t c6 = c5 + step; block[c6 >> 3] &= mask[c6 & 7];
	shr	r9, 3	# tmp324,
# segmented_sieve.c:164:                     uint64_t c5 = c4 + step; block[c5 >> 3] &= mask[c5 & 7];
	and	BYTE PTR 0[r13+r8], r14b	# *_51, mask_I_lsm0.44
# segmented_sieve.c:166:                     uint64_t c7 = c6 + step; block[c7 >> 3] &= mask[c7 & 7];
	lea	r8, [r12+rdx]	# c7,
# segmented_sieve.c:165:                     uint64_t c6 = c5 + step; block[c6 >> 3] &= mask[c6 & 7];
	and	BYTE PTR 0[r13+r9], r15b	# *_57, mask_I_lsm0.43
# segmented_sieve.c:158:                 while (chk_bit < unroll_limit) {
	mov	r9, QWORD PTR 48[rsp]	# _19, %sfp
# segmented_sieve.c:166:                     uint64_t c7 = c6 + step; block[c7 >> 3] &= mask[c7 & 7];
	shr	r8, 3	# tmp326,
# segmented_sieve.c:166:                     uint64_t c7 = c6 + step; block[c7 >> 3] &= mask[c7 & 7];
	and	BYTE PTR 0[r13+r8], bpl	# *_63, mask_I_lsm0.42
# segmented_sieve.c:158:                 while (chk_bit < unroll_limit) {
	add	rdx, r9	# ivtmp.79, _19
	cmp	rax, rbx	# chk_bit, unroll_limit
	jb	.L18	#,
	mov	r9, QWORD PTR 176[rsp]	# ivtmp.97, %sfp
	mov	r11, QWORD PTR 184[rsp]	# iftmp.3_96, %sfp
	mov	rsi, QWORD PTR 192[rsp]	# p, %sfp
	mov	r14, QWORD PTR 200[rsp]	# _281, %sfp
	mov	r15, QWORD PTR 72[rsp]	# ivtmp.89, %sfp
	jmp	.L17	#
.L9:
# segmented_sieve.c:149:         for (size_t i = 3; i < prime_count; i++) {
	cmp	QWORD PTR 56[rsp], 3	# %sfp,
	ja	.L10	#,
	jmp	.L22	#
.L203:
	mov	r15, r11	# _183, _183
	jmp	.L23	#
.L224:
# segmented_sieve.c:127:         uint64_t p = local_primes[i].p;
	mov	r10, QWORD PTR [rcx]	# p, MEM[(long unsigned int *)_172]
# segmented_sieve.c:131:             local_primes[i].next_bit = next + skip * p;
	xor	edx, edx	# tmp564
# segmented_sieve.c:130:             uint64_t skip = (data->start_bit - next + p - 1) / p;
	lea	rbp, [rsi+r10]	# tmp562,
	sub	rbp, r12	# tmp563, next
# segmented_sieve.c:131:             local_primes[i].next_bit = next + skip * p;
	mov	rax, rbp	# tmp565, tmp563
	div	r10	# p
	sub	rbp, rdx	# tmp566, tmp564
# segmented_sieve.c:131:             local_primes[i].next_bit = next + skip * p;
	add	rbp, r12	# tmp567, next
	mov	QWORD PTR 8[rcx], rbp	# MEM[(long unsigned int *)_172 + 8B], tmp567
	jmp	.L127	#
.L223:
# segmented_sieve.c:127:         uint64_t p = local_primes[i].p;
	mov	r9, QWORD PTR [rcx]	# p, MEM[(long unsigned int *)_172]
# segmented_sieve.c:131:             local_primes[i].next_bit = next + skip * p;
	xor	edx, edx	# tmp556
# segmented_sieve.c:130:             uint64_t skip = (data->start_bit - next + p - 1) / p;
	lea	rdi, [rsi+r9]	# tmp554,
	sub	rdi, rbp	# tmp555, next
# segmented_sieve.c:131:             local_primes[i].next_bit = next + skip * p;
	mov	rax, rdi	# tmp557, tmp555
	div	r9	# p
	sub	rdi, rdx	# tmp558, tmp556
# segmented_sieve.c:131:             local_primes[i].next_bit = next + skip * p;
	add	rdi, rbp	# tmp559, next
	mov	QWORD PTR 8[rcx], rdi	# MEM[(long unsigned int *)_172 + 8B], tmp559
	jmp	.L124	#
.L226:
# segmented_sieve.c:203: }
	call	__stack_chk_fail@PLT	#
	.cfi_endproc
.LFE6496:
	.size	SieveRange, .-SieveRange
	.p2align 4
	.globl	init_avx_pattern
	.type	init_avx_pattern, @function
init_avx_pattern:
.LFB6492:
	.cfi_startproc
	endbr64	
	push	rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
# /usr/include/x86_64-linux-gnu/bits/string_fortified.h:59:   return __builtin___memset_chk (__dest, __ch, __len,
	vpcmpeqd	ymm0, ymm0, ymm0	# tmp101
	movabs	rdi, -6148914691236517205	# tmp110,
# segmented_sieve.c:47:         if (num % 3 == 0 || num % 5 == 0 || num % 7 == 0) {
	movabs	rsi, 6148914691236517205	# tmp111,
	movabs	r10, -3689348814741910323	# tmp148,
# segmented_sieve.c:48:             p105[i >> 3] &= ~(1 << (i & 7));
	mov	r8d, 1	# tmp147,
# segmented_sieve.c:47:         if (num % 3 == 0 || num % 5 == 0 || num % 7 == 0) {
	movabs	r9, 3689348814741910323	# tmp149,
# segmented_sieve.c:47:         if (num % 3 == 0 || num % 5 == 0 || num % 7 == 0) {
	movabs	r11, 2635249153387078802	# tmp151,
# segmented_sieve.c:42: void init_avx_pattern() {
	mov	rbp, rsp	#,
	.cfi_def_cfa_register 6
	push	r13	#
	push	r12	#
	.cfi_offset 13, -24
	.cfi_offset 12, -32
# segmented_sieve.c:45:     for (int i = 0; i < 105 * 8; i++) {
	xor	r12d, r12d	# i
# segmented_sieve.c:42: void init_avx_pattern() {
	push	rbx	#
	.cfi_offset 3, -40
	movabs	rbx, 7905747460161236407	# tmp150,
	sub	rsp, 136	#,
# segmented_sieve.c:42: void init_avx_pattern() {
	mov	rax, QWORD PTR fs:40	# tmp217, MEM[(<address-space-1> long unsigned int *)40B]
	mov	QWORD PTR 120[rsp], rax	# D.45651, tmp217
	xor	eax, eax	# tmp217
# /usr/include/x86_64-linux-gnu/bits/string_fortified.h:59:   return __builtin___memset_chk (__dest, __ch, __len,
	vmovdqu	YMMWORD PTR 64[rsp], ymm0	# MEM <char[1:105]> [(void *)&p105], tmp101
	mov	eax, 1	# ivtmp.127,
	vmovdqu	YMMWORD PTR [rsp], ymm0	# MEM <char[1:105]> [(void *)&p105], tmp101
	vmovdqu	YMMWORD PTR 32[rsp], ymm0	# MEM <char[1:105]> [(void *)&p105], tmp101
	vmovdqu	XMMWORD PTR 89[rsp], xmm0	# MEM <char[1:105]> [(void *)&p105], tmp101
	.p2align 4,,10
	.p2align 3
.L230:
	mov	rdx, rax	# tmp109, ivtmp.127
	imul	rdx, rdi	# tmp109, tmp110
# segmented_sieve.c:47:         if (num % 3 == 0 || num % 5 == 0 || num % 7 == 0) {
	cmp	rsi, rdx	# tmp111, tmp109
	jnb	.L228	#,
	mov	rcx, rax	# tmp119, ivtmp.127
	imul	rcx, r10	# tmp119, tmp148
# segmented_sieve.c:47:         if (num % 3 == 0 || num % 5 == 0 || num % 7 == 0) {
	cmp	r9, rcx	# tmp149, tmp119
	jnb	.L228	#,
	mov	r13, rax	# tmp132, ivtmp.127
	imul	r13, rbx	# tmp132, tmp150
# segmented_sieve.c:47:         if (num % 3 == 0 || num % 5 == 0 || num % 7 == 0) {
	cmp	r11, r13	# tmp151, tmp132
	jb	.L229	#,
	.p2align 4,,10
	.p2align 3
.L228:
# segmented_sieve.c:48:             p105[i >> 3] &= ~(1 << (i & 7));
	mov	edx, r12d	# _6, i
# segmented_sieve.c:48:             p105[i >> 3] &= ~(1 << (i & 7));
	mov	r13d, r12d	# tmp136, i
# segmented_sieve.c:48:             p105[i >> 3] &= ~(1 << (i & 7));
	sar	edx, 3	# _6,
# segmented_sieve.c:48:             p105[i >> 3] &= ~(1 << (i & 7));
	and	r13d, 7	# tmp136,
# segmented_sieve.c:48:             p105[i >> 3] &= ~(1 << (i & 7));
	movsx	rcx, edx	# _6, _6
# segmented_sieve.c:48:             p105[i >> 3] &= ~(1 << (i & 7));
	shlx	edx, r8d, r13d	# tmp137, tmp147, tmp136
# segmented_sieve.c:48:             p105[i >> 3] &= ~(1 << (i & 7));
	not	edx	# tmp139
	and	BYTE PTR [rsp+rcx], dl	# p105[_6], tmp139
.L229:
# segmented_sieve.c:45:     for (int i = 0; i < 105 * 8; i++) {
	add	rax, 2	# tmp154,
# segmented_sieve.c:45:     for (int i = 0; i < 105 * 8; i++) {
	lea	ecx, 1[r12]	# tmp153,
# /usr/include/x86_64-linux-gnu/bits/string_fortified.h:59:   return __builtin___memset_chk (__dest, __ch, __len,
	mov	r12, rax	# tmp157, tmp154
	imul	r12, rdi	# tmp157, tmp110
# segmented_sieve.c:47:         if (num % 3 == 0 || num % 5 == 0 || num % 7 == 0) {
	cmp	rsi, r12	# tmp111, tmp157
	jnb	.L242	#,
	mov	r13, rax	# tmp180, tmp154
	imul	r13, r10	# tmp180, tmp148
# segmented_sieve.c:47:         if (num % 3 == 0 || num % 5 == 0 || num % 7 == 0) {
	cmp	r9, r13	# tmp149, tmp180
	jnb	.L242	#,
	mov	rdx, rax	# tmp183, tmp154
	imul	rdx, rbx	# tmp183, tmp150
# segmented_sieve.c:47:         if (num % 3 == 0 || num % 5 == 0 || num % 7 == 0) {
	cmp	r11, rdx	# tmp151, tmp183
	jb	.L243	#,
	.p2align 4,,10
	.p2align 3
.L242:
# segmented_sieve.c:48:             p105[i >> 3] &= ~(1 << (i & 7));
	mov	r12d, ecx	# _6, tmp153
# segmented_sieve.c:48:             p105[i >> 3] &= ~(1 << (i & 7));
	mov	edx, ecx	# tmp174, tmp153
# segmented_sieve.c:48:             p105[i >> 3] &= ~(1 << (i & 7));
	sar	r12d, 3	# _6,
# segmented_sieve.c:48:             p105[i >> 3] &= ~(1 << (i & 7));
	and	edx, 7	# tmp174,
# segmented_sieve.c:48:             p105[i >> 3] &= ~(1 << (i & 7));
	movsx	r13, r12d	# _6, _6
# segmented_sieve.c:48:             p105[i >> 3] &= ~(1 << (i & 7));
	shlx	r12d, r8d, edx	# tmp176, tmp147, tmp174
# segmented_sieve.c:48:             p105[i >> 3] &= ~(1 << (i & 7));
	not	r12d	# tmp177
	and	BYTE PTR [rsp+r13], r12b	# p105[_6], tmp177
.L243:
# segmented_sieve.c:45:     for (int i = 0; i < 105 * 8; i++) {
	lea	r12, 2[rax]	# ivtmp.127,
# segmented_sieve.c:45:     for (int i = 0; i < 105 * 8; i++) {
	lea	edx, 1[rcx]	# i,
# /usr/include/x86_64-linux-gnu/bits/string_fortified.h:59:   return __builtin___memset_chk (__dest, __ch, __len,
	mov	r13, r12	# tmp187, ivtmp.127
	imul	r13, rdi	# tmp187, tmp110
# segmented_sieve.c:47:         if (num % 3 == 0 || num % 5 == 0 || num % 7 == 0) {
	cmp	rsi, r13	# tmp111, tmp187
	jnb	.L245	#,
	mov	r13, r12	# tmp196, ivtmp.127
	imul	r13, r10	# tmp196, tmp148
# segmented_sieve.c:47:         if (num % 3 == 0 || num % 5 == 0 || num % 7 == 0) {
	cmp	r9, r13	# tmp149, tmp196
	jnb	.L245	#,
	imul	r12, rbx	# tmp199, tmp150
# segmented_sieve.c:47:         if (num % 3 == 0 || num % 5 == 0 || num % 7 == 0) {
	cmp	r11, r12	# tmp151, tmp199
	jb	.L246	#,
	.p2align 4,,10
	.p2align 3
.L245:
# segmented_sieve.c:48:             p105[i >> 3] &= ~(1 << (i & 7));
	mov	r12d, edx	# _6, i
# segmented_sieve.c:48:             p105[i >> 3] &= ~(1 << (i & 7));
	and	edx, 7	# tmp190,
# segmented_sieve.c:48:             p105[i >> 3] &= ~(1 << (i & 7));
	sar	r12d, 3	# _6,
# segmented_sieve.c:48:             p105[i >> 3] &= ~(1 << (i & 7));
	shlx	edx, r8d, edx	# tmp192, tmp147, tmp190
# segmented_sieve.c:48:             p105[i >> 3] &= ~(1 << (i & 7));
	not	edx	# tmp193
	movsx	r13, r12d	# _6, _6
	and	BYTE PTR [rsp+r13], dl	# p105[_6], tmp193
.L246:
# segmented_sieve.c:45:     for (int i = 0; i < 105 * 8; i++) {
	lea	r12, 4[rax]	# ivtmp.127,
# segmented_sieve.c:45:     for (int i = 0; i < 105 * 8; i++) {
	lea	edx, 2[rcx]	# i,
# /usr/include/x86_64-linux-gnu/bits/string_fortified.h:59:   return __builtin___memset_chk (__dest, __ch, __len,
	mov	r13, r12	# tmp203, ivtmp.127
	imul	r13, rdi	# tmp203, tmp110
# segmented_sieve.c:47:         if (num % 3 == 0 || num % 5 == 0 || num % 7 == 0) {
	cmp	rsi, r13	# tmp111, tmp203
	jnb	.L248	#,
	mov	r13, r12	# tmp212, ivtmp.127
	imul	r13, r10	# tmp212, tmp148
# segmented_sieve.c:47:         if (num % 3 == 0 || num % 5 == 0 || num % 7 == 0) {
	cmp	r9, r13	# tmp149, tmp212
	jnb	.L248	#,
	imul	r12, rbx	# tmp215, tmp150
# segmented_sieve.c:47:         if (num % 3 == 0 || num % 5 == 0 || num % 7 == 0) {
	cmp	r11, r12	# tmp151, tmp215
	jb	.L249	#,
	.p2align 4,,10
	.p2align 3
.L248:
# segmented_sieve.c:48:             p105[i >> 3] &= ~(1 << (i & 7));
	mov	r12d, edx	# _6, i
# segmented_sieve.c:48:             p105[i >> 3] &= ~(1 << (i & 7));
	and	edx, 7	# tmp206,
# segmented_sieve.c:48:             p105[i >> 3] &= ~(1 << (i & 7));
	sar	r12d, 3	# _6,
# segmented_sieve.c:48:             p105[i >> 3] &= ~(1 << (i & 7));
	shlx	edx, r8d, edx	# tmp208, tmp147, tmp206
# segmented_sieve.c:48:             p105[i >> 3] &= ~(1 << (i & 7));
	not	edx	# tmp209
	movsx	r13, r12d	# _6, _6
	and	BYTE PTR [rsp+r13], dl	# p105[_6], tmp209
.L249:
# segmented_sieve.c:45:     for (int i = 0; i < 105 * 8; i++) {
	add	rax, 6	# ivtmp.127,
	cmp	ecx, 837	# tmp153,
# segmented_sieve.c:45:     for (int i = 0; i < 105 * 8; i++) {
	lea	r12d, 3[rcx]	# i,
# segmented_sieve.c:45:     for (int i = 0; i < 105 * 8; i++) {
	jne	.L230	#,
	lea	rbx, super_pattern[rip]	# ivtmp.118,
	mov	r13, rsp	# tmp146,
	lea	r12, 3360[rbx]	# _55,
	vzeroupper
.L231:
# /usr/include/x86_64-linux-gnu/bits/string_fortified.h:29:   return __builtin___memcpy_chk (__dest, __src, __len,
	mov	rcx, r12	# tmp143, _55
	mov	rdi, rbx	#, ivtmp.118
	mov	edx, 105	#,
	mov	rsi, r13	#, tmp146
	sub	rcx, rbx	# tmp143, ivtmp.118
	call	__memcpy_chk@PLT	#
# segmented_sieve.c:52:     for (int i = 0; i < SUPER_PATTERN_BYTES; i += 105) {
	lea	rdi, 105[rbx]	# tmp152,
# /usr/include/x86_64-linux-gnu/bits/string_fortified.h:29:   return __builtin___memcpy_chk (__dest, __src, __len,
	mov	rcx, r12	# tmp159, _55
	mov	rsi, r13	#, tmp146
	sub	rcx, rdi	# tmp159, tmp152
	mov	edx, 105	#,
	call	__memcpy_chk@PLT	#
	mov	rcx, r12	# tmp161, _55
	mov	edx, 105	#,
	mov	rsi, r13	#, tmp146
# segmented_sieve.c:52:     for (int i = 0; i < SUPER_PATTERN_BYTES; i += 105) {
	lea	rdi, 210[rbx]	# ivtmp.118,
# /usr/include/x86_64-linux-gnu/bits/string_fortified.h:29:   return __builtin___memcpy_chk (__dest, __src, __len,
	sub	rcx, rdi	# tmp161, ivtmp.118
	call	__memcpy_chk@PLT	#
	mov	rcx, r12	# tmp163, _55
	mov	edx, 105	#,
	mov	rsi, r13	#, tmp146
# segmented_sieve.c:52:     for (int i = 0; i < SUPER_PATTERN_BYTES; i += 105) {
	lea	rdi, 315[rbx]	# ivtmp.118,
# /usr/include/x86_64-linux-gnu/bits/string_fortified.h:29:   return __builtin___memcpy_chk (__dest, __src, __len,
	sub	rcx, rdi	# tmp163, ivtmp.118
	call	__memcpy_chk@PLT	#
	mov	rcx, r12	# tmp165, _55
	mov	edx, 105	#,
	mov	rsi, r13	#, tmp146
# segmented_sieve.c:52:     for (int i = 0; i < SUPER_PATTERN_BYTES; i += 105) {
	lea	rdi, 420[rbx]	# ivtmp.118,
# /usr/include/x86_64-linux-gnu/bits/string_fortified.h:29:   return __builtin___memcpy_chk (__dest, __src, __len,
	sub	rcx, rdi	# tmp165, ivtmp.118
	call	__memcpy_chk@PLT	#
	mov	rcx, r12	# tmp167, _55
	mov	edx, 105	#,
	mov	rsi, r13	#, tmp146
# segmented_sieve.c:52:     for (int i = 0; i < SUPER_PATTERN_BYTES; i += 105) {
	lea	rdi, 525[rbx]	# ivtmp.118,
# /usr/include/x86_64-linux-gnu/bits/string_fortified.h:29:   return __builtin___memcpy_chk (__dest, __src, __len,
	sub	rcx, rdi	# tmp167, ivtmp.118
	call	__memcpy_chk@PLT	#
	mov	rcx, r12	# tmp169, _55
	mov	edx, 105	#,
	mov	rsi, r13	#, tmp146
# segmented_sieve.c:52:     for (int i = 0; i < SUPER_PATTERN_BYTES; i += 105) {
	lea	rdi, 630[rbx]	# ivtmp.118,
# /usr/include/x86_64-linux-gnu/bits/string_fortified.h:29:   return __builtin___memcpy_chk (__dest, __src, __len,
	sub	rcx, rdi	# tmp169, ivtmp.118
	call	__memcpy_chk@PLT	#
	mov	rcx, r12	# tmp171, _55
	mov	edx, 105	#,
	mov	rsi, r13	#, tmp146
# segmented_sieve.c:52:     for (int i = 0; i < SUPER_PATTERN_BYTES; i += 105) {
	lea	rdi, 735[rbx]	# ivtmp.118,
	add	rbx, 840	# ivtmp.118,
# /usr/include/x86_64-linux-gnu/bits/string_fortified.h:29:   return __builtin___memcpy_chk (__dest, __src, __len,
	sub	rcx, rdi	# tmp171, ivtmp.118
	call	__memcpy_chk@PLT	#
# segmented_sieve.c:52:     for (int i = 0; i < SUPER_PATTERN_BYTES; i += 105) {
	cmp	r12, rbx	# _55, ivtmp.118
	jne	.L231	#,
# segmented_sieve.c:58: }
	mov	rax, QWORD PTR 120[rsp]	# tmp218, D.45651
	sub	rax, QWORD PTR fs:40	# tmp218, MEM[(<address-space-1> long unsigned int *)40B]
	jne	.L257	#,
	add	rsp, 136	#,
	pop	rbx	#
	pop	r12	#
	pop	r13	#
	pop	rbp	#
	.cfi_remember_state
	.cfi_def_cfa 7, 8
	ret	
.L257:
	.cfi_restore_state
	call	__stack_chk_fail@PLT	#
	.cfi_endproc
.LFE6492:
	.size	init_avx_pattern, .-init_avx_pattern
	.p2align 4
	.globl	GetBasePrimes
	.type	GetBasePrimes, @function
GetBasePrimes:
.LFB6495:
	.cfi_startproc
	endbr64	
	push	r13	#
	.cfi_def_cfa_offset 16
	.cfi_offset 13, -16
	mov	r13, rdi	# limit, tmp420
	push	r12	#
	.cfi_def_cfa_offset 24
	.cfi_offset 12, -24
	mov	r12, rsi	# count, tmp421
	push	rbp	#
	.cfi_def_cfa_offset 32
	.cfi_offset 6, -32
# segmented_sieve.c:86:     uint64_t byte_len = (limit >> 4) + 2;
	mov	rbp, rdi	# tmp148, limit
# segmented_sieve.c:85: PrimeState *GetBasePrimes(uint64_t limit, size_t *count) {
	push	rbx	#
	.cfi_def_cfa_offset 40
	.cfi_offset 3, -40
# segmented_sieve.c:86:     uint64_t byte_len = (limit >> 4) + 2;
	shr	rbp, 4	# tmp148,
# segmented_sieve.c:86:     uint64_t byte_len = (limit >> 4) + 2;
	add	rbp, 2	# byte_len,
# segmented_sieve.c:87:     uint8_t *mem = (uint8_t *) malloc(byte_len);
	mov	rdi, rbp	#, byte_len
# segmented_sieve.c:85: PrimeState *GetBasePrimes(uint64_t limit, size_t *count) {
	sub	rsp, 8	#,
	.cfi_def_cfa_offset 48
# segmented_sieve.c:87:     uint8_t *mem = (uint8_t *) malloc(byte_len);
	call	malloc@PLT	#
# /usr/include/x86_64-linux-gnu/bits/string_fortified.h:59:   return __builtin___memset_chk (__dest, __ch, __len,
	mov	rcx, rbp	#, byte_len
	mov	rdx, rbp	#, byte_len
	mov	esi, 255	#,
# segmented_sieve.c:87:     uint8_t *mem = (uint8_t *) malloc(byte_len);
	mov	rbx, rax	# mem, tmp422
# /usr/include/x86_64-linux-gnu/bits/string_fortified.h:59:   return __builtin___memset_chk (__dest, __ch, __len,
	mov	rdi, rax	#, mem
	call	__memset_chk@PLT	#
# segmented_sieve.c:89:     mem[0] &= 0xFE;
	movzx	ebp, BYTE PTR [rbx]	# pretmp_147, *mem_66
	and	ebp, -2	# pretmp_147,
# segmented_sieve.c:91:     uint64_t i_limit = sqrt(limit);
	test	r13, r13	# limit
# segmented_sieve.c:89:     mem[0] &= 0xFE;
	mov	BYTE PTR [rbx], bpl	# *mem_66, pretmp_147
# segmented_sieve.c:91:     uint64_t i_limit = sqrt(limit);
	js	.L259	#,
	vxorpd	xmm6, xmm6, xmm6	# tmp432
	vcvtsi2sd	xmm0, xmm6, r13	# tmp427, tmp432, limit
.L260:
	vxorpd	xmm1, xmm1, xmm1	# tmp154
	vucomisd	xmm1, xmm0	# tmp154, _4
	ja	.L373	#,
	vsqrtsd	xmm0, xmm0, xmm0	# _5, _4
.L263:
# segmented_sieve.c:91:     uint64_t i_limit = sqrt(limit);
	vmovsd	xmm2, QWORD PTR .LC1[rip]	# tmp155,
	vcomisd	xmm0, xmm2	# _5, tmp155
	jnb	.L264	#,
	vcvttsd2si	rdi, xmm0	# i_limit, _5
.L265:
# segmented_sieve.c:92:     for (uint64_t i = 3; i <= i_limit; i += 2) {
	cmp	rdi, 2	# i_limit,
	jbe	.L266	#,
# segmented_sieve.c:94:             for (uint64_t j = (i * i) >> 1; j < (limit >> 1) + 1; j += i) {
	mov	r9, r13	# _97, limit
# segmented_sieve.c:92:     for (uint64_t i = 3; i <= i_limit; i += 2) {
	mov	eax, 3	# i,
	lea	rsi, mask[rip]	# tmp196,
# segmented_sieve.c:94:             for (uint64_t j = (i * i) >> 1; j < (limit >> 1) + 1; j += i) {
	shr	r9	# _97
# segmented_sieve.c:94:             for (uint64_t j = (i * i) >> 1; j < (limit >> 1) + 1; j += i) {
	lea	r8, 1[r9]	# _98,
	jmp	.L272	#
	.p2align 4,,10
	.p2align 3
.L269:
# segmented_sieve.c:92:     for (uint64_t i = 3; i <= i_limit; i += 2) {
	add	rax, 2	# i,
# segmented_sieve.c:92:     for (uint64_t i = 3; i <= i_limit; i += 2) {
	cmp	rdi, rax	# i_limit, i
	jb	.L266	#,
.L268:
# segmented_sieve.c:93:         if (mem[i >> 4] & (1 << ((i >> 1) & 7))) {
	mov	rdx, rax	# tmp173, i
	shr	rdx, 4	# tmp173,
# segmented_sieve.c:93:         if (mem[i >> 4] & (1 << ((i >> 1) & 7))) {
	movzx	ebp, BYTE PTR [rbx+rdx]	# pretmp_147, *_146
.L272:
# segmented_sieve.c:93:         if (mem[i >> 4] & (1 << ((i >> 1) & 7))) {
	mov	r10, rax	# tmp160, i
# segmented_sieve.c:93:         if (mem[i >> 4] & (1 << ((i >> 1) & 7))) {
	movzx	ecx, bpl	# pretmp_147, pretmp_147
# segmented_sieve.c:93:         if (mem[i >> 4] & (1 << ((i >> 1) & 7))) {
	shr	r10	# tmp160
# segmented_sieve.c:93:         if (mem[i >> 4] & (1 << ((i >> 1) & 7))) {
	and	r10d, 7	# tmp161,
# segmented_sieve.c:93:         if (mem[i >> 4] & (1 << ((i >> 1) & 7))) {
	bt	ecx, r10d	# pretmp_147, tmp161
	jnc	.L269	#,
# segmented_sieve.c:94:             for (uint64_t j = (i * i) >> 1; j < (limit >> 1) + 1; j += i) {
	mov	rbp, rax	# tmp164, i
	imul	rbp, rax	# tmp164, i
# segmented_sieve.c:94:             for (uint64_t j = (i * i) >> 1; j < (limit >> 1) + 1; j += i) {
	shr	rbp	# j
# segmented_sieve.c:94:             for (uint64_t j = (i * i) >> 1; j < (limit >> 1) + 1; j += i) {
	cmp	rbp, r8	# j, _98
	jnb	.L269	#,
# segmented_sieve.c:94:             for (uint64_t j = (i * i) >> 1; j < (limit >> 1) + 1; j += i) {
	xor	edx, edx	# j
	cmp	rax, 1	# i,
	jne	.L374	#,
	lea	rbp, 1[r9]	# tmp206,
	and	ebp, 7	# tmp207,
	je	.L270	#,
	cmp	rbp, 1	# tmp207,
	je	.L340	#,
	cmp	rbp, 2	# tmp207,
	je	.L341	#,
	cmp	rbp, 3	# tmp207,
	je	.L342	#,
	cmp	rbp, 4	# tmp207,
	je	.L343	#,
	cmp	rbp, 5	# tmp207,
	je	.L344	#,
	cmp	rbp, 6	# tmp207,
	je	.L345	#,
# segmented_sieve.c:95:                 mem[j >> 3] &= mask[j & 7];
	movzx	r11d, BYTE PTR [rsi]	# mask[_162], mask[_162]
	and	BYTE PTR [rbx], r11b	# *_164, mask[_162]
# segmented_sieve.c:94:             for (uint64_t j = (i * i) >> 1; j < (limit >> 1) + 1; j += i) {
	mov	edx, 1	# j,
.L345:
# segmented_sieve.c:95:                 mem[j >> 3] &= mask[j & 7];
	mov	r10, rdx	# tmp390, j
# segmented_sieve.c:95:                 mem[j >> 3] &= mask[j & 7];
	mov	rcx, rdx	# tmp392, j
# segmented_sieve.c:94:             for (uint64_t j = (i * i) >> 1; j < (limit >> 1) + 1; j += i) {
	add	rdx, 1	# j,
# segmented_sieve.c:95:                 mem[j >> 3] &= mask[j & 7];
	shr	r10, 3	# tmp390,
# segmented_sieve.c:95:                 mem[j >> 3] &= mask[j & 7];
	and	ecx, 7	# tmp392,
# segmented_sieve.c:95:                 mem[j >> 3] &= mask[j & 7];
	movzx	eax, BYTE PTR [rsi+rcx]	# mask[_162], mask[_162]
	and	BYTE PTR [rbx+r10], al	# *_164, mask[_162]
.L344:
# segmented_sieve.c:95:                 mem[j >> 3] &= mask[j & 7];
	mov	rbp, rdx	# tmp395, j
# segmented_sieve.c:95:                 mem[j >> 3] &= mask[j & 7];
	mov	r11, rdx	# tmp397, j
# segmented_sieve.c:94:             for (uint64_t j = (i * i) >> 1; j < (limit >> 1) + 1; j += i) {
	add	rdx, 1	# j,
# segmented_sieve.c:95:                 mem[j >> 3] &= mask[j & 7];
	shr	rbp, 3	# tmp395,
# segmented_sieve.c:95:                 mem[j >> 3] &= mask[j & 7];
	and	r11d, 7	# tmp397,
# segmented_sieve.c:95:                 mem[j >> 3] &= mask[j & 7];
	movzx	r10d, BYTE PTR [rsi+r11]	# mask[_162], mask[_162]
	and	BYTE PTR [rbx+rbp], r10b	# *_164, mask[_162]
.L343:
# segmented_sieve.c:95:                 mem[j >> 3] &= mask[j & 7];
	mov	rax, rdx	# tmp400, j
# segmented_sieve.c:95:                 mem[j >> 3] &= mask[j & 7];
	mov	rcx, rdx	# tmp402, j
# segmented_sieve.c:94:             for (uint64_t j = (i * i) >> 1; j < (limit >> 1) + 1; j += i) {
	add	rdx, 1	# j,
# segmented_sieve.c:95:                 mem[j >> 3] &= mask[j & 7];
	shr	rax, 3	# tmp400,
# segmented_sieve.c:95:                 mem[j >> 3] &= mask[j & 7];
	and	ecx, 7	# tmp402,
# segmented_sieve.c:95:                 mem[j >> 3] &= mask[j & 7];
	movzx	ebp, BYTE PTR [rsi+rcx]	# mask[_162], mask[_162]
	and	BYTE PTR [rbx+rax], bpl	# *_164, mask[_162]
.L342:
# segmented_sieve.c:95:                 mem[j >> 3] &= mask[j & 7];
	mov	r11, rdx	# tmp405, j
# segmented_sieve.c:95:                 mem[j >> 3] &= mask[j & 7];
	mov	r10, rdx	# tmp407, j
# segmented_sieve.c:94:             for (uint64_t j = (i * i) >> 1; j < (limit >> 1) + 1; j += i) {
	add	rdx, 1	# j,
# segmented_sieve.c:95:                 mem[j >> 3] &= mask[j & 7];
	shr	r11, 3	# tmp405,
# segmented_sieve.c:95:                 mem[j >> 3] &= mask[j & 7];
	and	r10d, 7	# tmp407,
# segmented_sieve.c:95:                 mem[j >> 3] &= mask[j & 7];
	movzx	eax, BYTE PTR [rsi+r10]	# mask[_162], mask[_162]
	and	BYTE PTR [rbx+r11], al	# *_164, mask[_162]
.L341:
# segmented_sieve.c:95:                 mem[j >> 3] &= mask[j & 7];
	mov	rbp, rdx	# tmp410, j
# segmented_sieve.c:95:                 mem[j >> 3] &= mask[j & 7];
	mov	rcx, rdx	# tmp412, j
# segmented_sieve.c:94:             for (uint64_t j = (i * i) >> 1; j < (limit >> 1) + 1; j += i) {
	add	rdx, 1	# j,
# segmented_sieve.c:95:                 mem[j >> 3] &= mask[j & 7];
	shr	rbp, 3	# tmp410,
# segmented_sieve.c:95:                 mem[j >> 3] &= mask[j & 7];
	and	ecx, 7	# tmp412,
# segmented_sieve.c:95:                 mem[j >> 3] &= mask[j & 7];
	movzx	r11d, BYTE PTR [rsi+rcx]	# mask[_162], mask[_162]
	and	BYTE PTR [rbx+rbp], r11b	# *_164, mask[_162]
.L340:
# segmented_sieve.c:95:                 mem[j >> 3] &= mask[j & 7];
	mov	r10, rdx	# tmp415, j
# segmented_sieve.c:95:                 mem[j >> 3] &= mask[j & 7];
	mov	rax, rdx	# tmp417, j
	mov	rcx, rdx	# j, j
# segmented_sieve.c:94:             for (uint64_t j = (i * i) >> 1; j < (limit >> 1) + 1; j += i) {
	add	rdx, 1	# j,
# segmented_sieve.c:95:                 mem[j >> 3] &= mask[j & 7];
	shr	r10, 3	# tmp415,
# segmented_sieve.c:95:                 mem[j >> 3] &= mask[j & 7];
	and	eax, 7	# tmp417,
# segmented_sieve.c:95:                 mem[j >> 3] &= mask[j & 7];
	movzx	ebp, BYTE PTR [rsi+rax]	# mask[_162], mask[_162]
	and	BYTE PTR [rbx+r10], bpl	# *_164, mask[_162]
# segmented_sieve.c:94:             for (uint64_t j = (i * i) >> 1; j < (limit >> 1) + 1; j += i) {
	cmp	r9, rcx	# _97, j
	je	.L379	#,
.L270:
# segmented_sieve.c:94:             for (uint64_t j = (i * i) >> 1; j < (limit >> 1) + 1; j += i) {
	lea	rbp, 1[rdx]	# tmp208,
# segmented_sieve.c:95:                 mem[j >> 3] &= mask[j & 7];
	mov	r10, rdx	# tmp171, j
# segmented_sieve.c:95:                 mem[j >> 3] &= mask[j & 7];
	mov	r11, rdx	# tmp169, j
# segmented_sieve.c:95:                 mem[j >> 3] &= mask[j & 7];
	and	r10d, 7	# tmp171,
# segmented_sieve.c:95:                 mem[j >> 3] &= mask[j & 7];
	mov	rcx, rbp	# tmp213, tmp208
	shr	r11, 3	# tmp169,
# segmented_sieve.c:95:                 mem[j >> 3] &= mask[j & 7];
	and	ebp, 7	# tmp215,
# segmented_sieve.c:95:                 mem[j >> 3] &= mask[j & 7];
	movzx	eax, BYTE PTR [rsi+r10]	# mask[_162], mask[_162]
# segmented_sieve.c:95:                 mem[j >> 3] &= mask[j & 7];
	shr	rcx, 3	# tmp213,
# segmented_sieve.c:94:             for (uint64_t j = (i * i) >> 1; j < (limit >> 1) + 1; j += i) {
	lea	r10, 2[rdx]	# j,
# segmented_sieve.c:95:                 mem[j >> 3] &= mask[j & 7];
	and	BYTE PTR [rbx+r11], al	# *_164, mask[_162]
	movzx	r11d, BYTE PTR [rsi+rbp]	# mask[_162], mask[_162]
# segmented_sieve.c:95:                 mem[j >> 3] &= mask[j & 7];
	mov	rbp, r10	# tmp219, j
# segmented_sieve.c:95:                 mem[j >> 3] &= mask[j & 7];
	and	BYTE PTR [rbx+rcx], r11b	# *_164, mask[_162]
# segmented_sieve.c:94:             for (uint64_t j = (i * i) >> 1; j < (limit >> 1) + 1; j += i) {
	lea	r11, 3[rdx]	# j,
# segmented_sieve.c:95:                 mem[j >> 3] &= mask[j & 7];
	shr	rbp, 3	# tmp219,
# segmented_sieve.c:95:                 mem[j >> 3] &= mask[j & 7];
	and	r10d, 7	# tmp221,
# segmented_sieve.c:95:                 mem[j >> 3] &= mask[j & 7];
	mov	rcx, r11	# tmp225, j
# segmented_sieve.c:95:                 mem[j >> 3] &= mask[j & 7];
	and	r11d, 7	# tmp227,
# segmented_sieve.c:95:                 mem[j >> 3] &= mask[j & 7];
	movzx	eax, BYTE PTR [rsi+r10]	# mask[_162], mask[_162]
# segmented_sieve.c:95:                 mem[j >> 3] &= mask[j & 7];
	shr	rcx, 3	# tmp225,
# segmented_sieve.c:95:                 mem[j >> 3] &= mask[j & 7];
	and	BYTE PTR [rbx+rbp], al	# *_164, mask[_162]
# segmented_sieve.c:94:             for (uint64_t j = (i * i) >> 1; j < (limit >> 1) + 1; j += i) {
	lea	rbp, 4[rdx]	# j,
# segmented_sieve.c:95:                 mem[j >> 3] &= mask[j & 7];
	movzx	r10d, BYTE PTR [rsi+r11]	# mask[_162], mask[_162]
# segmented_sieve.c:95:                 mem[j >> 3] &= mask[j & 7];
	mov	r11, rbp	# tmp231, j
# segmented_sieve.c:95:                 mem[j >> 3] &= mask[j & 7];
	and	BYTE PTR [rbx+rcx], r10b	# *_164, mask[_162]
# segmented_sieve.c:94:             for (uint64_t j = (i * i) >> 1; j < (limit >> 1) + 1; j += i) {
	lea	r10, 5[rdx]	# j,
# segmented_sieve.c:95:                 mem[j >> 3] &= mask[j & 7];
	shr	r11, 3	# tmp231,
# segmented_sieve.c:95:                 mem[j >> 3] &= mask[j & 7];
	and	ebp, 7	# tmp233,
# segmented_sieve.c:95:                 mem[j >> 3] &= mask[j & 7];
	mov	rcx, r10	# tmp237, j
# segmented_sieve.c:95:                 mem[j >> 3] &= mask[j & 7];
	and	r10d, 7	# tmp239,
# segmented_sieve.c:95:                 mem[j >> 3] &= mask[j & 7];
	movzx	eax, BYTE PTR [rsi+rbp]	# mask[_162], mask[_162]
# segmented_sieve.c:95:                 mem[j >> 3] &= mask[j & 7];
	shr	rcx, 3	# tmp237,
# segmented_sieve.c:95:                 mem[j >> 3] &= mask[j & 7];
	and	BYTE PTR [rbx+r11], al	# *_164, mask[_162]
# segmented_sieve.c:94:             for (uint64_t j = (i * i) >> 1; j < (limit >> 1) + 1; j += i) {
	lea	r11, 6[rdx]	# j,
# segmented_sieve.c:95:                 mem[j >> 3] &= mask[j & 7];
	movzx	ebp, BYTE PTR [rsi+r10]	# mask[_162], mask[_162]
# segmented_sieve.c:95:                 mem[j >> 3] &= mask[j & 7];
	mov	r10, r11	# tmp243, j
# segmented_sieve.c:95:                 mem[j >> 3] &= mask[j & 7];
	and	BYTE PTR [rbx+rcx], bpl	# *_164, mask[_162]
# segmented_sieve.c:95:                 mem[j >> 3] &= mask[j & 7];
	and	r11d, 7	# tmp245,
# segmented_sieve.c:94:             for (uint64_t j = (i * i) >> 1; j < (limit >> 1) + 1; j += i) {
	lea	rbp, 7[rdx]	# j,
# segmented_sieve.c:95:                 mem[j >> 3] &= mask[j & 7];
	movzx	eax, BYTE PTR [rsi+r11]	# mask[_162], mask[_162]
# segmented_sieve.c:95:                 mem[j >> 3] &= mask[j & 7];
	shr	r10, 3	# tmp243,
# segmented_sieve.c:94:             for (uint64_t j = (i * i) >> 1; j < (limit >> 1) + 1; j += i) {
	add	rdx, 8	# j,
# segmented_sieve.c:95:                 mem[j >> 3] &= mask[j & 7];
	mov	rcx, rbp	# tmp249, j
# segmented_sieve.c:95:                 mem[j >> 3] &= mask[j & 7];
	mov	r11, rbp	# tmp251, j
# segmented_sieve.c:95:                 mem[j >> 3] &= mask[j & 7];
	and	BYTE PTR [rbx+r10], al	# *_164, mask[_162]
# segmented_sieve.c:95:                 mem[j >> 3] &= mask[j & 7];
	shr	rcx, 3	# tmp249,
# segmented_sieve.c:95:                 mem[j >> 3] &= mask[j & 7];
	and	r11d, 7	# tmp251,
# segmented_sieve.c:95:                 mem[j >> 3] &= mask[j & 7];
	movzx	r10d, BYTE PTR [rsi+r11]	# mask[_162], mask[_162]
	and	BYTE PTR [rbx+rcx], r10b	# *_164, mask[_162]
# segmented_sieve.c:94:             for (uint64_t j = (i * i) >> 1; j < (limit >> 1) + 1; j += i) {
	cmp	r9, rbp	# _97, j
	jne	.L270	#,
.L379:
# segmented_sieve.c:92:     for (uint64_t i = 3; i <= i_limit; i += 2) {
	mov	eax, 3	# i,
	jmp	.L268	#
	.p2align 4,,10
	.p2align 3
.L266:
# segmented_sieve.c:100:     for (uint64_t i = 3; i <= limit; i += 2) {
	cmp	r13, 2	# limit,
	jbe	.L273	#,
	lea	rdi, -3[r13]	# tmp202,
# segmented_sieve.c:101:         if (mem[i >> 4] & (1 << ((i >> 1) & 7))) c++;
	xor	eax, eax	# c
# segmented_sieve.c:100:     for (uint64_t i = 3; i <= limit; i += 2) {
	mov	r8d, 5	# i,
	shr	rdi	# tmp201
	and	edi, 3	# tmp203,
# segmented_sieve.c:101:         if (mem[i >> 4] & (1 << ((i >> 1) & 7))) c++;
	test	BYTE PTR [rbx], 2	# *_118,
	setne	al	#, c
# segmented_sieve.c:100:     for (uint64_t i = 3; i <= limit; i += 2) {
	cmp	r13, 5	# limit,
	jb	.L376	#,
	test	rdi, rdi	# tmp203
	je	.L275	#,
	cmp	rdi, 1	# tmp203,
	je	.L350	#,
	cmp	rdi, 2	# tmp203,
	je	.L351	#,
# segmented_sieve.c:101:         if (mem[i >> 4] & (1 << ((i >> 1) & 7))) c++;
	movzx	r9d, BYTE PTR [rbx]	# *_118, *_118
# segmented_sieve.c:100:     for (uint64_t i = 3; i <= limit; i += 2) {
	mov	r8d, 7	# i,
# segmented_sieve.c:101:         if (mem[i >> 4] & (1 << ((i >> 1) & 7))) c++;
	sar	r9d, 2	# tmp371,
	and	r9d, 1	# tmp372,
# segmented_sieve.c:101:         if (mem[i >> 4] & (1 << ((i >> 1) & 7))) c++;
	cmp	r9d, 1	# tmp372,
	sbb	rax, -1	# c,
.L351:
# segmented_sieve.c:101:         if (mem[i >> 4] & (1 << ((i >> 1) & 7))) c++;
	mov	rsi, r8	# tmp373, i
# segmented_sieve.c:101:         if (mem[i >> 4] & (1 << ((i >> 1) & 7))) c++;
	mov	r11, r8	# tmp375, i
# segmented_sieve.c:101:         if (mem[i >> 4] & (1 << ((i >> 1) & 7))) c++;
	shr	rsi, 4	# tmp373,
# segmented_sieve.c:101:         if (mem[i >> 4] & (1 << ((i >> 1) & 7))) c++;
	shr	r11	# tmp375
# segmented_sieve.c:101:         if (mem[i >> 4] & (1 << ((i >> 1) & 7))) c++;
	movzx	ebp, BYTE PTR [rbx+rsi]	# *_118, *_118
# segmented_sieve.c:101:         if (mem[i >> 4] & (1 << ((i >> 1) & 7))) c++;
	and	r11d, 7	# tmp376,
# segmented_sieve.c:101:         if (mem[i >> 4] & (1 << ((i >> 1) & 7))) c++;
	sarx	edx, ebp, r11d	# tmp377, *_118, tmp376
	and	edx, 1	# tmp378,
# segmented_sieve.c:101:         if (mem[i >> 4] & (1 << ((i >> 1) & 7))) c++;
	cmp	edx, 1	# tmp378,
	sbb	rax, -1	# c,
# segmented_sieve.c:100:     for (uint64_t i = 3; i <= limit; i += 2) {
	add	r8, 2	# i,
.L350:
# segmented_sieve.c:101:         if (mem[i >> 4] & (1 << ((i >> 1) & 7))) c++;
	mov	rcx, r8	# tmp379, i
# segmented_sieve.c:101:         if (mem[i >> 4] & (1 << ((i >> 1) & 7))) c++;
	mov	rdi, r8	# tmp381, i
# segmented_sieve.c:101:         if (mem[i >> 4] & (1 << ((i >> 1) & 7))) c++;
	shr	rcx, 4	# tmp379,
# segmented_sieve.c:101:         if (mem[i >> 4] & (1 << ((i >> 1) & 7))) c++;
	shr	rdi	# tmp381
# segmented_sieve.c:101:         if (mem[i >> 4] & (1 << ((i >> 1) & 7))) c++;
	movzx	r10d, BYTE PTR [rbx+rcx]	# *_118, *_118
# segmented_sieve.c:101:         if (mem[i >> 4] & (1 << ((i >> 1) & 7))) c++;
	and	edi, 7	# tmp382,
# segmented_sieve.c:101:         if (mem[i >> 4] & (1 << ((i >> 1) & 7))) c++;
	sarx	r9d, r10d, edi	# tmp383, *_118, tmp382
	and	r9d, 1	# tmp384,
# segmented_sieve.c:101:         if (mem[i >> 4] & (1 << ((i >> 1) & 7))) c++;
	cmp	r9d, 1	# tmp384,
	sbb	rax, -1	# c,
# segmented_sieve.c:100:     for (uint64_t i = 3; i <= limit; i += 2) {
	add	r8, 2	# i,
# segmented_sieve.c:100:     for (uint64_t i = 3; i <= limit; i += 2) {
	cmp	r13, r8	# limit, i
	jb	.L376	#,
.L275:
# segmented_sieve.c:101:         if (mem[i >> 4] & (1 << ((i >> 1) & 7))) c++;
	mov	rsi, r8	# tmp256, i
# segmented_sieve.c:101:         if (mem[i >> 4] & (1 << ((i >> 1) & 7))) c++;
	mov	r11, r8	# tmp258, i
# segmented_sieve.c:100:     for (uint64_t i = 3; i <= limit; i += 2) {
	lea	rcx, 2[r8]	# tmp204,
# segmented_sieve.c:101:         if (mem[i >> 4] & (1 << ((i >> 1) & 7))) c++;
	shr	rsi, 4	# tmp256,
# segmented_sieve.c:101:         if (mem[i >> 4] & (1 << ((i >> 1) & 7))) c++;
	shr	r11	# tmp258
# segmented_sieve.c:101:         if (mem[i >> 4] & (1 << ((i >> 1) & 7))) c++;
	mov	r10, rcx	# tmp264, tmp204
# segmented_sieve.c:101:         if (mem[i >> 4] & (1 << ((i >> 1) & 7))) c++;
	movzx	ebp, BYTE PTR [rbx+rsi]	# *_118, *_118
# segmented_sieve.c:101:         if (mem[i >> 4] & (1 << ((i >> 1) & 7))) c++;
	and	r11d, 7	# tmp259,
# segmented_sieve.c:101:         if (mem[i >> 4] & (1 << ((i >> 1) & 7))) c++;
	sarx	edx, ebp, r11d	# tmp260, *_118, tmp259
	and	edx, 1	# tmp261,
# segmented_sieve.c:100:     for (uint64_t i = 3; i <= limit; i += 2) {
	lea	rbp, 4[r8]	# i,
# segmented_sieve.c:101:         if (mem[i >> 4] & (1 << ((i >> 1) & 7))) c++;
	cmp	edx, 1	# tmp261,
# segmented_sieve.c:101:         if (mem[i >> 4] & (1 << ((i >> 1) & 7))) c++;
	mov	rsi, rbp	# tmp272, i
# segmented_sieve.c:101:         if (mem[i >> 4] & (1 << ((i >> 1) & 7))) c++;
	sbb	rax, -1	# c,
# segmented_sieve.c:101:         if (mem[i >> 4] & (1 << ((i >> 1) & 7))) c++;
	shr	r10, 4	# tmp264,
# segmented_sieve.c:101:         if (mem[i >> 4] & (1 << ((i >> 1) & 7))) c++;
	movzx	edi, BYTE PTR [rbx+r10]	# *_118, *_118
# segmented_sieve.c:101:         if (mem[i >> 4] & (1 << ((i >> 1) & 7))) c++;
	shr	rcx	# tmp266
# segmented_sieve.c:101:         if (mem[i >> 4] & (1 << ((i >> 1) & 7))) c++;
	and	ecx, 7	# tmp267,
# segmented_sieve.c:101:         if (mem[i >> 4] & (1 << ((i >> 1) & 7))) c++;
	sarx	r9d, edi, ecx	# tmp268, *_118, tmp267
	and	r9d, 1	# tmp269,
# segmented_sieve.c:100:     for (uint64_t i = 3; i <= limit; i += 2) {
	lea	rcx, 6[r8]	# i,
# segmented_sieve.c:101:         if (mem[i >> 4] & (1 << ((i >> 1) & 7))) c++;
	cmp	r9d, 1	# tmp269,
# segmented_sieve.c:101:         if (mem[i >> 4] & (1 << ((i >> 1) & 7))) c++;
	mov	r10, rcx	# tmp280, i
# segmented_sieve.c:101:         if (mem[i >> 4] & (1 << ((i >> 1) & 7))) c++;
	sbb	rax, -1	# c,
# segmented_sieve.c:101:         if (mem[i >> 4] & (1 << ((i >> 1) & 7))) c++;
	shr	rsi, 4	# tmp272,
# segmented_sieve.c:101:         if (mem[i >> 4] & (1 << ((i >> 1) & 7))) c++;
	shr	rbp	# tmp274
# segmented_sieve.c:101:         if (mem[i >> 4] & (1 << ((i >> 1) & 7))) c++;
	movzx	r11d, BYTE PTR [rbx+rsi]	# *_118, *_118
# segmented_sieve.c:101:         if (mem[i >> 4] & (1 << ((i >> 1) & 7))) c++;
	and	ebp, 7	# tmp275,
# segmented_sieve.c:101:         if (mem[i >> 4] & (1 << ((i >> 1) & 7))) c++;
	sarx	edx, r11d, ebp	# tmp276, *_118, tmp275
	and	edx, 1	# tmp277,
# segmented_sieve.c:101:         if (mem[i >> 4] & (1 << ((i >> 1) & 7))) c++;
	cmp	edx, 1	# tmp277,
	sbb	rax, -1	# c,
# segmented_sieve.c:101:         if (mem[i >> 4] & (1 << ((i >> 1) & 7))) c++;
	shr	r10, 4	# tmp280,
# segmented_sieve.c:101:         if (mem[i >> 4] & (1 << ((i >> 1) & 7))) c++;
	shr	rcx	# tmp282
# segmented_sieve.c:101:         if (mem[i >> 4] & (1 << ((i >> 1) & 7))) c++;
	movzx	edi, BYTE PTR [rbx+r10]	# *_118, *_118
# segmented_sieve.c:101:         if (mem[i >> 4] & (1 << ((i >> 1) & 7))) c++;
	and	ecx, 7	# tmp283,
# segmented_sieve.c:101:         if (mem[i >> 4] & (1 << ((i >> 1) & 7))) c++;
	sarx	r9d, edi, ecx	# tmp284, *_118, tmp283
	and	r9d, 1	# tmp285,
# segmented_sieve.c:101:         if (mem[i >> 4] & (1 << ((i >> 1) & 7))) c++;
	cmp	r9d, 1	# tmp285,
	sbb	rax, -1	# c,
# segmented_sieve.c:100:     for (uint64_t i = 3; i <= limit; i += 2) {
	add	r8, 8	# i,
# segmented_sieve.c:100:     for (uint64_t i = 3; i <= limit; i += 2) {
	cmp	r13, r8	# limit, i
	jnb	.L275	#,
.L376:
# segmented_sieve.c:103:     PrimeState *primes = (PrimeState *) malloc(sizeof(PrimeState) * c);
	sal	rax, 4	# c,
	mov	rdi, rax	# tmp181, c
	call	malloc@PLT	#
	lea	r8, -3[r13]	# tmp198,
# segmented_sieve.c:104:     size_t idx = 0;
	xor	r11d, r11d	# idx
	shr	r8	# tmp197
# segmented_sieve.c:103:     PrimeState *primes = (PrimeState *) malloc(sizeof(PrimeState) * c);
	mov	rbp, rax	# <retval>, tmp425
	and	r8d, 3	# tmp199,
# segmented_sieve.c:106:         if (mem[i >> 4] & (1 << ((i >> 1) & 7))) {
	test	BYTE PTR [rbx], 2	# *_150,
	jne	.L381	#,
.L291:
# segmented_sieve.c:105:     for (uint64_t i = 3; i <= limit; i += 2) {
	cmp	r13, 5	# limit,
# segmented_sieve.c:105:     for (uint64_t i = 3; i <= limit; i += 2) {
	mov	edx, 5	# i,
# segmented_sieve.c:105:     for (uint64_t i = 3; i <= limit; i += 2) {
	jb	.L277	#,
	test	r8, r8	# tmp199
	je	.L279	#,
	cmp	r8, 1	# tmp199,
	je	.L348	#,
	cmp	r8, 2	# tmp199,
	je	.L349	#,
# segmented_sieve.c:106:         if (mem[i >> 4] & (1 << ((i >> 1) & 7))) {
	test	BYTE PTR [rbx], 4	# *_150,
	je	.L293	#,
# segmented_sieve.c:107:             primes[idx].p = i;
	mov	r10, r11	# tmp314, idx
# segmented_sieve.c:108:             primes[idx].next_bit = (i * i) >> 1;
	mov	ecx, 12	# tmp312,
# segmented_sieve.c:107:             primes[idx].p = i;
	vmovq	xmm8, rdx	# i, i
# segmented_sieve.c:109:             idx++;
	add	r11, 1	# idx,
# segmented_sieve.c:107:             primes[idx].p = i;
	vpinsrq	xmm9, xmm8, rcx, 1	# tmp313, i, tmp312
	sal	r10, 4	# tmp314,
	vmovdqu	XMMWORD PTR 0[rbp+r10], xmm9	# MEM <vector(2) long unsigned int> [(long unsigned int *)_137], tmp313
.L293:
# segmented_sieve.c:105:     for (uint64_t i = 3; i <= limit; i += 2) {
	add	rdx, 2	# i,
.L349:
# segmented_sieve.c:106:         if (mem[i >> 4] & (1 << ((i >> 1) & 7))) {
	mov	rdi, rdx	# tmp316, i
# segmented_sieve.c:106:         if (mem[i >> 4] & (1 << ((i >> 1) & 7))) {
	mov	r8, rdx	# tmp318, i
# segmented_sieve.c:106:         if (mem[i >> 4] & (1 << ((i >> 1) & 7))) {
	shr	rdi, 4	# tmp316,
# segmented_sieve.c:106:         if (mem[i >> 4] & (1 << ((i >> 1) & 7))) {
	shr	r8	# tmp318
# segmented_sieve.c:106:         if (mem[i >> 4] & (1 << ((i >> 1) & 7))) {
	movzx	r9d, BYTE PTR [rbx+rdi]	# *_150, *_150
# segmented_sieve.c:106:         if (mem[i >> 4] & (1 << ((i >> 1) & 7))) {
	and	r8d, 7	# tmp319,
# segmented_sieve.c:106:         if (mem[i >> 4] & (1 << ((i >> 1) & 7))) {
	bt	r9d, r8d	# *_150, tmp319
	jnc	.L296	#,
# segmented_sieve.c:108:             primes[idx].next_bit = (i * i) >> 1;
	mov	rax, rdx	# tmp322, i
# segmented_sieve.c:107:             primes[idx].p = i;
	mov	rsi, r11	# tmp325, idx
	vmovq	xmm10, rdx	# i, i
# segmented_sieve.c:109:             idx++;
	add	r11, 1	# idx,
# segmented_sieve.c:108:             primes[idx].next_bit = (i * i) >> 1;
	imul	rax, rdx	# tmp322, i
# segmented_sieve.c:107:             primes[idx].p = i;
	sal	rsi, 4	# tmp325,
# segmented_sieve.c:108:             primes[idx].next_bit = (i * i) >> 1;
	shr	rax	# tmp323
# segmented_sieve.c:107:             primes[idx].p = i;
	vpinsrq	xmm11, xmm10, rax, 1	# tmp324, i, tmp323
	vmovdqu	XMMWORD PTR 0[rbp+rsi], xmm11	# MEM <vector(2) long unsigned int> [(long unsigned int *)_137], tmp324
.L296:
# segmented_sieve.c:105:     for (uint64_t i = 3; i <= limit; i += 2) {
	add	rdx, 2	# i,
.L348:
# segmented_sieve.c:106:         if (mem[i >> 4] & (1 << ((i >> 1) & 7))) {
	mov	rcx, rdx	# tmp327, i
# segmented_sieve.c:106:         if (mem[i >> 4] & (1 << ((i >> 1) & 7))) {
	mov	rdi, rdx	# tmp329, i
# segmented_sieve.c:106:         if (mem[i >> 4] & (1 << ((i >> 1) & 7))) {
	shr	rcx, 4	# tmp327,
# segmented_sieve.c:106:         if (mem[i >> 4] & (1 << ((i >> 1) & 7))) {
	shr	rdi	# tmp329
# segmented_sieve.c:106:         if (mem[i >> 4] & (1 << ((i >> 1) & 7))) {
	movzx	r10d, BYTE PTR [rbx+rcx]	# *_150, *_150
# segmented_sieve.c:106:         if (mem[i >> 4] & (1 << ((i >> 1) & 7))) {
	and	edi, 7	# tmp330,
# segmented_sieve.c:106:         if (mem[i >> 4] & (1 << ((i >> 1) & 7))) {
	bt	r10d, edi	# *_150, tmp330
	jnc	.L299	#,
# segmented_sieve.c:108:             primes[idx].next_bit = (i * i) >> 1;
	mov	r9, rdx	# tmp333, i
# segmented_sieve.c:107:             primes[idx].p = i;
	mov	r8, r11	# tmp336, idx
	vmovq	xmm12, rdx	# i, i
# segmented_sieve.c:109:             idx++;
	add	r11, 1	# idx,
# segmented_sieve.c:108:             primes[idx].next_bit = (i * i) >> 1;
	imul	r9, rdx	# tmp333, i
# segmented_sieve.c:107:             primes[idx].p = i;
	sal	r8, 4	# tmp336,
# segmented_sieve.c:108:             primes[idx].next_bit = (i * i) >> 1;
	shr	r9	# tmp334
# segmented_sieve.c:107:             primes[idx].p = i;
	vpinsrq	xmm13, xmm12, r9, 1	# tmp335, i, tmp334
	vmovdqu	XMMWORD PTR 0[rbp+r8], xmm13	# MEM <vector(2) long unsigned int> [(long unsigned int *)_137], tmp335
.L299:
# segmented_sieve.c:105:     for (uint64_t i = 3; i <= limit; i += 2) {
	add	rdx, 2	# i,
# segmented_sieve.c:105:     for (uint64_t i = 3; i <= limit; i += 2) {
	cmp	r13, rdx	# limit, i
	jb	.L277	#,
.L279:
# segmented_sieve.c:106:         if (mem[i >> 4] & (1 << ((i >> 1) & 7))) {
	mov	rax, rdx	# tmp287, i
# segmented_sieve.c:106:         if (mem[i >> 4] & (1 << ((i >> 1) & 7))) {
	mov	rcx, rdx	# tmp289, i
# segmented_sieve.c:106:         if (mem[i >> 4] & (1 << ((i >> 1) & 7))) {
	shr	rax, 4	# tmp287,
# segmented_sieve.c:106:         if (mem[i >> 4] & (1 << ((i >> 1) & 7))) {
	shr	rcx	# tmp289
# segmented_sieve.c:106:         if (mem[i >> 4] & (1 << ((i >> 1) & 7))) {
	movzx	esi, BYTE PTR [rbx+rax]	# *_150, *_150
# segmented_sieve.c:106:         if (mem[i >> 4] & (1 << ((i >> 1) & 7))) {
	and	ecx, 7	# tmp290,
# segmented_sieve.c:106:         if (mem[i >> 4] & (1 << ((i >> 1) & 7))) {
	bt	esi, ecx	# *_150, tmp290
	jnc	.L278	#,
# segmented_sieve.c:108:             primes[idx].next_bit = (i * i) >> 1;
	mov	r10, rdx	# tmp190, i
# segmented_sieve.c:107:             primes[idx].p = i;
	mov	rdi, r11	# tmp192, idx
	vmovq	xmm14, rdx	# i, i
# segmented_sieve.c:109:             idx++;
	add	r11, 1	# idx,
# segmented_sieve.c:108:             primes[idx].next_bit = (i * i) >> 1;
	imul	r10, rdx	# tmp190, i
# segmented_sieve.c:107:             primes[idx].p = i;
	sal	rdi, 4	# tmp192,
# segmented_sieve.c:108:             primes[idx].next_bit = (i * i) >> 1;
	shr	r10	# tmp191
# segmented_sieve.c:107:             primes[idx].p = i;
	vpinsrq	xmm15, xmm14, r10, 1	# tmp189, i, tmp191
	vmovdqu	XMMWORD PTR 0[rbp+rdi], xmm15	# MEM <vector(2) long unsigned int> [(long unsigned int *)_137], tmp189
.L278:
# segmented_sieve.c:105:     for (uint64_t i = 3; i <= limit; i += 2) {
	add	rdx, 2	# tmp200,
# segmented_sieve.c:106:         if (mem[i >> 4] & (1 << ((i >> 1) & 7))) {
	mov	r9, rdx	# tmp294, tmp200
# segmented_sieve.c:106:         if (mem[i >> 4] & (1 << ((i >> 1) & 7))) {
	mov	rax, rdx	# tmp296, tmp200
# segmented_sieve.c:106:         if (mem[i >> 4] & (1 << ((i >> 1) & 7))) {
	shr	r9, 4	# tmp294,
# segmented_sieve.c:106:         if (mem[i >> 4] & (1 << ((i >> 1) & 7))) {
	shr	rax	# tmp296
# segmented_sieve.c:106:         if (mem[i >> 4] & (1 << ((i >> 1) & 7))) {
	movzx	r8d, BYTE PTR [rbx+r9]	# *_150, *_150
# segmented_sieve.c:106:         if (mem[i >> 4] & (1 << ((i >> 1) & 7))) {
	and	eax, 7	# tmp297,
# segmented_sieve.c:106:         if (mem[i >> 4] & (1 << ((i >> 1) & 7))) {
	bt	r8d, eax	# *_150, tmp297
	jnc	.L302	#,
# segmented_sieve.c:108:             primes[idx].next_bit = (i * i) >> 1;
	mov	rsi, rdx	# tmp338, tmp200
# segmented_sieve.c:107:             primes[idx].p = i;
	mov	rcx, r11	# tmp341, idx
	vmovq	xmm6, rdx	# tmp200, tmp200
# segmented_sieve.c:109:             idx++;
	add	r11, 1	# idx,
# segmented_sieve.c:108:             primes[idx].next_bit = (i * i) >> 1;
	imul	rsi, rdx	# tmp338, tmp200
# segmented_sieve.c:107:             primes[idx].p = i;
	sal	rcx, 4	# tmp341,
# segmented_sieve.c:108:             primes[idx].next_bit = (i * i) >> 1;
	shr	rsi	# tmp339
# segmented_sieve.c:107:             primes[idx].p = i;
	vpinsrq	xmm7, xmm6, rsi, 1	# tmp340, tmp200, tmp339
	vmovdqu	XMMWORD PTR 0[rbp+rcx], xmm7	# MEM <vector(2) long unsigned int> [(long unsigned int *)_137], tmp340
.L302:
# segmented_sieve.c:105:     for (uint64_t i = 3; i <= limit; i += 2) {
	lea	r10, 2[rdx]	# i,
# segmented_sieve.c:106:         if (mem[i >> 4] & (1 << ((i >> 1) & 7))) {
	mov	rdi, r10	# tmp344, i
# segmented_sieve.c:106:         if (mem[i >> 4] & (1 << ((i >> 1) & 7))) {
	mov	r8, r10	# tmp346, i
# segmented_sieve.c:106:         if (mem[i >> 4] & (1 << ((i >> 1) & 7))) {
	shr	rdi, 4	# tmp344,
# segmented_sieve.c:106:         if (mem[i >> 4] & (1 << ((i >> 1) & 7))) {
	shr	r8	# tmp346
# segmented_sieve.c:106:         if (mem[i >> 4] & (1 << ((i >> 1) & 7))) {
	movzx	r9d, BYTE PTR [rbx+rdi]	# *_150, *_150
# segmented_sieve.c:106:         if (mem[i >> 4] & (1 << ((i >> 1) & 7))) {
	and	r8d, 7	# tmp347,
# segmented_sieve.c:106:         if (mem[i >> 4] & (1 << ((i >> 1) & 7))) {
	bt	r9d, r8d	# *_150, tmp347
	jnc	.L304	#,
# segmented_sieve.c:108:             primes[idx].next_bit = (i * i) >> 1;
	mov	rax, r10	# tmp350, i
# segmented_sieve.c:107:             primes[idx].p = i;
	mov	rsi, r11	# tmp353, idx
	vmovq	xmm0, r10	# i, i
# segmented_sieve.c:109:             idx++;
	add	r11, 1	# idx,
# segmented_sieve.c:108:             primes[idx].next_bit = (i * i) >> 1;
	imul	rax, r10	# tmp350, i
# segmented_sieve.c:107:             primes[idx].p = i;
	sal	rsi, 4	# tmp353,
# segmented_sieve.c:108:             primes[idx].next_bit = (i * i) >> 1;
	shr	rax	# tmp351
# segmented_sieve.c:107:             primes[idx].p = i;
	vpinsrq	xmm1, xmm0, rax, 1	# tmp352, i, tmp351
	vmovdqu	XMMWORD PTR 0[rbp+rsi], xmm1	# MEM <vector(2) long unsigned int> [(long unsigned int *)_137], tmp352
.L304:
# segmented_sieve.c:105:     for (uint64_t i = 3; i <= limit; i += 2) {
	lea	rcx, 4[rdx]	# i,
# segmented_sieve.c:106:         if (mem[i >> 4] & (1 << ((i >> 1) & 7))) {
	mov	r10, rcx	# tmp356, i
# segmented_sieve.c:106:         if (mem[i >> 4] & (1 << ((i >> 1) & 7))) {
	mov	r9, rcx	# tmp358, i
# segmented_sieve.c:106:         if (mem[i >> 4] & (1 << ((i >> 1) & 7))) {
	shr	r10, 4	# tmp356,
# segmented_sieve.c:106:         if (mem[i >> 4] & (1 << ((i >> 1) & 7))) {
	shr	r9	# tmp358
# segmented_sieve.c:106:         if (mem[i >> 4] & (1 << ((i >> 1) & 7))) {
	movzx	edi, BYTE PTR [rbx+r10]	# *_150, *_150
# segmented_sieve.c:106:         if (mem[i >> 4] & (1 << ((i >> 1) & 7))) {
	and	r9d, 7	# tmp359,
# segmented_sieve.c:106:         if (mem[i >> 4] & (1 << ((i >> 1) & 7))) {
	bt	edi, r9d	# *_150, tmp359
	jnc	.L306	#,
# segmented_sieve.c:108:             primes[idx].next_bit = (i * i) >> 1;
	mov	r8, rcx	# tmp362, i
# segmented_sieve.c:107:             primes[idx].p = i;
	mov	rax, r11	# tmp365, idx
	vmovq	xmm2, rcx	# i, i
# segmented_sieve.c:109:             idx++;
	add	r11, 1	# idx,
# segmented_sieve.c:108:             primes[idx].next_bit = (i * i) >> 1;
	imul	r8, rcx	# tmp362, i
# segmented_sieve.c:107:             primes[idx].p = i;
	sal	rax, 4	# tmp365,
# segmented_sieve.c:108:             primes[idx].next_bit = (i * i) >> 1;
	shr	r8	# tmp363
# segmented_sieve.c:107:             primes[idx].p = i;
	vpinsrq	xmm3, xmm2, r8, 1	# tmp364, i, tmp363
	vmovdqu	XMMWORD PTR 0[rbp+rax], xmm3	# MEM <vector(2) long unsigned int> [(long unsigned int *)_137], tmp364
.L306:
# segmented_sieve.c:105:     for (uint64_t i = 3; i <= limit; i += 2) {
	add	rdx, 6	# i,
# segmented_sieve.c:105:     for (uint64_t i = 3; i <= limit; i += 2) {
	cmp	r13, rdx	# limit, i
	jnb	.L279	#,
.L277:
# segmented_sieve.c:112:     *count = idx;
	mov	QWORD PTR [r12], r11	# *count_72(D), idx
# segmented_sieve.c:113:     free(mem);
	mov	rdi, rbx	#, mem
	call	free@PLT	#
# segmented_sieve.c:115: }
	add	rsp, 8	#,
	.cfi_remember_state
	.cfi_def_cfa_offset 40
	mov	rax, rbp	#, <retval>
	pop	rbx	#
	.cfi_def_cfa_offset 32
	pop	rbp	#
	.cfi_def_cfa_offset 24
	pop	r12	#
	.cfi_def_cfa_offset 16
	pop	r13	#
	.cfi_def_cfa_offset 8
	ret	
	.p2align 4,,10
	.p2align 3
.L264:
	.cfi_restore_state
# segmented_sieve.c:91:     uint64_t i_limit = sqrt(limit);
	vsubsd	xmm3, xmm0, xmm2	# tmp156, _5, tmp155
	vcvttsd2si	rdi, xmm3	# i_limit, tmp156
	btc	rdi, 63	# i_limit,
	jmp	.L265	#
	.p2align 4,,10
	.p2align 3
.L381:
# segmented_sieve.c:107:             primes[idx].p = i;
	mov	eax, 3	# i,
	mov	esi, 4	# tmp301,
# segmented_sieve.c:109:             idx++;
	mov	r11d, 1	# idx,
# segmented_sieve.c:107:             primes[idx].p = i;
	vmovq	xmm4, rax	# i, i
	vpinsrq	xmm5, xmm4, rsi, 1	# tmp302, i, tmp301
	vmovdqu	XMMWORD PTR 0[rbp], xmm5	# MEM <vector(2) long unsigned int> [(long unsigned int *)_137], tmp302
	jmp	.L291	#
	.p2align 4,,10
	.p2align 3
.L259:
# segmented_sieve.c:91:     uint64_t i_limit = sqrt(limit);
	mov	rax, r13	# tmp152, limit
	mov	rdx, r13	# tmp153, limit
	vxorpd	xmm7, xmm7, xmm7	# tmp435
	shr	rax	# tmp152
	and	edx, 1	# tmp153,
	or	rax, rdx	# tmp209, tmp153
	vcvtsi2sd	xmm0, xmm7, rax	# tmp428, tmp435, tmp209
	vaddsd	xmm0, xmm0, xmm0	# _4, tmp151, tmp151
	jmp	.L260	#
	.p2align 4,,10
	.p2align 3
.L374:
	lea	r11, mask[rip]	# tmp211,
	.p2align 4,,10
	.p2align 3
.L271:
# segmented_sieve.c:95:                 mem[j >> 3] &= mask[j & 7];
	mov	rdx, rbp	# tmp165, j
# segmented_sieve.c:95:                 mem[j >> 3] &= mask[j & 7];
	mov	rcx, rbp	# tmp167, j
# segmented_sieve.c:94:             for (uint64_t j = (i * i) >> 1; j < (limit >> 1) + 1; j += i) {
	add	rbp, rax	# j, i
# segmented_sieve.c:95:                 mem[j >> 3] &= mask[j & 7];
	shr	rdx, 3	# tmp165,
# segmented_sieve.c:95:                 mem[j >> 3] &= mask[j & 7];
	and	ecx, 7	# tmp167,
# segmented_sieve.c:95:                 mem[j >> 3] &= mask[j & 7];
	movzx	r10d, BYTE PTR [r11+rcx]	# mask[_19], mask[_19]
	and	BYTE PTR [rbx+rdx], r10b	# *_17, mask[_19]
# segmented_sieve.c:94:             for (uint64_t j = (i * i) >> 1; j < (limit >> 1) + 1; j += i) {
	cmp	rbp, r8	# j, _98
	jb	.L271	#,
	jmp	.L269	#
.L273:
# segmented_sieve.c:103:     PrimeState *primes = (PrimeState *) malloc(sizeof(PrimeState) * c);
	xor	edi, edi	#
	call	malloc@PLT	#
# segmented_sieve.c:104:     size_t idx = 0;
	xor	r11d, r11d	# idx
# segmented_sieve.c:103:     PrimeState *primes = (PrimeState *) malloc(sizeof(PrimeState) * c);
	mov	rbp, rax	# <retval>, tmp424
	jmp	.L277	#
.L373:
# segmented_sieve.c:91:     uint64_t i_limit = sqrt(limit);
	call	sqrt@PLT	#
	jmp	.L263	#
	.cfi_endproc
.LFE6495:
	.size	GetBasePrimes, .-GetBasePrimes
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC4:
	.string	"Usage: %s max\n"
.LC5:
	.string	""
.LC6:
	.string	"Creating %i threads...\n"
.LC8:
	.string	"Time = %0.5f seconds\n"
.LC9:
	.string	"Total primes: %'lu in %'lu\n"
	.section	.text.startup,"ax",@progbits
	.p2align 4
	.globl	main
	.type	main, @function
main:
.LFB6497:
	.cfi_startproc
	endbr64	
	push	rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp	#,
	.cfi_def_cfa_register 6
	push	r15	#
	push	r14	#
	push	r13	#
	push	r12	#
	push	rbx	#
	sub	rsp, 120	#,
	.cfi_offset 15, -24
	.cfi_offset 14, -32
	.cfi_offset 13, -40
	.cfi_offset 12, -48
	.cfi_offset 3, -56
# segmented_sieve.c:205: int main(int argc, char *argv[]) {
	mov	rax, QWORD PTR fs:40	# tmp319, MEM[(<address-space-1> long unsigned int *)40B]
	mov	QWORD PTR -56[rbp], rax	# D.45733, tmp319
	xor	eax, eax	# tmp319
# segmented_sieve.c:206:     if (argc < 2) { printf("Usage: %s max\n", argv[0]); return 1; }
	cmp	edi, 1	# tmp308,
	jle	.L452	#,
# segmented_sieve.c:208:     uint64_t max_num = input_max = strtoull(argv[1], NULL, 0);
	mov	rdi, QWORD PTR 8[rsi]	# MEM[(char * *)argv_43(D) + 8B], MEM[(char * *)argv_43(D) + 8B]
	xor	edx, edx	#
	xor	esi, esi	#
# segmented_sieve.c:219:     int num_threads = (nprocs < 1) ? 8 : (int)nprocs;
	mov	ebx, 8	# tmp229,
# segmented_sieve.c:208:     uint64_t max_num = input_max = strtoull(argv[1], NULL, 0);
	call	__isoc23_strtoull@PLT	#
# segmented_sieve.c:213:     clock_gettime(CLOCK_REALTIME, &begin);
	lea	rsi, -96[rbp]	# tmp146,
# segmented_sieve.c:208:     uint64_t max_num = input_max = strtoull(argv[1], NULL, 0);
	mov	QWORD PTR -152[rbp], rax	# %sfp, input_max
	mov	r12, rax	# input_max, tmp310
# segmented_sieve.c:209:     if (!(max_num & 1)) max_num--;
	and	eax, 1	# tmp145,
# segmented_sieve.c:209:     if (!(max_num & 1)) max_num--;
	cmp	rax, 1	# tmp145,
	sbb	r12, 0	# max_num,
# segmented_sieve.c:213:     clock_gettime(CLOCK_REALTIME, &begin);
	xor	edi, edi	#
# segmented_sieve.c:209:     if (!(max_num & 1)) max_num--;
	mov	QWORD PTR -104[rbp], r12	# %sfp, max_num
# segmented_sieve.c:210:     uint64_t total_bits = (max_num >> 1) + 1;
	shr	r12	# _4
# segmented_sieve.c:213:     clock_gettime(CLOCK_REALTIME, &begin);
	call	clock_gettime@PLT	#
# segmented_sieve.c:215:     setlocale(LC_ALL, "");
	mov	edi, 6	#,
# segmented_sieve.c:210:     uint64_t total_bits = (max_num >> 1) + 1;
	lea	r13, 1[r12]	# total_bits,
# segmented_sieve.c:215:     setlocale(LC_ALL, "");
	lea	rsi, .LC5[rip]	# tmp147,
	call	setlocale@PLT	#
# segmented_sieve.c:216:     init_avx_pattern();
	xor	eax, eax	#
	call	init_avx_pattern	#
# segmented_sieve.c:218:     long nprocs = sysconf(_SC_NPROCESSORS_ONLN);
	mov	edi, 84	#,
	call	sysconf@PLT	#
# /usr/include/x86_64-linux-gnu/bits/stdio2.h:86:   return __printf_chk (__USE_FORTIFY_LEVEL - 1, __fmt, __va_arg_pack ());
	lea	rsi, .LC6[rip]	# tmp148,
	mov	edi, 2	#,
# segmented_sieve.c:219:     int num_threads = (nprocs < 1) ? 8 : (int)nprocs;
	test	rax, rax	# nprocs
	cmovg	rbx, rax	# nprocs,, tmp229
# /usr/include/x86_64-linux-gnu/bits/stdio2.h:86:   return __printf_chk (__USE_FORTIFY_LEVEL - 1, __fmt, __va_arg_pack ());
	xor	eax, eax	#
	mov	edx, ebx	#, iftmp.5_33
# segmented_sieve.c:222:     pthread_t threads[num_threads];
	movsx	r15, ebx	# _5, nprocs
	mov	r14d, ebx	# iftmp.5_33, nprocs
# /usr/include/x86_64-linux-gnu/bits/stdio2.h:86:   return __printf_chk (__USE_FORTIFY_LEVEL - 1, __fmt, __va_arg_pack ());
	call	__printf_chk@PLT	#
# segmented_sieve.c:222:     pthread_t threads[num_threads];
	lea	rsi, 15[0+r15*8]	# tmp151,
	mov	rcx, rsp	# tmp158,
	mov	rdx, rsi	# tmp155, tmp151
	and	rsi, -4096	# tmp157,
	and	rdx, -16	# tmp155,
	sub	rcx, rsi	# tmp158, tmp157
.L387:
	cmp	rsp, rcx	#, tmp158
	je	.L388	#,
	sub	rsp, 4096	#,
	or	QWORD PTR 4088[rsp], 0	#,
	jmp	.L387	#
.L452:
# /usr/include/x86_64-linux-gnu/bits/stdio2.h:86:   return __printf_chk (__USE_FORTIFY_LEVEL - 1, __fmt, __va_arg_pack ());
	mov	rdx, QWORD PTR [rsi]	#, *argv_43(D)
	mov	edi, 2	#,
	lea	rsi, .LC4[rip]	# tmp143,
	call	__printf_chk@PLT	#
# segmented_sieve.c:206:     if (argc < 2) { printf("Usage: %s max\n", argv[0]); return 1; }
	mov	eax, 1	# <retval>,
.L382:
# segmented_sieve.c:250: }
	mov	rdx, QWORD PTR -56[rbp]	# tmp321, D.45733
	sub	rdx, QWORD PTR fs:40	# tmp321, MEM[(<address-space-1> long unsigned int *)40B]
	jne	.L453	#,
	lea	rsp, -40[rbp]	#,
	pop	rbx	#
	pop	r12	#
	pop	r13	#
	pop	r14	#
	pop	r15	#
	pop	rbp	#
	.cfi_remember_state
	.cfi_def_cfa 7, 8
	ret	
.L388:
	.cfi_restore_state
# segmented_sieve.c:222:     pthread_t threads[num_threads];
	and	edx, 4095	# tmp159,
	sub	rsp, rdx	#, tmp159
	test	rdx, rdx	# tmp159
	jne	.L454	#,
.L389:
# segmented_sieve.c:223:     ThreadData data[num_threads];
	mov	rdi, r15	# tmp173, _5
# segmented_sieve.c:222:     pthread_t threads[num_threads];
	mov	QWORD PTR -128[rbp], rsp	# %sfp,
# segmented_sieve.c:223:     ThreadData data[num_threads];
	mov	r9, rsp	# tmp176,
	sal	rdi, 5	# tmp173,
	mov	r8, rdi	# tmp175, tmp173
	and	r8, -4096	# tmp175,
	sub	r9, r8	# tmp176, tmp175
.L390:
	cmp	rsp, r9	#, tmp176
	je	.L391	#,
	sub	rsp, 4096	#,
	or	QWORD PTR 4088[rsp], 0	#,
	jmp	.L390	#
.L454:
# segmented_sieve.c:222:     pthread_t threads[num_threads];
	or	QWORD PTR -8[rsp+rdx], 0	#,
	jmp	.L389	#
.L391:
# segmented_sieve.c:223:     ThreadData data[num_threads];
	and	edi, 4095	# tmp177,
	sub	rsp, rdi	#, tmp177
	test	rdi, rdi	# tmp177
	jne	.L455	#,
.L392:
# segmented_sieve.c:224:     PrimeState *base_primes = GetBasePrimes(sqrt(max_num), &prime_count);
	mov	r10, QWORD PTR -104[rbp]	# max_num, %sfp
# segmented_sieve.c:223:     ThreadData data[num_threads];
	mov	QWORD PTR -136[rbp], rsp	# %sfp,
# segmented_sieve.c:224:     PrimeState *base_primes = GetBasePrimes(sqrt(max_num), &prime_count);
	test	r10, r10	# max_num
	js	.L393	#,
	vxorpd	xmm3, xmm3, xmm3	# tmp361
	vcvtsi2sd	xmm0, xmm3, r10	# tmp315, tmp361, max_num
.L394:
	vxorpd	xmm1, xmm1, xmm1	# tmp188
	vucomisd	xmm1, xmm0	# tmp188, _9
	ja	.L445	#,
	vsqrtsd	xmm0, xmm0, xmm0	# _10, _9
.L397:
# segmented_sieve.c:224:     PrimeState *base_primes = GetBasePrimes(sqrt(max_num), &prime_count);
	vmovsd	xmm2, QWORD PTR .LC1[rip]	# tmp190,
	vcomisd	xmm0, xmm2	# _10, tmp190
	jnb	.L398	#,
	vcvttsd2si	rdi, xmm0	# tmp189, _10
.L399:
	lea	rsi, prime_count[rip]	# tmp194,
# segmented_sieve.c:226:     uint64_t total_blocks = (total_bits + BLOCK_BITS - 1) / BLOCK_BITS;
	lea	r12, 262080[r12]	# tmp195,
# segmented_sieve.c:224:     PrimeState *base_primes = GetBasePrimes(sqrt(max_num), &prime_count);
	call	GetBasePrimes	#
# segmented_sieve.c:226:     uint64_t total_blocks = (total_bits + BLOCK_BITS - 1) / BLOCK_BITS;
	shr	r12, 6	# tmp195,
# segmented_sieve.c:224:     PrimeState *base_primes = GetBasePrimes(sqrt(max_num), &prime_count);
	mov	QWORD PTR -104[rbp], rax	# %sfp, tmp313
# segmented_sieve.c:226:     uint64_t total_blocks = (total_bits + BLOCK_BITS - 1) / BLOCK_BITS;
	movabs	rax, 288300762079953921	# tmp197,
	mul	r12	# tmp197
	mov	rax, rdx	# tmp198, tmp198
# segmented_sieve.c:227:     uint64_t blocks_per_thread = total_blocks / num_threads;
	xor	edx, edx	# tmp201
# segmented_sieve.c:226:     uint64_t total_blocks = (total_bits + BLOCK_BITS - 1) / BLOCK_BITS;
	shr	rax, 6	# tmp198,
# segmented_sieve.c:227:     uint64_t blocks_per_thread = total_blocks / num_threads;
	div	r15	# _5
# segmented_sieve.c:229:     for (int i = 0; i < num_threads; i++) {
	test	r14d, r14d	# iftmp.5_33
	jle	.L407	#,
	lea	r11d, -1[rbx]	# _137,
	mov	r8, QWORD PTR -128[rbp]	# tmp166, %sfp
# segmented_sieve.c:231:         data[i].end_bit = (i == num_threads - 1) ? total_bits : (i + 1) * blocks_per_thread * BLOCK_BITS;
	lea	r14d, -1[r14]	# _119,
	xor	r9d, r9d	# ivtmp.187
	imul	r12, rax, 262080	# _73, tmp200,
	mov	QWORD PTR -144[rbp], r11	# %sfp, _137
	and	r11d, 3	# tmp238,
	mov	r15, QWORD PTR -136[rbp]	# ivtmp.190, %sfp
	mov	DWORD PTR -108[rbp], r14d	# %sfp, _119
	mov	r14, r8	# ivtmp.181, tmp166
	mov	rbx, r12	# ivtmp.193, _73
	je	.L450	#,
# segmented_sieve.c:232:         if (data[i].end_bit > total_bits) data[i].end_bit = total_bits;
	cmp	r12, r13	# _73, total_bits
	mov	r15, r13	# tmp297, total_bits
# segmented_sieve.c:233:         data[i].base_primes = base_primes;
	mov	rdi, QWORD PTR -104[rbp]	# base_primes, %sfp
	mov	QWORD PTR -120[rbp], r11	# %sfp, tmp238
# segmented_sieve.c:232:         if (data[i].end_bit > total_bits) data[i].end_bit = total_bits;
	cmovbe	r15, r12	# _73,, tmp297
	cmp	DWORD PTR -108[rbp], 0	# %sfp,
# segmented_sieve.c:230:         data[i].start_bit = i * blocks_per_thread * BLOCK_BITS;
	mov	rbx, QWORD PTR -136[rbp]	# tmp184, %sfp
# segmented_sieve.c:234:         pthread_create(&threads[i], NULL, SieveRange, &data[i]);
	lea	rdx, SieveRange[rip]	#,
# segmented_sieve.c:232:         if (data[i].end_bit > total_bits) data[i].end_bit = total_bits;
	cmove	r15, r13	# tmp297,, _122, total_bits
# segmented_sieve.c:230:         data[i].start_bit = i * blocks_per_thread * BLOCK_BITS;
	xor	esi, esi	#
# segmented_sieve.c:233:         data[i].base_primes = base_primes;
	mov	QWORD PTR 16[rbx], rdi	# MEM[(struct PrimeState * *)_129 + 16B], base_primes
# segmented_sieve.c:234:         pthread_create(&threads[i], NULL, SieveRange, &data[i]);
	mov	rdi, QWORD PTR -128[rbp]	#, %sfp
# segmented_sieve.c:230:         data[i].start_bit = i * blocks_per_thread * BLOCK_BITS;
	mov	QWORD PTR [rbx], rsi	# MEM[(long unsigned int *)_129],
	mov	rcx, rbx	# tmp184, tmp184
# segmented_sieve.c:234:         pthread_create(&threads[i], NULL, SieveRange, &data[i]);
	xor	esi, esi	#
# segmented_sieve.c:231:         data[i].end_bit = (i == num_threads - 1) ? total_bits : (i + 1) * blocks_per_thread * BLOCK_BITS;
	mov	QWORD PTR 8[rbx], r15	# MEM[(long unsigned int *)_129 + 8B], _122
# segmented_sieve.c:229:     for (int i = 0; i < num_threads; i++) {
	lea	r15, 32[rbx]	# ivtmp.190,
# segmented_sieve.c:234:         pthread_create(&threads[i], NULL, SieveRange, &data[i]);
	call	pthread_create@PLT	#
	mov	r10, QWORD PTR -120[rbp]	# tmp238, %sfp
# segmented_sieve.c:229:     for (int i = 0; i < num_threads; i++) {
	mov	rcx, QWORD PTR -128[rbp]	# tmp166, %sfp
	mov	QWORD PTR -136[rbp], rbx	# %sfp, tmp184
	mov	r9d, 1	# ivtmp.187,
	lea	rbx, [r12+r12]	# ivtmp.193,
	cmp	r10, 1	# tmp238,
	lea	r8, 8[rcx]	# ivtmp.191,
	je	.L450	#,
	cmp	r10, 2	# tmp238,
	je	.L436	#,
	mov	r9, rbx	# _6, ivtmp.193
# segmented_sieve.c:232:         if (data[i].end_bit > total_bits) data[i].end_bit = total_bits;
	mov	rax, r13	# tmp301, total_bits
# segmented_sieve.c:233:         data[i].base_primes = base_primes;
	mov	rdx, QWORD PTR -104[rbp]	# base_primes, %sfp
# segmented_sieve.c:234:         pthread_create(&threads[i], NULL, SieveRange, &data[i]);
	mov	rcx, r15	#, ivtmp.190
	sub	r9, r12	# _6, _73
# segmented_sieve.c:232:         if (data[i].end_bit > total_bits) data[i].end_bit = total_bits;
	cmp	rbx, r13	# ivtmp.193, total_bits
# segmented_sieve.c:234:         pthread_create(&threads[i], NULL, SieveRange, &data[i]);
	mov	rdi, r8	#, ivtmp.191
# segmented_sieve.c:232:         if (data[i].end_bit > total_bits) data[i].end_bit = total_bits;
	cmovbe	rax, rbx	# ivtmp.193,, tmp301
	cmp	DWORD PTR -108[rbp], 1	# %sfp,
# segmented_sieve.c:230:         data[i].start_bit = i * blocks_per_thread * BLOCK_BITS;
	mov	QWORD PTR [r15], r9	# MEM[(long unsigned int *)_129], _6
# segmented_sieve.c:233:         data[i].base_primes = base_primes;
	mov	QWORD PTR 16[r15], rdx	# MEM[(struct PrimeState * *)_129 + 16B], base_primes
# segmented_sieve.c:234:         pthread_create(&threads[i], NULL, SieveRange, &data[i]);
	lea	rdx, SieveRange[rip]	#,
# segmented_sieve.c:232:         if (data[i].end_bit > total_bits) data[i].end_bit = total_bits;
	cmove	rax, r13	# tmp301,, _122, total_bits
# segmented_sieve.c:234:         pthread_create(&threads[i], NULL, SieveRange, &data[i]);
	xor	esi, esi	#
# segmented_sieve.c:229:     for (int i = 0; i < num_threads; i++) {
	add	rbx, r12	# ivtmp.193, _73
# segmented_sieve.c:231:         data[i].end_bit = (i == num_threads - 1) ? total_bits : (i + 1) * blocks_per_thread * BLOCK_BITS;
	mov	QWORD PTR 8[r15], rax	# MEM[(long unsigned int *)_129 + 8B], _122
# segmented_sieve.c:234:         pthread_create(&threads[i], NULL, SieveRange, &data[i]);
	call	pthread_create@PLT	#
# segmented_sieve.c:229:     for (int i = 0; i < num_threads; i++) {
	mov	r8, QWORD PTR -136[rbp]	# tmp184, %sfp
	mov	r11, QWORD PTR -128[rbp]	# tmp166, %sfp
	mov	r9d, 2	# ivtmp.187,
	lea	r15, 64[r8]	# ivtmp.190,
	lea	r8, 16[r11]	# ivtmp.191,
.L436:
	mov	rsi, rbx	# _6, ivtmp.193
# segmented_sieve.c:232:         if (data[i].end_bit > total_bits) data[i].end_bit = total_bits;
	mov	rdi, r13	# tmp305, total_bits
# segmented_sieve.c:233:         data[i].base_primes = base_primes;
	mov	rcx, QWORD PTR -104[rbp]	# base_primes, %sfp
# segmented_sieve.c:234:         pthread_create(&threads[i], NULL, SieveRange, &data[i]);
	mov	QWORD PTR -120[rbp], r8	# %sfp, ivtmp.191
	sub	rsi, r12	# _6, _73
# segmented_sieve.c:232:         if (data[i].end_bit > total_bits) data[i].end_bit = total_bits;
	cmp	rbx, r13	# ivtmp.193, total_bits
# segmented_sieve.c:234:         pthread_create(&threads[i], NULL, SieveRange, &data[i]);
	lea	rdx, SieveRange[rip]	#,
# segmented_sieve.c:232:         if (data[i].end_bit > total_bits) data[i].end_bit = total_bits;
	mov	QWORD PTR -160[rbp], r9	# %sfp, ivtmp.187
	cmovbe	rdi, rbx	# ivtmp.193,, tmp305
	cmp	DWORD PTR -108[rbp], r9d	# %sfp, ivtmp.187
# segmented_sieve.c:230:         data[i].start_bit = i * blocks_per_thread * BLOCK_BITS;
	mov	QWORD PTR [r15], rsi	# MEM[(long unsigned int *)_129], _6
# segmented_sieve.c:233:         data[i].base_primes = base_primes;
	mov	QWORD PTR 16[r15], rcx	# MEM[(struct PrimeState * *)_129 + 16B], base_primes
# segmented_sieve.c:234:         pthread_create(&threads[i], NULL, SieveRange, &data[i]);
	mov	rcx, r15	#, ivtmp.190
# segmented_sieve.c:232:         if (data[i].end_bit > total_bits) data[i].end_bit = total_bits;
	cmove	rdi, r13	# tmp305,, _122, total_bits
# segmented_sieve.c:234:         pthread_create(&threads[i], NULL, SieveRange, &data[i]);
	xor	esi, esi	#
# segmented_sieve.c:229:     for (int i = 0; i < num_threads; i++) {
	add	r15, 32	# ivtmp.190,
	add	rbx, r12	# ivtmp.193, _73
# segmented_sieve.c:231:         data[i].end_bit = (i == num_threads - 1) ? total_bits : (i + 1) * blocks_per_thread * BLOCK_BITS;
	mov	QWORD PTR -24[r15], rdi	# MEM[(long unsigned int *)_129 + 8B], _122
# segmented_sieve.c:234:         pthread_create(&threads[i], NULL, SieveRange, &data[i]);
	mov	rdi, r8	#, ivtmp.191
	call	pthread_create@PLT	#
# segmented_sieve.c:229:     for (int i = 0; i < num_threads; i++) {
	mov	r8, QWORD PTR -120[rbp]	# ivtmp.191, %sfp
	mov	r9, QWORD PTR -160[rbp]	# ivtmp.187, %sfp
	add	r8, 8	# ivtmp.191,
	add	r9, 1	# ivtmp.187,
.L450:
	mov	r10, r12	# _73, _73
	mov	QWORD PTR -160[rbp], r14	# %sfp, ivtmp.181
	mov	r11, rbx	# ivtmp.193, ivtmp.193
	mov	r12, r8	# ivtmp.191, ivtmp.191
	mov	rbx, r15	# ivtmp.190, ivtmp.190
	mov	r14, r9	# ivtmp.187, ivtmp.187
	mov	r15, r13	# total_bits, total_bits
	mov	r13, r10	# _73, _73
	jmp	.L402	#
	.p2align 4,,10
	.p2align 3
.L409:
	mov	r10, r8	# _6, ivtmp.193
# segmented_sieve.c:232:         if (data[i].end_bit > total_bits) data[i].end_bit = total_bits;
	mov	r11, r15	# tmp227, total_bits
# segmented_sieve.c:234:         pthread_create(&threads[i], NULL, SieveRange, &data[i]);
	lea	rdx, SieveRange[rip]	#,
# segmented_sieve.c:232:         if (data[i].end_bit > total_bits) data[i].end_bit = total_bits;
	mov	QWORD PTR -120[rbp], r8	# %sfp, ivtmp.193
	sub	r10, r13	# _6, _73
	cmp	r8, r15	# ivtmp.193, total_bits
	cmovbe	r11, r8	# ivtmp.193,, tmp227
	cmp	DWORD PTR -108[rbp], r9d	# %sfp, ivtmp.187
# segmented_sieve.c:233:         data[i].base_primes = base_primes;
	mov	r9, QWORD PTR -104[rbp]	# base_primes, %sfp
# segmented_sieve.c:230:         data[i].start_bit = i * blocks_per_thread * BLOCK_BITS;
	mov	QWORD PTR 32[rbx], r10	# MEM[(long unsigned int *)_129], _6
# segmented_sieve.c:232:         if (data[i].end_bit > total_bits) data[i].end_bit = total_bits;
	cmove	r11, r15	# tmp227,, _122, total_bits
# segmented_sieve.c:233:         data[i].base_primes = base_primes;
	mov	QWORD PTR 16[rcx], r9	# MEM[(struct PrimeState * *)_129 + 16B], base_primes
# segmented_sieve.c:234:         pthread_create(&threads[i], NULL, SieveRange, &data[i]);
	xor	esi, esi	#
# segmented_sieve.c:231:         data[i].end_bit = (i == num_threads - 1) ? total_bits : (i + 1) * blocks_per_thread * BLOCK_BITS;
	mov	QWORD PTR 8[rcx], r11	# MEM[(long unsigned int *)_129 + 8B], _122
# segmented_sieve.c:234:         pthread_create(&threads[i], NULL, SieveRange, &data[i]);
	call	pthread_create@PLT	#
# segmented_sieve.c:229:     for (int i = 0; i < num_threads; i++) {
	mov	r8, QWORD PTR -120[rbp]	# ivtmp.193, %sfp
# segmented_sieve.c:232:         if (data[i].end_bit > total_bits) data[i].end_bit = total_bits;
	mov	rsi, r15	# tmp255, total_bits
	lea	rdx, 2[r14]	# ivtmp.187,
# segmented_sieve.c:233:         data[i].base_primes = base_primes;
	mov	r10, QWORD PTR -104[rbp]	# base_primes, %sfp
# segmented_sieve.c:229:     for (int i = 0; i < num_threads; i++) {
	lea	rcx, 64[rbx]	# ivtmp.190,
	lea	rdi, 16[r12]	# ivtmp.191,
	lea	rax, [r8+r13]	# ivtmp.193,
# segmented_sieve.c:230:         data[i].start_bit = i * blocks_per_thread * BLOCK_BITS;
	mov	QWORD PTR 64[rbx], r8	# MEM[(long unsigned int *)_129], ivtmp.193
# segmented_sieve.c:232:         if (data[i].end_bit > total_bits) data[i].end_bit = total_bits;
	cmp	rax, r15	# ivtmp.193, total_bits
# segmented_sieve.c:233:         data[i].base_primes = base_primes;
	mov	QWORD PTR 16[rcx], r10	# MEM[(struct PrimeState * *)_129 + 16B], base_primes
# segmented_sieve.c:232:         if (data[i].end_bit > total_bits) data[i].end_bit = total_bits;
	cmovbe	rsi, rax	# ivtmp.193,, tmp255
	cmp	DWORD PTR -108[rbp], edx	# %sfp, ivtmp.187
# segmented_sieve.c:234:         pthread_create(&threads[i], NULL, SieveRange, &data[i]);
	lea	rdx, SieveRange[rip]	#,
# segmented_sieve.c:232:         if (data[i].end_bit > total_bits) data[i].end_bit = total_bits;
	mov	QWORD PTR -120[rbp], rax	# %sfp, ivtmp.193
	cmove	rsi, r15	# tmp255,, _122, total_bits
# segmented_sieve.c:231:         data[i].end_bit = (i == num_threads - 1) ? total_bits : (i + 1) * blocks_per_thread * BLOCK_BITS;
	mov	QWORD PTR 8[rcx], rsi	# MEM[(long unsigned int *)_129 + 8B], _122
# segmented_sieve.c:234:         pthread_create(&threads[i], NULL, SieveRange, &data[i]);
	xor	esi, esi	#
	call	pthread_create@PLT	#
# segmented_sieve.c:229:     for (int i = 0; i < num_threads; i++) {
	mov	r11, QWORD PTR -120[rbp]	# ivtmp.193, %sfp
# segmented_sieve.c:232:         if (data[i].end_bit > total_bits) data[i].end_bit = total_bits;
	mov	rax, r15	# tmp263, total_bits
	lea	r8, 3[r14]	# ivtmp.187,
# segmented_sieve.c:233:         data[i].base_primes = base_primes;
	mov	rdx, QWORD PTR -104[rbp]	# base_primes, %sfp
# segmented_sieve.c:229:     for (int i = 0; i < num_threads; i++) {
	lea	rcx, 96[rbx]	# ivtmp.190,
	lea	rdi, 24[r12]	# ivtmp.191,
	lea	r9, [r11+r13]	# ivtmp.193,
# segmented_sieve.c:230:         data[i].start_bit = i * blocks_per_thread * BLOCK_BITS;
	mov	QWORD PTR 96[rbx], r11	# MEM[(long unsigned int *)_129], ivtmp.193
# segmented_sieve.c:232:         if (data[i].end_bit > total_bits) data[i].end_bit = total_bits;
	cmp	r9, r15	# ivtmp.193, total_bits
# segmented_sieve.c:233:         data[i].base_primes = base_primes;
	mov	QWORD PTR 16[rcx], rdx	# MEM[(struct PrimeState * *)_129 + 16B], base_primes
# segmented_sieve.c:234:         pthread_create(&threads[i], NULL, SieveRange, &data[i]);
	lea	rdx, SieveRange[rip]	#,
# segmented_sieve.c:232:         if (data[i].end_bit > total_bits) data[i].end_bit = total_bits;
	cmovbe	rax, r9	# ivtmp.193,, tmp263
	cmp	DWORD PTR -108[rbp], r8d	# %sfp, ivtmp.187
	mov	QWORD PTR -120[rbp], r9	# %sfp, ivtmp.193
	cmove	rax, r15	# tmp263,, _122, total_bits
# segmented_sieve.c:234:         pthread_create(&threads[i], NULL, SieveRange, &data[i]);
	xor	esi, esi	#
# segmented_sieve.c:229:     for (int i = 0; i < num_threads; i++) {
	sub	rbx, -128	# ivtmp.190,
	add	r12, 32	# ivtmp.191,
	add	r14, 4	# ivtmp.187,
# segmented_sieve.c:231:         data[i].end_bit = (i == num_threads - 1) ? total_bits : (i + 1) * blocks_per_thread * BLOCK_BITS;
	mov	QWORD PTR 8[rcx], rax	# MEM[(long unsigned int *)_129 + 8B], _122
# segmented_sieve.c:234:         pthread_create(&threads[i], NULL, SieveRange, &data[i]);
	call	pthread_create@PLT	#
# segmented_sieve.c:229:     for (int i = 0; i < num_threads; i++) {
	mov	r11, QWORD PTR -120[rbp]	# ivtmp.193, %sfp
	add	r11, r13	# ivtmp.193, _73
.L402:
	mov	rdx, r11	# _6, ivtmp.193
# segmented_sieve.c:232:         if (data[i].end_bit > total_bits) data[i].end_bit = total_bits;
	mov	rax, r15	# tmp267, total_bits
# segmented_sieve.c:233:         data[i].base_primes = base_primes;
	mov	rsi, QWORD PTR -104[rbp]	# base_primes, %sfp
# segmented_sieve.c:234:         pthread_create(&threads[i], NULL, SieveRange, &data[i]);
	mov	rcx, rbx	#, ivtmp.190
	sub	rdx, r13	# _6, _73
# segmented_sieve.c:232:         if (data[i].end_bit > total_bits) data[i].end_bit = total_bits;
	cmp	r11, r15	# ivtmp.193, total_bits
# segmented_sieve.c:234:         pthread_create(&threads[i], NULL, SieveRange, &data[i]);
	mov	rdi, r12	#, ivtmp.191
# segmented_sieve.c:232:         if (data[i].end_bit > total_bits) data[i].end_bit = total_bits;
	mov	QWORD PTR -120[rbp], r11	# %sfp, ivtmp.193
	cmovbe	rax, r11	# ivtmp.193,, tmp267
	cmp	DWORD PTR -108[rbp], r14d	# %sfp, ivtmp.187
# segmented_sieve.c:230:         data[i].start_bit = i * blocks_per_thread * BLOCK_BITS;
	mov	QWORD PTR [rbx], rdx	# MEM[(long unsigned int *)_129], _6
# segmented_sieve.c:234:         pthread_create(&threads[i], NULL, SieveRange, &data[i]);
	lea	rdx, SieveRange[rip]	#,
# segmented_sieve.c:233:         data[i].base_primes = base_primes;
	mov	QWORD PTR 16[rbx], rsi	# MEM[(struct PrimeState * *)_129 + 16B], base_primes
# segmented_sieve.c:232:         if (data[i].end_bit > total_bits) data[i].end_bit = total_bits;
	cmove	rax, r15	# tmp267,, _122, total_bits
# segmented_sieve.c:234:         pthread_create(&threads[i], NULL, SieveRange, &data[i]);
	xor	esi, esi	#
# segmented_sieve.c:231:         data[i].end_bit = (i == num_threads - 1) ? total_bits : (i + 1) * blocks_per_thread * BLOCK_BITS;
	mov	QWORD PTR 8[rbx], rax	# MEM[(long unsigned int *)_129 + 8B], _122
# segmented_sieve.c:234:         pthread_create(&threads[i], NULL, SieveRange, &data[i]);
	call	pthread_create@PLT	#
# segmented_sieve.c:229:     for (int i = 0; i < num_threads; i++) {
	mov	r8, QWORD PTR -120[rbp]	# ivtmp.193, %sfp
	mov	r10, QWORD PTR -144[rbp]	# _137, %sfp
	lea	r9, 1[r14]	# ivtmp.187,
	lea	rcx, 32[rbx]	# tmp239,
	lea	rdi, 8[r12]	# tmp240,
	add	r8, r13	# ivtmp.193, _73
	cmp	r14, r10	# ivtmp.187, _137
	jne	.L409	#,
	mov	r11, QWORD PTR -128[rbp]	# tmp166, %sfp
	mov	rcx, r14	# ivtmp.187, ivtmp.187
# segmented_sieve.c:237:     uint64_t total_primes = 1; // Count 2
	mov	ebx, 1	# total_primes,
	mov	rdi, QWORD PTR -136[rbp]	# tmp184, %sfp
	mov	r14, QWORD PTR -160[rbp]	# ivtmp.181, %sfp
	lea	r15, 8[r11]	# tmp204,
	lea	r13, 24[rdi]	# ivtmp.182,
	lea	r12, [r15+rcx*8]	# _125,
	mov	rdx, r12	# tmp231, _125
	sub	rdx, r11	# tmp231, tmp166
	sub	rdx, 8	# tmp232,
	shr	rdx, 3	# tmp230,
	add	rdx, 1	# tmp233,
	and	edx, 3	# tmp234,
	je	.L403	#,
	cmp	rdx, 1	# tmp234,
	je	.L434	#,
	cmp	rdx, 2	# tmp234,
	je	.L435	#,
# segmented_sieve.c:239:         pthread_join(threads[i], NULL);
	mov	rbx, QWORD PTR -128[rbp]	# tmp166, %sfp
	xor	esi, esi	#
# segmented_sieve.c:238:     for (int i = 0; i < num_threads; i++) {
	mov	r14, r15	# ivtmp.181, tmp204
# segmented_sieve.c:239:         pthread_join(threads[i], NULL);
	mov	rdi, QWORD PTR [rbx]	# MEM[(long unsigned int *)_114], MEM[(long unsigned int *)_114]
	call	pthread_join@PLT	#
# segmented_sieve.c:240:         total_primes += data[i].thread_total;
	mov	rbx, QWORD PTR 0[r13]	# MEM[(long unsigned int *)_115], MEM[(long unsigned int *)_115]
# segmented_sieve.c:238:     for (int i = 0; i < num_threads; i++) {
	mov	r13, QWORD PTR -136[rbp]	# tmp184, %sfp
# segmented_sieve.c:240:         total_primes += data[i].thread_total;
	add	rbx, 1	# total_primes,
# segmented_sieve.c:238:     for (int i = 0; i < num_threads; i++) {
	add	r13, 56	# tmp184,
.L435:
# segmented_sieve.c:239:         pthread_join(threads[i], NULL);
	mov	rdi, QWORD PTR [r14]	# MEM[(long unsigned int *)_114], MEM[(long unsigned int *)_114]
	xor	esi, esi	#
# segmented_sieve.c:238:     for (int i = 0; i < num_threads; i++) {
	add	r14, 8	# ivtmp.181,
	add	r13, 32	# ivtmp.182,
# segmented_sieve.c:239:         pthread_join(threads[i], NULL);
	call	pthread_join@PLT	#
# segmented_sieve.c:240:         total_primes += data[i].thread_total;
	add	rbx, QWORD PTR -32[r13]	# total_primes, MEM[(long unsigned int *)_115]
.L434:
# segmented_sieve.c:239:         pthread_join(threads[i], NULL);
	mov	rdi, QWORD PTR [r14]	# MEM[(long unsigned int *)_114], MEM[(long unsigned int *)_114]
	xor	esi, esi	#
# segmented_sieve.c:238:     for (int i = 0; i < num_threads; i++) {
	add	r14, 8	# ivtmp.181,
	add	r13, 32	# ivtmp.182,
# segmented_sieve.c:239:         pthread_join(threads[i], NULL);
	call	pthread_join@PLT	#
# segmented_sieve.c:240:         total_primes += data[i].thread_total;
	add	rbx, QWORD PTR -32[r13]	# total_primes, MEM[(long unsigned int *)_115]
# segmented_sieve.c:238:     for (int i = 0; i < num_threads; i++) {
	cmp	r14, r12	# ivtmp.181, _125
	je	.L400	#,
.L403:
# segmented_sieve.c:239:         pthread_join(threads[i], NULL);
	mov	rdi, QWORD PTR [r14]	# MEM[(long unsigned int *)_114], MEM[(long unsigned int *)_114]
	xor	esi, esi	#
# segmented_sieve.c:238:     for (int i = 0; i < num_threads; i++) {
	add	r14, 32	# ivtmp.181,
	sub	r13, -128	# ivtmp.182,
# segmented_sieve.c:239:         pthread_join(threads[i], NULL);
	call	pthread_join@PLT	#
	mov	rdi, QWORD PTR -24[r14]	# MEM[(long unsigned int *)_114], MEM[(long unsigned int *)_114]
	xor	esi, esi	#
# segmented_sieve.c:240:         total_primes += data[i].thread_total;
	add	rbx, QWORD PTR -128[r13]	# tmp208, MEM[(long unsigned int *)_115]
# segmented_sieve.c:239:         pthread_join(threads[i], NULL);
	call	pthread_join@PLT	#
	mov	rdi, QWORD PTR -16[r14]	# MEM[(long unsigned int *)_114], MEM[(long unsigned int *)_114]
	xor	esi, esi	#
# segmented_sieve.c:240:         total_primes += data[i].thread_total;
	add	rbx, QWORD PTR -96[r13]	# tmp274, MEM[(long unsigned int *)_115]
# segmented_sieve.c:239:         pthread_join(threads[i], NULL);
	call	pthread_join@PLT	#
	mov	rdi, QWORD PTR -8[r14]	# MEM[(long unsigned int *)_114], MEM[(long unsigned int *)_114]
	xor	esi, esi	#
# segmented_sieve.c:240:         total_primes += data[i].thread_total;
	add	rbx, QWORD PTR -64[r13]	# tmp280, MEM[(long unsigned int *)_115]
# segmented_sieve.c:239:         pthread_join(threads[i], NULL);
	call	pthread_join@PLT	#
# segmented_sieve.c:240:         total_primes += data[i].thread_total;
	add	rbx, QWORD PTR -32[r13]	# total_primes, MEM[(long unsigned int *)_115]
# segmented_sieve.c:238:     for (int i = 0; i < num_threads; i++) {
	cmp	r14, r12	# ivtmp.181, _125
	jne	.L403	#,
.L400:
# segmented_sieve.c:243:     clock_gettime(CLOCK_REALTIME, &end);
	lea	rsi, -80[rbp]	# tmp210,
	xor	edi, edi	#
	call	clock_gettime@PLT	#
# segmented_sieve.c:80:     struct timespec diff = {.tv_sec = time1->tv_sec - time0->tv_sec, .tv_nsec = time1->tv_nsec - time0->tv_nsec};
	mov	rsi, QWORD PTR -80[rbp]	# end.tv_sec, end.tv_sec
# segmented_sieve.c:80:     struct timespec diff = {.tv_sec = time1->tv_sec - time0->tv_sec, .tv_nsec = time1->tv_nsec - time0->tv_nsec};
	mov	rax, QWORD PTR -72[rbp]	# end.tv_nsec, end.tv_nsec
# segmented_sieve.c:80:     struct timespec diff = {.tv_sec = time1->tv_sec - time0->tv_sec, .tv_nsec = time1->tv_nsec - time0->tv_nsec};
	sub	rsi, QWORD PTR -96[rbp]	# diff$tv_sec, begin.tv_sec
# segmented_sieve.c:81:     if (diff.tv_nsec < 0) { diff.tv_nsec += 1000000000; diff.tv_sec--; }
	sub	rax, QWORD PTR -88[rbp]	# diff$tv_nsec, begin.tv_nsec
	jns	.L404	#,
# segmented_sieve.c:81:     if (diff.tv_nsec < 0) { diff.tv_nsec += 1000000000; diff.tv_sec--; }
	add	rax, 1000000000	# diff$tv_nsec,
# segmented_sieve.c:81:     if (diff.tv_nsec < 0) { diff.tv_nsec += 1000000000; diff.tv_sec--; }
	sub	rsi, 1	# diff$tv_sec,
.L404:
# segmented_sieve.c:245:     printf("Time = %0.5f seconds\n", diff.tv_sec + (diff.tv_nsec / 1e9));
	vxorpd	xmm6, xmm6, xmm6	# tmp391
# /usr/include/x86_64-linux-gnu/bits/stdio2.h:86:   return __printf_chk (__USE_FORTIFY_LEVEL - 1, __fmt, __va_arg_pack ());
	mov	edi, 2	#,
# segmented_sieve.c:245:     printf("Time = %0.5f seconds\n", diff.tv_sec + (diff.tv_nsec / 1e9));
	vcvtsi2sd	xmm9, xmm6, rsi	# tmp318, tmp392, diff$tv_sec
# /usr/include/x86_64-linux-gnu/bits/stdio2.h:86:   return __printf_chk (__USE_FORTIFY_LEVEL - 1, __fmt, __va_arg_pack ());
	lea	rsi, .LC8[rip]	# tmp218,
# segmented_sieve.c:245:     printf("Time = %0.5f seconds\n", diff.tv_sec + (diff.tv_nsec / 1e9));
	vcvtsi2sd	xmm7, xmm6, rax	# tmp317, tmp391, diff$tv_nsec
	vdivsd	xmm8, xmm7, QWORD PTR .LC7[rip]	# tmp214, tmp213,
# /usr/include/x86_64-linux-gnu/bits/stdio2.h:86:   return __printf_chk (__USE_FORTIFY_LEVEL - 1, __fmt, __va_arg_pack ());
	mov	eax, 1	#,
# segmented_sieve.c:245:     printf("Time = %0.5f seconds\n", diff.tv_sec + (diff.tv_nsec / 1e9));
	vaddsd	xmm0, xmm8, xmm9	# tmp217, tmp214, tmp216
# /usr/include/x86_64-linux-gnu/bits/stdio2.h:86:   return __printf_chk (__USE_FORTIFY_LEVEL - 1, __fmt, __va_arg_pack ());
	call	__printf_chk@PLT	#
	mov	rdx, rbx	#, total_primes
	mov	edi, 2	#,
	xor	eax, eax	#
	mov	rcx, QWORD PTR -152[rbp]	#, %sfp
	lea	rsi, .LC9[rip]	# tmp219,
	call	__printf_chk@PLT	#
# segmented_sieve.c:248:     free(base_primes);
	mov	rdi, QWORD PTR -104[rbp]	#, %sfp
	call	free@PLT	#
# segmented_sieve.c:249:     return 0;
	xor	eax, eax	# <retval>
	jmp	.L382	#
.L455:
# segmented_sieve.c:223:     ThreadData data[num_threads];
	or	QWORD PTR -8[rsp+rdi], 0	#,
	jmp	.L392	#
.L393:
# segmented_sieve.c:224:     PrimeState *base_primes = GetBasePrimes(sqrt(max_num), &prime_count);
	mov	rdx, QWORD PTR -104[rbp]	# max_num, %sfp
	vxorpd	xmm4, xmm4, xmm4	# tmp365
	mov	r11, rdx	# tmp186, max_num
	and	edx, 1	# max_num,
	shr	r11	# tmp186
	or	r11, rdx	# tmp243, tmp187
	vcvtsi2sd	xmm0, xmm4, r11	# tmp316, tmp365, tmp243
	vaddsd	xmm0, xmm0, xmm0	# _9, tmp185, tmp185
	jmp	.L394	#
.L398:
# segmented_sieve.c:224:     PrimeState *base_primes = GetBasePrimes(sqrt(max_num), &prime_count);
	vsubsd	xmm5, xmm0, xmm2	# tmp191, _10, tmp190
	vcvttsd2si	rdi, xmm5	# tmp244, tmp191
	btc	rdi, 63	# tmp189,
	jmp	.L399	#
.L407:
# segmented_sieve.c:237:     uint64_t total_primes = 1; // Count 2
	mov	ebx, 1	# total_primes,
	jmp	.L400	#
.L453:
# segmented_sieve.c:250: }
	call	__stack_chk_fail@PLT	#
.L445:
# segmented_sieve.c:224:     PrimeState *base_primes = GetBasePrimes(sqrt(max_num), &prime_count);
	call	sqrt@PLT	#
	jmp	.L397	#
	.cfi_endproc
.LFE6497:
	.size	main, .-main
	.local	super_pattern
	.comm	super_pattern,3360,32
	.globl	prime_count
	.bss
	.align 8
	.type	prime_count, @object
	.size	prime_count, 8
prime_count:
	.zero	8
	.section	.rodata
	.align 8
	.type	mask, @object
	.size	mask, 8
mask:
	.ascii	"\376\375\373\367\357\337\277\177"
	.section	.rodata.cst8,"aM",@progbits,8
	.align 8
.LC1:
	.long	0
	.long	1138753536
	.align 8
.LC7:
	.long	0
	.long	1104006501
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04.1) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
	.section	.note.gnu.property,"a"
	.align 8
	.long	1f - 0f
	.long	4f - 1f
	.long	5
0:
	.string	"GNU"
1:
	.align 8
	.long	0xc0000002
	.long	3f - 2f
2:
	.long	0x3
3:
	.align 8
4:
