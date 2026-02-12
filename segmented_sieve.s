	.file	"segmented_sieve.c"
	.intel_syntax noprefix
# GNU C99 (Ubuntu 13.3.0-6ubuntu2~24.04) version 13.3.0 (x86_64-linux-gnu)
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
# segmented_sieve.c:119: void *SieveRange(void *arg) {
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
# segmented_sieve.c:119: void *SieveRange(void *arg) {
	mov	rax, QWORD PTR fs:40	# tmp644, MEM[(<address-space-1> long unsigned int *)40B]
	mov	QWORD PTR 216[rsp], rax	# D.45591, tmp644
	xor	eax, eax	# tmp644
# /usr/lib/gcc/x86_64-linux-gnu/13/include/mm_malloc.h:45:   if (posix_memalign (&__ptr, __alignment, __size) == 0)
	lea	rdi, 208[rsp]	# tmp219,
	call	posix_memalign@PLT	#
	xor	r11d, r11d	# _154
	test	eax, eax	# tmp638
	jne	.L2	#,
	mov	r11, QWORD PTR 208[rsp]	# _154, D.45457
.L2:
# segmented_sieve.c:123:     PrimeState *local_primes = malloc(sizeof(PrimeState) * prime_count);
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
# segmented_sieve.c:123:     PrimeState *local_primes = malloc(sizeof(PrimeState) * prime_count);
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
# segmented_sieve.c:71:     if (i < n_bytes) memcpy(block + i, super_pattern, n_bytes - i);
	lea	r8, 30240[r11]	# _276,
	lea	rdi, 10080[r11]	# tmp348,
	mov	QWORD PTR 8[rsp], rsi	# %sfp, _183
	mov	QWORD PTR 64[rsp], r8	# %sfp, _276
	lea	r10, 13440[r11]	# tmp355,
	lea	r8, 26880[r11]	# tmp354,
	lea	rax, 16800[r11]	# tmp352,
	lea	rdx, 20160[r11]	# tmp350,
	mov	QWORD PTR 128[rsp], r8	# %sfp, tmp354
# segmented_sieve.c:192:                 val &= (~0ULL >> (current_idx + 64 - data->end_bit));
	mov	r8d, 64	# tmp366,
	lea	rcx, 23520[r11]	# tmp347,
	mov	QWORD PTR 88[rsp], rdi	# %sfp, tmp348
	lea	rbx, 0[r13+rbx]	# _361,
	sub	r8d, esi	# tmp366, _183
	mov	QWORD PTR 136[rsp], r10	# %sfp, tmp355
	lea	r9, 3360[r11]	# tmp353,
	lea	rbp, 6720[r11]	# tmp351,
	mov	QWORD PTR 112[rsp], rax	# %sfp, tmp352
	lea	r12, 262016[r15]	# ivtmp.99,
	mov	QWORD PTR 96[rsp], rdx	# %sfp, tmp350
	mov	QWORD PTR 80[rsp], rcx	# %sfp, tmp347
	mov	QWORD PTR 16[rsp], rbx	# %sfp, _361
	mov	ebx, r8d	# tmp367, tmp366
	mov	QWORD PTR 120[rsp], r9	# %sfp, tmp353
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
	lea	r10, mask2[rip]	# tmp368,
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
# segmented_sieve.c:154:             chk_bit -= offset;
	sub	rax, r9	# chk_bit, ivtmp.97
# segmented_sieve.c:158:             if (bits_in_block > (step << 3)) {
	lea	r8, 0[0+rsi*8]	# _19,
# segmented_sieve.c:158:             if (bits_in_block > (step << 3)) {
	cmp	r8, r11	# _19, iftmp.3_96
	jb	.L14	#,
.L17:
# segmented_sieve.c:179:             while (chk_bit < bits_in_block) {
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
# segmented_sieve.c:180:                 block[chk_bit >> 3] &= mask2[chk_bit & 7];
	mov	r12, rax	# tmp492, chk_bit
# segmented_sieve.c:180:                 block[chk_bit >> 3] &= mask2[chk_bit & 7];
	mov	rbp, rax	# tmp494, chk_bit
# segmented_sieve.c:181:                 chk_bit += step;
	add	rax, 1	# chk_bit,
# segmented_sieve.c:180:                 block[chk_bit >> 3] &= mask2[chk_bit & 7];
	shr	r12, 3	# tmp492,
# segmented_sieve.c:180:                 block[chk_bit >> 3] &= mask2[chk_bit & 7];
	and	ebp, 7	# tmp494,
# segmented_sieve.c:180:                 block[chk_bit >> 3] &= mask2[chk_bit & 7];
	movzx	r8d, BYTE PTR [r10+rbp]	# mask2[_338], mask2[_338]
	and	BYTE PTR 0[r13+r12], r8b	# *_340, mask2[_338]
.L159:
# segmented_sieve.c:180:                 block[chk_bit >> 3] &= mask2[chk_bit & 7];
	mov	rsi, rax	# tmp496, chk_bit
# segmented_sieve.c:180:                 block[chk_bit >> 3] &= mask2[chk_bit & 7];
	mov	rbx, rax	# tmp498, chk_bit
# segmented_sieve.c:181:                 chk_bit += step;
	add	rax, 1	# chk_bit,
# segmented_sieve.c:180:                 block[chk_bit >> 3] &= mask2[chk_bit & 7];
	shr	rsi, 3	# tmp496,
# segmented_sieve.c:180:                 block[chk_bit >> 3] &= mask2[chk_bit & 7];
	and	ebx, 7	# tmp498,
# segmented_sieve.c:180:                 block[chk_bit >> 3] &= mask2[chk_bit & 7];
	movzx	edx, BYTE PTR [r10+rbx]	# mask2[_338], mask2[_338]
	and	BYTE PTR 0[r13+rsi], dl	# *_340, mask2[_338]
.L158:
# segmented_sieve.c:180:                 block[chk_bit >> 3] &= mask2[chk_bit & 7];
	mov	rdi, rax	# tmp500, chk_bit
# segmented_sieve.c:180:                 block[chk_bit >> 3] &= mask2[chk_bit & 7];
	mov	rcx, rax	# tmp502, chk_bit
# segmented_sieve.c:181:                 chk_bit += step;
	add	rax, 1	# chk_bit,
# segmented_sieve.c:180:                 block[chk_bit >> 3] &= mask2[chk_bit & 7];
	shr	rdi, 3	# tmp500,
# segmented_sieve.c:180:                 block[chk_bit >> 3] &= mask2[chk_bit & 7];
	and	ecx, 7	# tmp502,
# segmented_sieve.c:180:                 block[chk_bit >> 3] &= mask2[chk_bit & 7];
	movzx	r12d, BYTE PTR [r10+rcx]	# mask2[_338], mask2[_338]
	and	BYTE PTR 0[r13+rdi], r12b	# *_340, mask2[_338]
.L157:
# segmented_sieve.c:180:                 block[chk_bit >> 3] &= mask2[chk_bit & 7];
	mov	rbp, rax	# tmp504, chk_bit
# segmented_sieve.c:180:                 block[chk_bit >> 3] &= mask2[chk_bit & 7];
	mov	r8, rax	# tmp506, chk_bit
# segmented_sieve.c:181:                 chk_bit += step;
	add	rax, 1	# chk_bit,
# segmented_sieve.c:180:                 block[chk_bit >> 3] &= mask2[chk_bit & 7];
	shr	rbp, 3	# tmp504,
# segmented_sieve.c:180:                 block[chk_bit >> 3] &= mask2[chk_bit & 7];
	and	r8d, 7	# tmp506,
# segmented_sieve.c:180:                 block[chk_bit >> 3] &= mask2[chk_bit & 7];
	movzx	esi, BYTE PTR [r10+r8]	# mask2[_338], mask2[_338]
	and	BYTE PTR 0[r13+rbp], sil	# *_340, mask2[_338]
.L156:
# segmented_sieve.c:180:                 block[chk_bit >> 3] &= mask2[chk_bit & 7];
	mov	rbx, rax	# tmp508, chk_bit
# segmented_sieve.c:180:                 block[chk_bit >> 3] &= mask2[chk_bit & 7];
	mov	rdx, rax	# tmp510, chk_bit
# segmented_sieve.c:181:                 chk_bit += step;
	add	rax, 1	# chk_bit,
# segmented_sieve.c:180:                 block[chk_bit >> 3] &= mask2[chk_bit & 7];
	shr	rbx, 3	# tmp508,
# segmented_sieve.c:180:                 block[chk_bit >> 3] &= mask2[chk_bit & 7];
	and	edx, 7	# tmp510,
# segmented_sieve.c:180:                 block[chk_bit >> 3] &= mask2[chk_bit & 7];
	movzx	edi, BYTE PTR [r10+rdx]	# mask2[_338], mask2[_338]
	and	BYTE PTR 0[r13+rbx], dil	# *_340, mask2[_338]
.L155:
# segmented_sieve.c:180:                 block[chk_bit >> 3] &= mask2[chk_bit & 7];
	mov	r12, rax	# tmp512, chk_bit
# segmented_sieve.c:180:                 block[chk_bit >> 3] &= mask2[chk_bit & 7];
	mov	rcx, rax	# tmp514, chk_bit
# segmented_sieve.c:181:                 chk_bit += step;
	add	rax, 1	# chk_bit,
# segmented_sieve.c:180:                 block[chk_bit >> 3] &= mask2[chk_bit & 7];
	shr	r12, 3	# tmp512,
# segmented_sieve.c:180:                 block[chk_bit >> 3] &= mask2[chk_bit & 7];
	and	ecx, 7	# tmp514,
# segmented_sieve.c:180:                 block[chk_bit >> 3] &= mask2[chk_bit & 7];
	movzx	ebp, BYTE PTR [r10+rcx]	# mask2[_338], mask2[_338]
	and	BYTE PTR 0[r13+r12], bpl	# *_340, mask2[_338]
.L154:
# segmented_sieve.c:180:                 block[chk_bit >> 3] &= mask2[chk_bit & 7];
	mov	r8, rax	# tmp516, chk_bit
# segmented_sieve.c:180:                 block[chk_bit >> 3] &= mask2[chk_bit & 7];
	mov	rsi, rax	# tmp518, chk_bit
# segmented_sieve.c:181:                 chk_bit += step;
	add	rax, 1	# chk_bit,
# segmented_sieve.c:180:                 block[chk_bit >> 3] &= mask2[chk_bit & 7];
	shr	r8, 3	# tmp516,
# segmented_sieve.c:180:                 block[chk_bit >> 3] &= mask2[chk_bit & 7];
	and	esi, 7	# tmp518,
# segmented_sieve.c:180:                 block[chk_bit >> 3] &= mask2[chk_bit & 7];
	movzx	ebx, BYTE PTR [r10+rsi]	# mask2[_338], mask2[_338]
	and	BYTE PTR 0[r13+r8], bl	# *_340, mask2[_338]
# segmented_sieve.c:179:             while (chk_bit < bits_in_block) {
	cmp	r11, rax	# iftmp.3_96, chk_bit
	je	.L16	#,
.L19:
# segmented_sieve.c:181:                 chk_bit += step;
	lea	rbp, 1[rax]	# tmp378,
# segmented_sieve.c:180:                 block[chk_bit >> 3] &= mask2[chk_bit & 7];
	mov	rdx, rax	# tmp331, chk_bit
# segmented_sieve.c:181:                 chk_bit += step;
	lea	rsi, 2[rax]	# chk_bit,
# segmented_sieve.c:180:                 block[chk_bit >> 3] &= mask2[chk_bit & 7];
	mov	rdi, rax	# tmp333, chk_bit
# segmented_sieve.c:180:                 block[chk_bit >> 3] &= mask2[chk_bit & 7];
	mov	rcx, rbp	# tmp390, tmp378
	shr	rdx, 3	# tmp331,
# segmented_sieve.c:180:                 block[chk_bit >> 3] &= mask2[chk_bit & 7];
	and	edi, 7	# tmp333,
	and	ebp, 7	# tmp392,
# segmented_sieve.c:180:                 block[chk_bit >> 3] &= mask2[chk_bit & 7];
	shr	rcx, 3	# tmp390,
# segmented_sieve.c:180:                 block[chk_bit >> 3] &= mask2[chk_bit & 7];
	movzx	r12d, BYTE PTR [r10+rdi]	# mask2[_338], mask2[_338]
	movzx	r8d, BYTE PTR [r10+rbp]	# mask2[_338], mask2[_338]
# segmented_sieve.c:180:                 block[chk_bit >> 3] &= mask2[chk_bit & 7];
	mov	rbx, rsi	# tmp395, chk_bit
# segmented_sieve.c:180:                 block[chk_bit >> 3] &= mask2[chk_bit & 7];
	and	BYTE PTR 0[r13+rdx], r12b	# *_340, mask2[_338]
# segmented_sieve.c:181:                 chk_bit += step;
	lea	rdi, 3[rax]	# chk_bit,
# segmented_sieve.c:180:                 block[chk_bit >> 3] &= mask2[chk_bit & 7];
	shr	rbx, 3	# tmp395,
# segmented_sieve.c:180:                 block[chk_bit >> 3] &= mask2[chk_bit & 7];
	and	esi, 7	# tmp397,
# segmented_sieve.c:180:                 block[chk_bit >> 3] &= mask2[chk_bit & 7];
	and	BYTE PTR 0[r13+rcx], r8b	# *_340, mask2[_338]
# segmented_sieve.c:181:                 chk_bit += step;
	lea	r8, 4[rax]	# chk_bit,
# segmented_sieve.c:180:                 block[chk_bit >> 3] &= mask2[chk_bit & 7];
	mov	r12, rdi	# tmp400, chk_bit
# segmented_sieve.c:180:                 block[chk_bit >> 3] &= mask2[chk_bit & 7];
	and	edi, 7	# tmp402,
# segmented_sieve.c:180:                 block[chk_bit >> 3] &= mask2[chk_bit & 7];
	mov	rcx, r8	# tmp405, chk_bit
	shr	r12, 3	# tmp400,
# segmented_sieve.c:180:                 block[chk_bit >> 3] &= mask2[chk_bit & 7];
	and	r8d, 7	# tmp407,
# segmented_sieve.c:180:                 block[chk_bit >> 3] &= mask2[chk_bit & 7];
	movzx	edx, BYTE PTR [r10+rsi]	# mask2[_338], mask2[_338]
# segmented_sieve.c:180:                 block[chk_bit >> 3] &= mask2[chk_bit & 7];
	shr	rcx, 3	# tmp405,
# segmented_sieve.c:180:                 block[chk_bit >> 3] &= mask2[chk_bit & 7];
	and	BYTE PTR 0[r13+rbx], dl	# *_340, mask2[_338]
	movzx	ebp, BYTE PTR [r10+rdi]	# mask2[_338], mask2[_338]
# segmented_sieve.c:181:                 chk_bit += step;
	lea	rbx, 5[rax]	# chk_bit,
# segmented_sieve.c:180:                 block[chk_bit >> 3] &= mask2[chk_bit & 7];
	and	BYTE PTR 0[r13+r12], bpl	# *_340, mask2[_338]
	movzx	esi, BYTE PTR [r10+r8]	# mask2[_338], mask2[_338]
# segmented_sieve.c:181:                 chk_bit += step;
	lea	r12, 6[rax]	# chk_bit,
# segmented_sieve.c:180:                 block[chk_bit >> 3] &= mask2[chk_bit & 7];
	mov	rdi, rbx	# tmp410, chk_bit
# segmented_sieve.c:180:                 block[chk_bit >> 3] &= mask2[chk_bit & 7];
	and	BYTE PTR 0[r13+rcx], sil	# *_340, mask2[_338]
# segmented_sieve.c:181:                 chk_bit += step;
	lea	rsi, 7[rax]	# chk_bit,
# segmented_sieve.c:180:                 block[chk_bit >> 3] &= mask2[chk_bit & 7];
	mov	rbp, r12	# tmp415, chk_bit
# segmented_sieve.c:180:                 block[chk_bit >> 3] &= mask2[chk_bit & 7];
	and	ebx, 7	# tmp412,
# segmented_sieve.c:180:                 block[chk_bit >> 3] &= mask2[chk_bit & 7];
	mov	rcx, rsi	# tmp420, chk_bit
	shr	rdi, 3	# tmp410,
# segmented_sieve.c:180:                 block[chk_bit >> 3] &= mask2[chk_bit & 7];
	and	r12d, 7	# tmp417,
	and	esi, 7	# tmp422,
# segmented_sieve.c:180:                 block[chk_bit >> 3] &= mask2[chk_bit & 7];
	shr	rbp, 3	# tmp415,
	shr	rcx, 3	# tmp420,
# segmented_sieve.c:181:                 chk_bit += step;
	add	rax, 8	# chk_bit,
# segmented_sieve.c:180:                 block[chk_bit >> 3] &= mask2[chk_bit & 7];
	movzx	edx, BYTE PTR [r10+rbx]	# mask2[_338], mask2[_338]
	movzx	r8d, BYTE PTR [r10+r12]	# mask2[_338], mask2[_338]
	and	BYTE PTR 0[r13+rdi], dl	# *_340, mask2[_338]
	movzx	ebx, BYTE PTR [r10+rsi]	# mask2[_338], mask2[_338]
	and	BYTE PTR 0[r13+rbp], r8b	# *_340, mask2[_338]
	and	BYTE PTR 0[r13+rcx], bl	# *_340, mask2[_338]
# segmented_sieve.c:179:             while (chk_bit < bits_in_block) {
	cmp	r11, rax	# iftmp.3_96, chk_bit
	jne	.L19	#,
.L16:
# segmented_sieve.c:183:             local_primes[i].next_bit = offset + chk_bit;
	add	rax, r9	# tmp335, ivtmp.97
# segmented_sieve.c:149:         for (size_t i = 3; i < prime_count; i++) {
	add	r15, 16	# ivtmp.89,
# segmented_sieve.c:183:             local_primes[i].next_bit = offset + chk_bit;
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
# segmented_sieve.c:189:             if (current_idx >= data->end_bit) break;
	mov	r10, QWORD PTR 8[rsp]	# _183, %sfp
	cmp	r9, r10	# ivtmp.97, _183
	jnb	.L12	#,
.L11:
	mov	rsi, QWORD PTR 8[rsp]	# tmp370, %sfp
	mov	rdx, QWORD PTR 24[r14]	# arg__thread_total_lsm.40, MEM[(struct ThreadData *)arg_106(D)].thread_total
	mov	rcx, r13	# ivtmp.60, _154
# segmented_sieve.c:188:             uint64_t current_idx = offset + (k * 64);
	mov	rax, r9	# current_idx, ivtmp.97
	mov	r15, QWORD PTR 8[rsp]	# _183, %sfp
	sub	rsi, r9	# tmp370, ivtmp.97
	shr	rsi, 6	# tmp369,
	and	esi, 7	# tmp371,
	je	.L23	#,
# segmented_sieve.c:191:             if (current_idx + 64 > data->end_bit) {
	mov	r11, QWORD PTR 8[rsp]	# _183, %sfp
	lea	rax, 64[r9]	# current_idx,
# segmented_sieve.c:190:             uint64_t val = block64[k];
	mov	r8, QWORD PTR 0[r13]	# val, MEM[(uint64_t *)_390]
	mov	rdi, r9	# current_idx, ivtmp.97
# segmented_sieve.c:191:             if (current_idx + 64 > data->end_bit) {
	cmp	r11, rax	# _183, current_idx
	jb	.L199	#,
# segmented_sieve.c:194:             data->thread_total += __builtin_popcountll(val);
	xor	r15d, r15d	# _85
	popcnt	r15, r8	# _85, val
# segmented_sieve.c:194:             data->thread_total += __builtin_popcountll(val);
	add	rdx, r15	# arg__thread_total_lsm.40, _85
# segmented_sieve.c:187:         for (uint64_t k = 0; k < BLOCK_BYTES / 8; k++) {
	cmp	r9, r12	# ivtmp.97, ivtmp.99
	je	.L26	#,
# segmented_sieve.c:189:             if (current_idx >= data->end_bit) break;
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
# segmented_sieve.c:194:             data->thread_total += __builtin_popcountll(val);
	xor	esi, esi	# _85
	add	rax, 64	# current_idx,
	popcnt	rsi, QWORD PTR [rcx]	# _85, MEM[(uint64_t *)_390]
# segmented_sieve.c:194:             data->thread_total += __builtin_popcountll(val);
	add	rdx, rsi	# arg__thread_total_lsm.40, _85
# segmented_sieve.c:187:         for (uint64_t k = 0; k < BLOCK_BYTES / 8; k++) {
	cmp	r10, r12	# current_idx, ivtmp.99
	je	.L26	#,
# segmented_sieve.c:189:             if (current_idx >= data->end_bit) break;
	add	rcx, 8	# ivtmp.60,
	cmp	rax, r11	# current_idx, _183
	jnb	.L26	#,
.L166:
	mov	r8, rax	# current_idx, current_idx
# segmented_sieve.c:194:             data->thread_total += __builtin_popcountll(val);
	xor	edi, edi	# _85
	add	rax, 64	# current_idx,
	popcnt	rdi, QWORD PTR [rcx]	# _85, MEM[(uint64_t *)_390]
# segmented_sieve.c:194:             data->thread_total += __builtin_popcountll(val);
	add	rdx, rdi	# arg__thread_total_lsm.40, _85
# segmented_sieve.c:187:         for (uint64_t k = 0; k < BLOCK_BYTES / 8; k++) {
	cmp	r8, r12	# current_idx, ivtmp.99
	je	.L26	#,
# segmented_sieve.c:189:             if (current_idx >= data->end_bit) break;
	mov	r11, QWORD PTR 8[rsp]	# _183, %sfp
	add	rcx, 8	# ivtmp.60,
	cmp	rax, r11	# current_idx, _183
	jnb	.L26	#,
.L165:
	mov	r15, rax	# current_idx, current_idx
# segmented_sieve.c:194:             data->thread_total += __builtin_popcountll(val);
	xor	r10d, r10d	# _85
	add	rax, 64	# current_idx,
	popcnt	r10, QWORD PTR [rcx]	# _85, MEM[(uint64_t *)_390]
# segmented_sieve.c:194:             data->thread_total += __builtin_popcountll(val);
	add	rdx, r10	# arg__thread_total_lsm.40, _85
# segmented_sieve.c:187:         for (uint64_t k = 0; k < BLOCK_BYTES / 8; k++) {
	cmp	r15, r12	# current_idx, ivtmp.99
	je	.L26	#,
# segmented_sieve.c:189:             if (current_idx >= data->end_bit) break;
	mov	rsi, QWORD PTR 8[rsp]	# _183, %sfp
	add	rcx, 8	# ivtmp.60,
	cmp	rax, rsi	# current_idx, _183
	jnb	.L26	#,
.L164:
	mov	r8, rax	# current_idx, current_idx
# segmented_sieve.c:194:             data->thread_total += __builtin_popcountll(val);
	xor	edi, edi	# _85
	add	rax, 64	# current_idx,
	popcnt	rdi, QWORD PTR [rcx]	# _85, MEM[(uint64_t *)_390]
# segmented_sieve.c:194:             data->thread_total += __builtin_popcountll(val);
	add	rdx, rdi	# arg__thread_total_lsm.40, _85
# segmented_sieve.c:187:         for (uint64_t k = 0; k < BLOCK_BYTES / 8; k++) {
	cmp	r8, r12	# current_idx, ivtmp.99
	je	.L26	#,
# segmented_sieve.c:189:             if (current_idx >= data->end_bit) break;
	mov	r11, QWORD PTR 8[rsp]	# _183, %sfp
	add	rcx, 8	# ivtmp.60,
	cmp	rax, r11	# current_idx, _183
	jnb	.L26	#,
.L163:
	mov	r15, rax	# current_idx, current_idx
# segmented_sieve.c:194:             data->thread_total += __builtin_popcountll(val);
	xor	r10d, r10d	# _85
	add	rax, 64	# current_idx,
	popcnt	r10, QWORD PTR [rcx]	# _85, MEM[(uint64_t *)_390]
# segmented_sieve.c:194:             data->thread_total += __builtin_popcountll(val);
	add	rdx, r10	# arg__thread_total_lsm.40, _85
# segmented_sieve.c:187:         for (uint64_t k = 0; k < BLOCK_BYTES / 8; k++) {
	cmp	r15, r12	# current_idx, ivtmp.99
	je	.L26	#,
# segmented_sieve.c:189:             if (current_idx >= data->end_bit) break;
	mov	rsi, QWORD PTR 8[rsp]	# _183, %sfp
	add	rcx, 8	# ivtmp.60,
	cmp	rax, rsi	# current_idx, _183
	jnb	.L26	#,
.L162:
	mov	r8, rax	# current_idx, current_idx
# segmented_sieve.c:194:             data->thread_total += __builtin_popcountll(val);
	xor	edi, edi	# _85
	add	rax, 64	# current_idx,
	popcnt	rdi, QWORD PTR [rcx]	# _85, MEM[(uint64_t *)_390]
# segmented_sieve.c:194:             data->thread_total += __builtin_popcountll(val);
	add	rdx, rdi	# arg__thread_total_lsm.40, _85
# segmented_sieve.c:187:         for (uint64_t k = 0; k < BLOCK_BYTES / 8; k++) {
	cmp	r8, r12	# current_idx, ivtmp.99
	je	.L26	#,
# segmented_sieve.c:189:             if (current_idx >= data->end_bit) break;
	mov	r11, QWORD PTR 8[rsp]	# _183, %sfp
	add	rcx, 8	# ivtmp.60,
	cmp	rax, r11	# current_idx, _183
	jnb	.L26	#,
	mov	r15, r11	# _183, _183
	jmp	.L23	#
.L24:
# segmented_sieve.c:194:             data->thread_total += __builtin_popcountll(val);
	xor	r10d, r10d	# _85
	popcnt	r10, r8	# _85, val
# segmented_sieve.c:194:             data->thread_total += __builtin_popcountll(val);
	add	rdx, r10	# arg__thread_total_lsm.40, _85
# segmented_sieve.c:187:         for (uint64_t k = 0; k < BLOCK_BYTES / 8; k++) {
	cmp	rax, r12	# current_idx, ivtmp.99
	je	.L26	#,
# segmented_sieve.c:189:             if (current_idx >= data->end_bit) break;
	cmp	rsi, r15	# tmp372, _183
	lea	rdi, 8[rcx]	# tmp373,
	jnb	.L26	#,
# segmented_sieve.c:194:             data->thread_total += __builtin_popcountll(val);
	xor	r11d, r11d	# _85
	popcnt	r11, QWORD PTR 8[rcx]	# _85, MEM[(uint64_t *)_390]
# segmented_sieve.c:194:             data->thread_total += __builtin_popcountll(val);
	add	rdx, r11	# arg__thread_total_lsm.40, _85
# segmented_sieve.c:187:         for (uint64_t k = 0; k < BLOCK_BYTES / 8; k++) {
	cmp	rsi, r12	# tmp372, ivtmp.99
	lea	r8, 128[rax]	# current_idx,
	je	.L26	#,
# segmented_sieve.c:189:             if (current_idx >= data->end_bit) break;
	cmp	r8, r15	# current_idx, _183
	jnb	.L26	#,
# segmented_sieve.c:194:             data->thread_total += __builtin_popcountll(val);
	xor	r11d, r11d	# _85
	popcnt	r11, QWORD PTR 16[rcx]	# _85, MEM[(uint64_t *)_390]
# segmented_sieve.c:194:             data->thread_total += __builtin_popcountll(val);
	add	rdx, r11	# arg__thread_total_lsm.40, _85
# segmented_sieve.c:187:         for (uint64_t k = 0; k < BLOCK_BYTES / 8; k++) {
	cmp	r8, r12	# current_idx, ivtmp.99
	lea	r10, 192[rax]	# current_idx,
	je	.L26	#,
# segmented_sieve.c:189:             if (current_idx >= data->end_bit) break;
	cmp	r10, r15	# current_idx, _183
	jnb	.L26	#,
# segmented_sieve.c:194:             data->thread_total += __builtin_popcountll(val);
	xor	r11d, r11d	# _85
	popcnt	r11, QWORD PTR 24[rcx]	# _85, MEM[(uint64_t *)_390]
# segmented_sieve.c:194:             data->thread_total += __builtin_popcountll(val);
	add	rdx, r11	# arg__thread_total_lsm.40, _85
# segmented_sieve.c:187:         for (uint64_t k = 0; k < BLOCK_BYTES / 8; k++) {
	cmp	r10, r12	# current_idx, ivtmp.99
	lea	r8, 256[rax]	# current_idx,
	je	.L26	#,
# segmented_sieve.c:189:             if (current_idx >= data->end_bit) break;
	cmp	r8, r15	# current_idx, _183
	jnb	.L26	#,
# segmented_sieve.c:194:             data->thread_total += __builtin_popcountll(val);
	popcnt	rcx, QWORD PTR 32[rcx]	# _85, MEM[(uint64_t *)_390]
	add	rax, 320	# current_idx,
# segmented_sieve.c:194:             data->thread_total += __builtin_popcountll(val);
	add	rdx, rcx	# arg__thread_total_lsm.40, _85
# segmented_sieve.c:187:         for (uint64_t k = 0; k < BLOCK_BYTES / 8; k++) {
	cmp	r8, r12	# current_idx, ivtmp.99
	je	.L26	#,
# segmented_sieve.c:189:             if (current_idx >= data->end_bit) break;
	cmp	rax, r15	# current_idx, _183
	jnb	.L26	#,
# segmented_sieve.c:194:             data->thread_total += __builtin_popcountll(val);
	xor	r8d, r8d	# _85
	popcnt	r8, QWORD PTR 32[rdi]	# _85, MEM[(uint64_t *)_390]
# segmented_sieve.c:194:             data->thread_total += __builtin_popcountll(val);
	add	rdx, r8	# arg__thread_total_lsm.40, _85
# segmented_sieve.c:187:         for (uint64_t k = 0; k < BLOCK_BYTES / 8; k++) {
	cmp	rax, r12	# current_idx, ivtmp.99
	lea	r10, 320[rsi]	# current_idx,
	je	.L26	#,
# segmented_sieve.c:189:             if (current_idx >= data->end_bit) break;
	cmp	r10, r15	# current_idx, _183
	jnb	.L26	#,
# segmented_sieve.c:194:             data->thread_total += __builtin_popcountll(val);
	xor	eax, eax	# _85
	popcnt	rax, QWORD PTR 40[rdi]	# _85, MEM[(uint64_t *)_390]
# segmented_sieve.c:194:             data->thread_total += __builtin_popcountll(val);
	add	rdx, rax	# arg__thread_total_lsm.40, _85
# segmented_sieve.c:187:         for (uint64_t k = 0; k < BLOCK_BYTES / 8; k++) {
	cmp	r10, r12	# current_idx, ivtmp.99
	lea	r11, 384[rsi]	# current_idx,
	je	.L26	#,
# segmented_sieve.c:189:             if (current_idx >= data->end_bit) break;
	cmp	r11, r15	# current_idx, _183
	jnb	.L26	#,
	lea	rax, 448[rsi]	# current_idx,
# segmented_sieve.c:194:             data->thread_total += __builtin_popcountll(val);
	xor	esi, esi	# _85
	popcnt	rsi, QWORD PTR 48[rdi]	# _85, MEM[(uint64_t *)_390]
# segmented_sieve.c:194:             data->thread_total += __builtin_popcountll(val);
	add	rdx, rsi	# arg__thread_total_lsm.40, _85
# segmented_sieve.c:187:         for (uint64_t k = 0; k < BLOCK_BYTES / 8; k++) {
	cmp	r11, r12	# current_idx, ivtmp.99
	je	.L26	#,
# segmented_sieve.c:189:             if (current_idx >= data->end_bit) break;
	cmp	rax, r15	# current_idx, _183
	lea	rcx, 56[rdi]	# ivtmp.60,
	jnb	.L26	#,
.L23:
	lea	rsi, 64[rax]	# tmp372,
# segmented_sieve.c:190:             uint64_t val = block64[k];
	mov	r8, QWORD PTR [rcx]	# val, MEM[(uint64_t *)_390]
	mov	rdi, rax	# current_idx, current_idx
# segmented_sieve.c:191:             if (current_idx + 64 > data->end_bit) {
	cmp	r15, rsi	# _183, tmp372
	jnb	.L24	#,
.L199:
# segmented_sieve.c:192:                 val &= (~0ULL >> (current_idx + 64 - data->end_bit));
	lea	r15d, [rbx+rdi]	# tmp338,
# segmented_sieve.c:192:                 val &= (~0ULL >> (current_idx + 64 - data->end_bit));
	mov	rdi, -1	# tmp340,
	shrx	r10, rdi, r15	# tmp339, tmp340, tmp338
# segmented_sieve.c:192:                 val &= (~0ULL >> (current_idx + 64 - data->end_bit));
	and	r10, r8	# val, val
# segmented_sieve.c:194:             data->thread_total += __builtin_popcountll(val);
	xor	r8d, r8d	# _270
	popcnt	r8, r10	# _270, val
# segmented_sieve.c:194:             data->thread_total += __builtin_popcountll(val);
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
# segmented_sieve.c:199:     free(local_primes);
	mov	rdi, r13	#, local_primes
	call	free@PLT	#
# segmented_sieve.c:201: }
	mov	rax, QWORD PTR 216[rsp]	# tmp645, D.45591
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
# segmented_sieve.c:180:                 block[chk_bit >> 3] &= mask2[chk_bit & 7];
	mov	rbx, rax	# tmp327, chk_bit
# segmented_sieve.c:180:                 block[chk_bit >> 3] &= mask2[chk_bit & 7];
	mov	rdx, rax	# tmp329, chk_bit
# segmented_sieve.c:181:                 chk_bit += step;
	add	rax, rsi	# chk_bit, p
# segmented_sieve.c:180:                 block[chk_bit >> 3] &= mask2[chk_bit & 7];
	shr	rbx, 3	# tmp327,
# segmented_sieve.c:180:                 block[chk_bit >> 3] &= mask2[chk_bit & 7];
	and	edx, 7	# tmp329,
# segmented_sieve.c:180:                 block[chk_bit >> 3] &= mask2[chk_bit & 7];
	movzx	edi, BYTE PTR [r10+rdx]	# mask2[_71], mask2[_71]
	and	BYTE PTR 0[r13+rbx], dil	# *_69, mask2[_71]
# segmented_sieve.c:179:             while (chk_bit < bits_in_block) {
	cmp	rax, r11	# chk_bit, iftmp.3_96
	jb	.L20	#,
	jmp	.L16	#
.L14:
# segmented_sieve.c:159:                 uint64_t unroll_limit = bits_in_block - (step << 3);
	mov	rbx, r11	# unroll_limit, iftmp.3_96
	sub	rbx, r8	# unroll_limit, _19
# segmented_sieve.c:160:                 while (chk_bit < unroll_limit) {
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
	movzx	ecx, BYTE PTR [r10+rcx]	# mask2_I_lsm0.44, MEM[(unsigned char *)_312]
	mov	QWORD PTR 200[rsp], r14	# %sfp, _281
	and	ebp, 7	# tmp296,
	movzx	edi, BYTE PTR [r10+rdi]	# mask2_I_lsm0.43, MEM[(unsigned char *)_320]
	movzx	ebp, BYTE PTR [r10+rbp]	# mask2_I_lsm0.42, MEM[(unsigned char *)_166]
	mov	BYTE PTR 169[rsp], cl	# %sfp, mask2_I_lsm0.44
	mov	BYTE PTR 170[rsp], dil	# %sfp, mask2_I_lsm0.43
	mov	rcx, QWORD PTR 32[rsp]	# _330, %sfp
	mov	BYTE PTR 171[rsp], bpl	# %sfp, mask2_I_lsm0.42
	mov	rbp, QWORD PTR 24[rsp]	# _215, %sfp
	movzx	r14d, BYTE PTR 169[rsp]	# mask2_I_lsm0.44, %sfp
	and	ecx, 7	# _330,
	and	ebp, 7	# _215,
	movzx	edi, BYTE PTR [r10+rbp]	# mask2_I_lsm0.45, MEM[(unsigned char *)_305]
	movzx	ebp, BYTE PTR [r10+rcx]	# mask2_I_lsm0.46, MEM[(unsigned char *)_299]
	mov	BYTE PTR 72[rsp], dil	# %sfp, mask2_I_lsm0.45
	mov	rdi, rdx	# tmp306, ivtmp.79
	movzx	r11d, BYTE PTR 72[rsp]	# mask2_I_lsm0.45, %sfp
	and	edi, 7	# tmp306,
	mov	BYTE PTR 168[rsp], bpl	# %sfp, mask2_I_lsm0.46
	mov	rbp, r12	# tmp308, ivtmp.78
	movzx	ecx, BYTE PTR [r10+rdi]	# mask2_I_lsm0.47, MEM[(unsigned char *)_294]
	and	ebp, 7	# tmp308,
	mov	QWORD PTR 72[rsp], r15	# %sfp, ivtmp.89
	movzx	r15d, BYTE PTR 170[rsp]	# mask2_I_lsm0.43, %sfp
	movzx	edi, BYTE PTR [r10+rbp]	# mask2_I_lsm0.48, MEM[(unsigned char *)_290]
	mov	BYTE PTR 47[rsp], cl	# %sfp, mask2_I_lsm0.47
	mov	rcx, rax	# tmp310, chk_bit
	and	ecx, 7	# tmp310,
	mov	BYTE PTR 32[rsp], dil	# %sfp, mask2_I_lsm0.48
	lea	rdi, [rsi+rsi]	# _175,
	movzx	ebp, BYTE PTR [r10+rcx]	# mask2_I_lsm0.49, MEM[(unsigned char *)_287]
	lea	rcx, [rdi+rsi]	# tmp314,
	mov	BYTE PTR 24[rsp], bpl	# %sfp, mask2_I_lsm0.49
	lea	rbp, [rsi+rsi*4]	# tmp317,
	mov	rsi, r12	# ivtmp.78, ivtmp.78
	mov	r12, rbp	# tmp317, tmp317
	movzx	ebp, BYTE PTR 171[rsp]	# mask2_I_lsm0.42, %sfp
.L18:
# segmented_sieve.c:161:                     block[chk_bit >> 3] &= mask2[chk_bit & 7];
	mov	r9, rax	# tmp318, chk_bit
# segmented_sieve.c:161:                     block[chk_bit >> 3] &= mask2[chk_bit & 7];
	movzx	r8d, BYTE PTR 24[rsp]	# mask2_I_lsm0.49, %sfp
# segmented_sieve.c:166:                     uint64_t c3 = c2 + step;
	add	rax, rcx	# c3, tmp314
# segmented_sieve.c:161:                     block[chk_bit >> 3] &= mask2[chk_bit & 7];
	shr	r9, 3	# tmp318,
# segmented_sieve.c:161:                     block[chk_bit >> 3] &= mask2[chk_bit & 7];
	and	BYTE PTR 0[r13+r9], r8b	# *_21, mask2_I_lsm0.49
# segmented_sieve.c:163:                     block[c1 >> 3] &= mask2[c1 & 7];
	mov	r9, rsi	# tmp319, ivtmp.78
# segmented_sieve.c:163:                     block[c1 >> 3] &= mask2[c1 & 7];
	movzx	r8d, BYTE PTR 32[rsp]	# mask2_I_lsm0.48, %sfp
# segmented_sieve.c:168:                     uint64_t c4 = c3 + step;
	add	rsi, rcx	# c4, tmp314
# segmented_sieve.c:163:                     block[c1 >> 3] &= mask2[c1 & 7];
	shr	r9, 3	# tmp319,
# segmented_sieve.c:163:                     block[c1 >> 3] &= mask2[c1 & 7];
	and	BYTE PTR 0[r13+r9], r8b	# *_27, mask2_I_lsm0.48
# segmented_sieve.c:165:                     block[c2 >> 3] &= mask2[c2 & 7];
	mov	r9, rdx	# tmp320, ivtmp.79
# segmented_sieve.c:165:                     block[c2 >> 3] &= mask2[c2 & 7];
	movzx	r8d, BYTE PTR 47[rsp]	# mask2_I_lsm0.47, %sfp
# segmented_sieve.c:165:                     block[c2 >> 3] &= mask2[c2 & 7];
	shr	r9, 3	# tmp320,
# segmented_sieve.c:165:                     block[c2 >> 3] &= mask2[c2 & 7];
	and	BYTE PTR 0[r13+r9], r8b	# *_33, mask2_I_lsm0.47
# segmented_sieve.c:167:                     block[c3 >> 3] &= mask2[c3 & 7];
	mov	r9, rax	# tmp321, c3
# segmented_sieve.c:170:                     uint64_t c5 = c4 + step;
	add	rax, rdi	# c5, _175
# segmented_sieve.c:167:                     block[c3 >> 3] &= mask2[c3 & 7];
	movzx	r8d, BYTE PTR 168[rsp]	# mask2_I_lsm0.46, %sfp
# segmented_sieve.c:167:                     block[c3 >> 3] &= mask2[c3 & 7];
	shr	r9, 3	# tmp321,
# segmented_sieve.c:167:                     block[c3 >> 3] &= mask2[c3 & 7];
	and	BYTE PTR 0[r13+r9], r8b	# *_39, mask2_I_lsm0.46
# segmented_sieve.c:169:                     block[c4 >> 3] &= mask2[c4 & 7];
	mov	r9, rsi	# tmp322, c4
# segmented_sieve.c:172:                     uint64_t c6 = c5 + step;
	add	rsi, rdi	# c6, _175
# segmented_sieve.c:171:                     block[c5 >> 3] &= mask2[c5 & 7];
	mov	r8, rax	# tmp323, c5
# segmented_sieve.c:169:                     block[c4 >> 3] &= mask2[c4 & 7];
	shr	r9, 3	# tmp322,
# segmented_sieve.c:171:                     block[c5 >> 3] &= mask2[c5 & 7];
	shr	r8, 3	# tmp323,
# segmented_sieve.c:176:                     chk_bit = c7 + step;
	add	rax, rcx	# chk_bit, tmp314
# segmented_sieve.c:169:                     block[c4 >> 3] &= mask2[c4 & 7];
	and	BYTE PTR 0[r13+r9], r11b	# *_45, mask2_I_lsm0.45
# segmented_sieve.c:173:                     block[c6 >> 3] &= mask2[c6 & 7];
	mov	r9, rsi	# tmp324, c6
# segmented_sieve.c:160:                 while (chk_bit < unroll_limit) {
	add	rsi, rcx	# ivtmp.78, tmp314
# segmented_sieve.c:173:                     block[c6 >> 3] &= mask2[c6 & 7];
	shr	r9, 3	# tmp324,
# segmented_sieve.c:171:                     block[c5 >> 3] &= mask2[c5 & 7];
	and	BYTE PTR 0[r13+r8], r14b	# *_51, mask2_I_lsm0.44
# segmented_sieve.c:174:                     uint64_t c7 = c6 + step;
	lea	r8, [r12+rdx]	# c7,
# segmented_sieve.c:173:                     block[c6 >> 3] &= mask2[c6 & 7];
	and	BYTE PTR 0[r13+r9], r15b	# *_57, mask2_I_lsm0.43
# segmented_sieve.c:160:                 while (chk_bit < unroll_limit) {
	mov	r9, QWORD PTR 48[rsp]	# _19, %sfp
# segmented_sieve.c:175:                     block[c7 >> 3] &= mask2[c7 & 7];
	shr	r8, 3	# tmp326,
# segmented_sieve.c:175:                     block[c7 >> 3] &= mask2[c7 & 7];
	and	BYTE PTR 0[r13+r8], bpl	# *_63, mask2_I_lsm0.42
# segmented_sieve.c:160:                 while (chk_bit < unroll_limit) {
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
# segmented_sieve.c:201: }
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
# segmented_sieve.c:48:         if (num % 3 == 0 || num % 5 == 0 || num % 7 == 0) {
	movabs	rsi, 6148914691236517205	# tmp111,
	movabs	r10, -3689348814741910323	# tmp148,
# segmented_sieve.c:49:             p105[i >> 3] &= ~(1 << (i & 7));
	mov	r8d, 1	# tmp147,
# segmented_sieve.c:48:         if (num % 3 == 0 || num % 5 == 0 || num % 7 == 0) {
	movabs	r9, 3689348814741910323	# tmp149,
# segmented_sieve.c:48:         if (num % 3 == 0 || num % 5 == 0 || num % 7 == 0) {
	movabs	r11, 2635249153387078802	# tmp151,
# segmented_sieve.c:43: void init_avx_pattern() {
	mov	rbp, rsp	#,
	.cfi_def_cfa_register 6
	push	r13	#
	push	r12	#
	.cfi_offset 13, -24
	.cfi_offset 12, -32
# segmented_sieve.c:46:     for (int i = 0; i < 105 * 8; i++) {
	xor	r12d, r12d	# i
# segmented_sieve.c:43: void init_avx_pattern() {
	push	rbx	#
	.cfi_offset 3, -40
	movabs	rbx, 7905747460161236407	# tmp150,
	sub	rsp, 136	#,
# segmented_sieve.c:43: void init_avx_pattern() {
	mov	rax, QWORD PTR fs:40	# tmp217, MEM[(<address-space-1> long unsigned int *)40B]
	mov	QWORD PTR 120[rsp], rax	# D.45649, tmp217
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
# segmented_sieve.c:48:         if (num % 3 == 0 || num % 5 == 0 || num % 7 == 0) {
	cmp	rsi, rdx	# tmp111, tmp109
	jnb	.L228	#,
	mov	rcx, rax	# tmp119, ivtmp.127
	imul	rcx, r10	# tmp119, tmp148
# segmented_sieve.c:48:         if (num % 3 == 0 || num % 5 == 0 || num % 7 == 0) {
	cmp	r9, rcx	# tmp149, tmp119
	jnb	.L228	#,
	mov	r13, rax	# tmp132, ivtmp.127
	imul	r13, rbx	# tmp132, tmp150
# segmented_sieve.c:48:         if (num % 3 == 0 || num % 5 == 0 || num % 7 == 0) {
	cmp	r11, r13	# tmp151, tmp132
	jb	.L229	#,
	.p2align 4,,10
	.p2align 3
.L228:
# segmented_sieve.c:49:             p105[i >> 3] &= ~(1 << (i & 7));
	mov	edx, r12d	# _6, i
# segmented_sieve.c:49:             p105[i >> 3] &= ~(1 << (i & 7));
	mov	r13d, r12d	# tmp136, i
# segmented_sieve.c:49:             p105[i >> 3] &= ~(1 << (i & 7));
	sar	edx, 3	# _6,
# segmented_sieve.c:49:             p105[i >> 3] &= ~(1 << (i & 7));
	and	r13d, 7	# tmp136,
# segmented_sieve.c:49:             p105[i >> 3] &= ~(1 << (i & 7));
	movsx	rcx, edx	# _6, _6
# segmented_sieve.c:49:             p105[i >> 3] &= ~(1 << (i & 7));
	shlx	edx, r8d, r13d	# tmp137, tmp147, tmp136
# segmented_sieve.c:49:             p105[i >> 3] &= ~(1 << (i & 7));
	not	edx	# tmp139
	and	BYTE PTR [rsp+rcx], dl	# p105[_6], tmp139
.L229:
# segmented_sieve.c:46:     for (int i = 0; i < 105 * 8; i++) {
	add	rax, 2	# tmp154,
# segmented_sieve.c:46:     for (int i = 0; i < 105 * 8; i++) {
	lea	ecx, 1[r12]	# tmp153,
# /usr/include/x86_64-linux-gnu/bits/string_fortified.h:59:   return __builtin___memset_chk (__dest, __ch, __len,
	mov	r12, rax	# tmp157, tmp154
	imul	r12, rdi	# tmp157, tmp110
# segmented_sieve.c:48:         if (num % 3 == 0 || num % 5 == 0 || num % 7 == 0) {
	cmp	rsi, r12	# tmp111, tmp157
	jnb	.L242	#,
	mov	r13, rax	# tmp180, tmp154
	imul	r13, r10	# tmp180, tmp148
# segmented_sieve.c:48:         if (num % 3 == 0 || num % 5 == 0 || num % 7 == 0) {
	cmp	r9, r13	# tmp149, tmp180
	jnb	.L242	#,
	mov	rdx, rax	# tmp183, tmp154
	imul	rdx, rbx	# tmp183, tmp150
# segmented_sieve.c:48:         if (num % 3 == 0 || num % 5 == 0 || num % 7 == 0) {
	cmp	r11, rdx	# tmp151, tmp183
	jb	.L243	#,
	.p2align 4,,10
	.p2align 3
.L242:
# segmented_sieve.c:49:             p105[i >> 3] &= ~(1 << (i & 7));
	mov	r12d, ecx	# _6, tmp153
# segmented_sieve.c:49:             p105[i >> 3] &= ~(1 << (i & 7));
	mov	edx, ecx	# tmp174, tmp153
# segmented_sieve.c:49:             p105[i >> 3] &= ~(1 << (i & 7));
	sar	r12d, 3	# _6,
# segmented_sieve.c:49:             p105[i >> 3] &= ~(1 << (i & 7));
	and	edx, 7	# tmp174,
# segmented_sieve.c:49:             p105[i >> 3] &= ~(1 << (i & 7));
	movsx	r13, r12d	# _6, _6
# segmented_sieve.c:49:             p105[i >> 3] &= ~(1 << (i & 7));
	shlx	r12d, r8d, edx	# tmp176, tmp147, tmp174
# segmented_sieve.c:49:             p105[i >> 3] &= ~(1 << (i & 7));
	not	r12d	# tmp177
	and	BYTE PTR [rsp+r13], r12b	# p105[_6], tmp177
.L243:
# segmented_sieve.c:46:     for (int i = 0; i < 105 * 8; i++) {
	lea	r12, 2[rax]	# ivtmp.127,
# segmented_sieve.c:46:     for (int i = 0; i < 105 * 8; i++) {
	lea	edx, 1[rcx]	# i,
# /usr/include/x86_64-linux-gnu/bits/string_fortified.h:59:   return __builtin___memset_chk (__dest, __ch, __len,
	mov	r13, r12	# tmp187, ivtmp.127
	imul	r13, rdi	# tmp187, tmp110
# segmented_sieve.c:48:         if (num % 3 == 0 || num % 5 == 0 || num % 7 == 0) {
	cmp	rsi, r13	# tmp111, tmp187
	jnb	.L245	#,
	mov	r13, r12	# tmp196, ivtmp.127
	imul	r13, r10	# tmp196, tmp148
# segmented_sieve.c:48:         if (num % 3 == 0 || num % 5 == 0 || num % 7 == 0) {
	cmp	r9, r13	# tmp149, tmp196
	jnb	.L245	#,
	imul	r12, rbx	# tmp199, tmp150
# segmented_sieve.c:48:         if (num % 3 == 0 || num % 5 == 0 || num % 7 == 0) {
	cmp	r11, r12	# tmp151, tmp199
	jb	.L246	#,
	.p2align 4,,10
	.p2align 3
.L245:
# segmented_sieve.c:49:             p105[i >> 3] &= ~(1 << (i & 7));
	mov	r12d, edx	# _6, i
# segmented_sieve.c:49:             p105[i >> 3] &= ~(1 << (i & 7));
	and	edx, 7	# tmp190,
# segmented_sieve.c:49:             p105[i >> 3] &= ~(1 << (i & 7));
	sar	r12d, 3	# _6,
# segmented_sieve.c:49:             p105[i >> 3] &= ~(1 << (i & 7));
	shlx	edx, r8d, edx	# tmp192, tmp147, tmp190
# segmented_sieve.c:49:             p105[i >> 3] &= ~(1 << (i & 7));
	not	edx	# tmp193
	movsx	r13, r12d	# _6, _6
	and	BYTE PTR [rsp+r13], dl	# p105[_6], tmp193
.L246:
# segmented_sieve.c:46:     for (int i = 0; i < 105 * 8; i++) {
	lea	r12, 4[rax]	# ivtmp.127,
# segmented_sieve.c:46:     for (int i = 0; i < 105 * 8; i++) {
	lea	edx, 2[rcx]	# i,
# /usr/include/x86_64-linux-gnu/bits/string_fortified.h:59:   return __builtin___memset_chk (__dest, __ch, __len,
	mov	r13, r12	# tmp203, ivtmp.127
	imul	r13, rdi	# tmp203, tmp110
# segmented_sieve.c:48:         if (num % 3 == 0 || num % 5 == 0 || num % 7 == 0) {
	cmp	rsi, r13	# tmp111, tmp203
	jnb	.L248	#,
	mov	r13, r12	# tmp212, ivtmp.127
	imul	r13, r10	# tmp212, tmp148
# segmented_sieve.c:48:         if (num % 3 == 0 || num % 5 == 0 || num % 7 == 0) {
	cmp	r9, r13	# tmp149, tmp212
	jnb	.L248	#,
	imul	r12, rbx	# tmp215, tmp150
# segmented_sieve.c:48:         if (num % 3 == 0 || num % 5 == 0 || num % 7 == 0) {
	cmp	r11, r12	# tmp151, tmp215
	jb	.L249	#,
	.p2align 4,,10
	.p2align 3
.L248:
# segmented_sieve.c:49:             p105[i >> 3] &= ~(1 << (i & 7));
	mov	r12d, edx	# _6, i
# segmented_sieve.c:49:             p105[i >> 3] &= ~(1 << (i & 7));
	and	edx, 7	# tmp206,
# segmented_sieve.c:49:             p105[i >> 3] &= ~(1 << (i & 7));
	sar	r12d, 3	# _6,
# segmented_sieve.c:49:             p105[i >> 3] &= ~(1 << (i & 7));
	shlx	edx, r8d, edx	# tmp208, tmp147, tmp206
# segmented_sieve.c:49:             p105[i >> 3] &= ~(1 << (i & 7));
	not	edx	# tmp209
	movsx	r13, r12d	# _6, _6
	and	BYTE PTR [rsp+r13], dl	# p105[_6], tmp209
.L249:
# segmented_sieve.c:46:     for (int i = 0; i < 105 * 8; i++) {
	add	rax, 6	# ivtmp.127,
	cmp	ecx, 837	# tmp153,
# segmented_sieve.c:46:     for (int i = 0; i < 105 * 8; i++) {
	lea	r12d, 3[rcx]	# i,
# segmented_sieve.c:46:     for (int i = 0; i < 105 * 8; i++) {
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
# segmented_sieve.c:53:     for (int i = 0; i < SUPER_PATTERN_BYTES; i += 105) {
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
# segmented_sieve.c:53:     for (int i = 0; i < SUPER_PATTERN_BYTES; i += 105) {
	lea	rdi, 210[rbx]	# ivtmp.118,
# /usr/include/x86_64-linux-gnu/bits/string_fortified.h:29:   return __builtin___memcpy_chk (__dest, __src, __len,
	sub	rcx, rdi	# tmp161, ivtmp.118
	call	__memcpy_chk@PLT	#
	mov	rcx, r12	# tmp163, _55
	mov	edx, 105	#,
	mov	rsi, r13	#, tmp146
# segmented_sieve.c:53:     for (int i = 0; i < SUPER_PATTERN_BYTES; i += 105) {
	lea	rdi, 315[rbx]	# ivtmp.118,
# /usr/include/x86_64-linux-gnu/bits/string_fortified.h:29:   return __builtin___memcpy_chk (__dest, __src, __len,
	sub	rcx, rdi	# tmp163, ivtmp.118
	call	__memcpy_chk@PLT	#
	mov	rcx, r12	# tmp165, _55
	mov	edx, 105	#,
	mov	rsi, r13	#, tmp146
# segmented_sieve.c:53:     for (int i = 0; i < SUPER_PATTERN_BYTES; i += 105) {
	lea	rdi, 420[rbx]	# ivtmp.118,
# /usr/include/x86_64-linux-gnu/bits/string_fortified.h:29:   return __builtin___memcpy_chk (__dest, __src, __len,
	sub	rcx, rdi	# tmp165, ivtmp.118
	call	__memcpy_chk@PLT	#
	mov	rcx, r12	# tmp167, _55
	mov	edx, 105	#,
	mov	rsi, r13	#, tmp146
# segmented_sieve.c:53:     for (int i = 0; i < SUPER_PATTERN_BYTES; i += 105) {
	lea	rdi, 525[rbx]	# ivtmp.118,
# /usr/include/x86_64-linux-gnu/bits/string_fortified.h:29:   return __builtin___memcpy_chk (__dest, __src, __len,
	sub	rcx, rdi	# tmp167, ivtmp.118
	call	__memcpy_chk@PLT	#
	mov	rcx, r12	# tmp169, _55
	mov	edx, 105	#,
	mov	rsi, r13	#, tmp146
# segmented_sieve.c:53:     for (int i = 0; i < SUPER_PATTERN_BYTES; i += 105) {
	lea	rdi, 630[rbx]	# ivtmp.118,
# /usr/include/x86_64-linux-gnu/bits/string_fortified.h:29:   return __builtin___memcpy_chk (__dest, __src, __len,
	sub	rcx, rdi	# tmp169, ivtmp.118
	call	__memcpy_chk@PLT	#
	mov	rcx, r12	# tmp171, _55
	mov	edx, 105	#,
	mov	rsi, r13	#, tmp146
# segmented_sieve.c:53:     for (int i = 0; i < SUPER_PATTERN_BYTES; i += 105) {
	lea	rdi, 735[rbx]	# ivtmp.118,
	add	rbx, 840	# ivtmp.118,
# /usr/include/x86_64-linux-gnu/bits/string_fortified.h:29:   return __builtin___memcpy_chk (__dest, __src, __len,
	sub	rcx, rdi	# tmp171, ivtmp.118
	call	__memcpy_chk@PLT	#
# segmented_sieve.c:53:     for (int i = 0; i < SUPER_PATTERN_BYTES; i += 105) {
	cmp	r12, rbx	# _55, ivtmp.118
	jne	.L231	#,
# segmented_sieve.c:59: }
	mov	rax, QWORD PTR 120[rsp]	# tmp218, D.45649
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
# segmented_sieve.c:87:     uint64_t byte_len = (limit >> 4) + 2;
	mov	r13, rdi	# tmp142, limit
# segmented_sieve.c:86: PrimeState *GetBasePrimes(uint64_t limit, size_t *count) {
	push	r12	#
	.cfi_def_cfa_offset 24
	.cfi_offset 12, -24
# segmented_sieve.c:87:     uint64_t byte_len = (limit >> 4) + 2;
	shr	r13, 4	# tmp142,
# segmented_sieve.c:86: PrimeState *GetBasePrimes(uint64_t limit, size_t *count) {
	mov	r12, rdi	# limit, tmp439
	push	rbp	#
	.cfi_def_cfa_offset 32
	.cfi_offset 6, -32
# segmented_sieve.c:87:     uint64_t byte_len = (limit >> 4) + 2;
	add	r13, 2	# byte_len,
# segmented_sieve.c:86: PrimeState *GetBasePrimes(uint64_t limit, size_t *count) {
	mov	rbp, rsi	# count, tmp440
	push	rbx	#
	.cfi_def_cfa_offset 40
	.cfi_offset 3, -40
# segmented_sieve.c:88:     uint8_t *mem = (uint8_t *) malloc(byte_len);
	mov	rdi, r13	#, byte_len
# segmented_sieve.c:86: PrimeState *GetBasePrimes(uint64_t limit, size_t *count) {
	sub	rsp, 8	#,
	.cfi_def_cfa_offset 48
# segmented_sieve.c:88:     uint8_t *mem = (uint8_t *) malloc(byte_len);
	call	malloc@PLT	#
# /usr/include/x86_64-linux-gnu/bits/string_fortified.h:59:   return __builtin___memset_chk (__dest, __ch, __len,
	mov	rcx, r13	#, byte_len
	mov	rdx, r13	#, byte_len
	mov	esi, 255	#,
# segmented_sieve.c:88:     uint8_t *mem = (uint8_t *) malloc(byte_len);
	mov	rbx, rax	# mem, tmp441
# /usr/include/x86_64-linux-gnu/bits/string_fortified.h:59:   return __builtin___memset_chk (__dest, __ch, __len,
	mov	rdi, rax	#, mem
	call	__memset_chk@PLT	#
# segmented_sieve.c:90:     mem[0] &= 0xFE;
	movzx	r13d, BYTE PTR [rbx]	# pretmp_123, *mem_60
	and	r13d, -2	# pretmp_123,
# segmented_sieve.c:92:     uint64_t i_limit = sqrt(limit);
	test	r12, r12	# limit
# segmented_sieve.c:90:     mem[0] &= 0xFE;
	mov	BYTE PTR [rbx], r13b	# *mem_60, pretmp_123
# segmented_sieve.c:92:     uint64_t i_limit = sqrt(limit);
	js	.L259	#,
	vxorpd	xmm6, xmm6, xmm6	# tmp451
	vcvtsi2sd	xmm0, xmm6, r12	# tmp446, tmp451, limit
.L260:
	vxorpd	xmm1, xmm1, xmm1	# tmp148
	vucomisd	xmm1, xmm0	# tmp148, _4
	ja	.L383	#,
	vsqrtsd	xmm0, xmm0, xmm0	# _5, _4
.L263:
# segmented_sieve.c:92:     uint64_t i_limit = sqrt(limit);
	vmovsd	xmm2, QWORD PTR .LC1[rip]	# tmp149,
	vcomisd	xmm0, xmm2	# _5, tmp149
	jnb	.L264	#,
	vcvttsd2si	rdi, xmm0	# i_limit, _5
.L265:
# segmented_sieve.c:93:     for (uint64_t i = 3; i <= i_limit; i += 2) {
	cmp	rdi, 2	# i_limit,
	jbe	.L266	#,
# segmented_sieve.c:95:             for (uint64_t j = (i * i) >> 1; j < (limit >> 1) + 1; j += i) {
	mov	r10, r12	# _91, limit
# segmented_sieve.c:95:             for (uint64_t j = (i * i) >> 1; j < (limit >> 1) + 1; j += i) {
	mov	ecx, 2	# pretmp_127,
# segmented_sieve.c:93:     for (uint64_t i = 3; i <= i_limit; i += 2) {
	mov	eax, 3	# i,
# segmented_sieve.c:95:             for (uint64_t j = (i * i) >> 1; j < (limit >> 1) + 1; j += i) {
	shr	r10	# _91
	lea	rsi, mask2[rip]	# tmp189,
# segmented_sieve.c:94:         if (mem[i >> 4] & mask[(i >> 1) & 7]) {
	lea	r8, mask[rip]	# tmp190,
# segmented_sieve.c:95:             for (uint64_t j = (i * i) >> 1; j < (limit >> 1) + 1; j += i) {
	lea	r9, 1[r10]	# _92,
	jmp	.L272	#
	.p2align 4,,10
	.p2align 3
.L269:
# segmented_sieve.c:93:     for (uint64_t i = 3; i <= i_limit; i += 2) {
	add	rax, 2	# i,
# segmented_sieve.c:93:     for (uint64_t i = 3; i <= i_limit; i += 2) {
	cmp	rdi, rax	# i_limit, i
	jb	.L266	#,
.L268:
# segmented_sieve.c:94:         if (mem[i >> 4] & mask[(i >> 1) & 7]) {
	mov	rdx, rax	# tmp165, i
# segmented_sieve.c:94:         if (mem[i >> 4] & mask[(i >> 1) & 7]) {
	mov	r13, rax	# tmp163, i
# segmented_sieve.c:94:         if (mem[i >> 4] & mask[(i >> 1) & 7]) {
	shr	rdx	# tmp165
# segmented_sieve.c:94:         if (mem[i >> 4] & mask[(i >> 1) & 7]) {
	shr	r13, 4	# tmp163,
# segmented_sieve.c:94:         if (mem[i >> 4] & mask[(i >> 1) & 7]) {
	and	edx, 7	# tmp166,
# segmented_sieve.c:94:         if (mem[i >> 4] & mask[(i >> 1) & 7]) {
	movzx	r13d, BYTE PTR [rbx+r13]	# pretmp_123, *_122
# segmented_sieve.c:94:         if (mem[i >> 4] & mask[(i >> 1) & 7]) {
	movzx	ecx, BYTE PTR [r8+rdx]	# pretmp_127, mask[_126]
.L272:
# segmented_sieve.c:94:         if (mem[i >> 4] & mask[(i >> 1) & 7]) {
	test	r13b, cl	# pretmp_123, pretmp_127
	je	.L269	#,
# segmented_sieve.c:95:             for (uint64_t j = (i * i) >> 1; j < (limit >> 1) + 1; j += i) {
	mov	rcx, rax	# tmp154, i
	imul	rcx, rax	# tmp154, i
# segmented_sieve.c:95:             for (uint64_t j = (i * i) >> 1; j < (limit >> 1) + 1; j += i) {
	shr	rcx	# j
# segmented_sieve.c:95:             for (uint64_t j = (i * i) >> 1; j < (limit >> 1) + 1; j += i) {
	cmp	rcx, r9	# j, _92
	jnb	.L269	#,
# segmented_sieve.c:95:             for (uint64_t j = (i * i) >> 1; j < (limit >> 1) + 1; j += i) {
	xor	r13d, r13d	# j
	cmp	rax, 1	# i,
	jne	.L384	#,
	lea	rax, 1[r10]	# tmp200,
	and	eax, 7	# tmp201,
	je	.L270	#,
	cmp	rax, 1	# tmp201,
	je	.L347	#,
	cmp	rax, 2	# tmp201,
	je	.L348	#,
	cmp	rax, 3	# tmp201,
	je	.L349	#,
	cmp	rax, 4	# tmp201,
	je	.L350	#,
	cmp	rax, 5	# tmp201,
	je	.L351	#,
	cmp	rax, 6	# tmp201,
	je	.L352	#,
# segmented_sieve.c:96:                 mem[j >> 3] &= mask2[j & 7];
	movzx	r11d, BYTE PTR [rsi]	# mask2[_103], mask2[_103]
	and	BYTE PTR [rbx], r11b	# *_35, mask2[_103]
# segmented_sieve.c:95:             for (uint64_t j = (i * i) >> 1; j < (limit >> 1) + 1; j += i) {
	mov	r13d, 1	# j,
.L352:
# segmented_sieve.c:96:                 mem[j >> 3] &= mask2[j & 7];
	mov	rdx, r13	# tmp409, j
# segmented_sieve.c:96:                 mem[j >> 3] &= mask2[j & 7];
	mov	rcx, r13	# tmp411, j
# segmented_sieve.c:95:             for (uint64_t j = (i * i) >> 1; j < (limit >> 1) + 1; j += i) {
	add	r13, 1	# j,
# segmented_sieve.c:96:                 mem[j >> 3] &= mask2[j & 7];
	shr	rdx, 3	# tmp409,
# segmented_sieve.c:96:                 mem[j >> 3] &= mask2[j & 7];
	and	ecx, 7	# tmp411,
# segmented_sieve.c:96:                 mem[j >> 3] &= mask2[j & 7];
	movzx	eax, BYTE PTR [rsi+rcx]	# mask2[_103], mask2[_103]
	and	BYTE PTR [rbx+rdx], al	# *_35, mask2[_103]
.L351:
# segmented_sieve.c:96:                 mem[j >> 3] &= mask2[j & 7];
	mov	r11, r13	# tmp414, j
# segmented_sieve.c:96:                 mem[j >> 3] &= mask2[j & 7];
	mov	rdx, r13	# tmp416, j
# segmented_sieve.c:95:             for (uint64_t j = (i * i) >> 1; j < (limit >> 1) + 1; j += i) {
	add	r13, 1	# j,
# segmented_sieve.c:96:                 mem[j >> 3] &= mask2[j & 7];
	shr	r11, 3	# tmp414,
# segmented_sieve.c:96:                 mem[j >> 3] &= mask2[j & 7];
	and	edx, 7	# tmp416,
# segmented_sieve.c:96:                 mem[j >> 3] &= mask2[j & 7];
	movzx	ecx, BYTE PTR [rsi+rdx]	# mask2[_103], mask2[_103]
	and	BYTE PTR [rbx+r11], cl	# *_35, mask2[_103]
.L350:
# segmented_sieve.c:96:                 mem[j >> 3] &= mask2[j & 7];
	mov	rax, r13	# tmp419, j
# segmented_sieve.c:96:                 mem[j >> 3] &= mask2[j & 7];
	mov	r11, r13	# tmp421, j
# segmented_sieve.c:95:             for (uint64_t j = (i * i) >> 1; j < (limit >> 1) + 1; j += i) {
	add	r13, 1	# j,
# segmented_sieve.c:96:                 mem[j >> 3] &= mask2[j & 7];
	shr	rax, 3	# tmp419,
# segmented_sieve.c:96:                 mem[j >> 3] &= mask2[j & 7];
	and	r11d, 7	# tmp421,
# segmented_sieve.c:96:                 mem[j >> 3] &= mask2[j & 7];
	movzx	edx, BYTE PTR [rsi+r11]	# mask2[_103], mask2[_103]
	and	BYTE PTR [rbx+rax], dl	# *_35, mask2[_103]
.L349:
# segmented_sieve.c:96:                 mem[j >> 3] &= mask2[j & 7];
	mov	rax, r13	# tmp424, j
# segmented_sieve.c:96:                 mem[j >> 3] &= mask2[j & 7];
	mov	rcx, r13	# tmp426, j
# segmented_sieve.c:95:             for (uint64_t j = (i * i) >> 1; j < (limit >> 1) + 1; j += i) {
	add	r13, 1	# j,
# segmented_sieve.c:96:                 mem[j >> 3] &= mask2[j & 7];
	shr	rax, 3	# tmp424,
# segmented_sieve.c:96:                 mem[j >> 3] &= mask2[j & 7];
	and	ecx, 7	# tmp426,
# segmented_sieve.c:96:                 mem[j >> 3] &= mask2[j & 7];
	movzx	r11d, BYTE PTR [rsi+rcx]	# mask2[_103], mask2[_103]
	and	BYTE PTR [rbx+rax], r11b	# *_35, mask2[_103]
.L348:
# segmented_sieve.c:96:                 mem[j >> 3] &= mask2[j & 7];
	mov	rdx, r13	# tmp429, j
# segmented_sieve.c:96:                 mem[j >> 3] &= mask2[j & 7];
	mov	rax, r13	# tmp431, j
# segmented_sieve.c:95:             for (uint64_t j = (i * i) >> 1; j < (limit >> 1) + 1; j += i) {
	add	r13, 1	# j,
# segmented_sieve.c:96:                 mem[j >> 3] &= mask2[j & 7];
	shr	rdx, 3	# tmp429,
# segmented_sieve.c:96:                 mem[j >> 3] &= mask2[j & 7];
	and	eax, 7	# tmp431,
# segmented_sieve.c:96:                 mem[j >> 3] &= mask2[j & 7];
	movzx	ecx, BYTE PTR [rsi+rax]	# mask2[_103], mask2[_103]
	and	BYTE PTR [rbx+rdx], cl	# *_35, mask2[_103]
.L347:
# segmented_sieve.c:96:                 mem[j >> 3] &= mask2[j & 7];
	mov	r11, r13	# tmp434, j
# segmented_sieve.c:96:                 mem[j >> 3] &= mask2[j & 7];
	mov	rdx, r13	# tmp436, j
	mov	rcx, r13	# j, j
# segmented_sieve.c:95:             for (uint64_t j = (i * i) >> 1; j < (limit >> 1) + 1; j += i) {
	add	r13, 1	# j,
# segmented_sieve.c:96:                 mem[j >> 3] &= mask2[j & 7];
	shr	r11, 3	# tmp434,
# segmented_sieve.c:96:                 mem[j >> 3] &= mask2[j & 7];
	and	edx, 7	# tmp436,
# segmented_sieve.c:96:                 mem[j >> 3] &= mask2[j & 7];
	movzx	eax, BYTE PTR [rsi+rdx]	# mask2[_103], mask2[_103]
	and	BYTE PTR [rbx+r11], al	# *_35, mask2[_103]
# segmented_sieve.c:95:             for (uint64_t j = (i * i) >> 1; j < (limit >> 1) + 1; j += i) {
	cmp	rcx, r10	# j, _91
	je	.L389	#,
.L270:
# segmented_sieve.c:96:                 mem[j >> 3] &= mask2[j & 7];
	mov	r11, r13	# tmp159, j
# segmented_sieve.c:96:                 mem[j >> 3] &= mask2[j & 7];
	mov	rdx, r13	# tmp161, j
# segmented_sieve.c:96:                 mem[j >> 3] &= mask2[j & 7];
	shr	r11, 3	# tmp159,
# segmented_sieve.c:96:                 mem[j >> 3] &= mask2[j & 7];
	and	edx, 7	# tmp161,
# segmented_sieve.c:96:                 mem[j >> 3] &= mask2[j & 7];
	movzx	eax, BYTE PTR [rsi+rdx]	# mask2[_103], mask2[_103]
	and	BYTE PTR [rbx+r11], al	# *_35, mask2[_103]
# segmented_sieve.c:95:             for (uint64_t j = (i * i) >> 1; j < (limit >> 1) + 1; j += i) {
	lea	r11, 1[r13]	# tmp202,
	lea	rax, 2[r13]	# j,
# segmented_sieve.c:96:                 mem[j >> 3] &= mask2[j & 7];
	mov	rcx, r11	# tmp207, tmp202
# segmented_sieve.c:96:                 mem[j >> 3] &= mask2[j & 7];
	and	r11d, 7	# tmp209,
# segmented_sieve.c:96:                 mem[j >> 3] &= mask2[j & 7];
	movzx	edx, BYTE PTR [rsi+r11]	# mask2[_103], mask2[_103]
# segmented_sieve.c:96:                 mem[j >> 3] &= mask2[j & 7];
	shr	rcx, 3	# tmp207,
	mov	r11, rax	# tmp213, j
# segmented_sieve.c:96:                 mem[j >> 3] &= mask2[j & 7];
	and	eax, 7	# tmp215,
# segmented_sieve.c:96:                 mem[j >> 3] &= mask2[j & 7];
	and	BYTE PTR [rbx+rcx], dl	# *_35, mask2[_103]
# segmented_sieve.c:96:                 mem[j >> 3] &= mask2[j & 7];
	shr	r11, 3	# tmp213,
# segmented_sieve.c:95:             for (uint64_t j = (i * i) >> 1; j < (limit >> 1) + 1; j += i) {
	lea	rdx, 3[r13]	# j,
# segmented_sieve.c:96:                 mem[j >> 3] &= mask2[j & 7];
	movzx	ecx, BYTE PTR [rsi+rax]	# mask2[_103], mask2[_103]
	and	BYTE PTR [rbx+r11], cl	# *_35, mask2[_103]
# segmented_sieve.c:96:                 mem[j >> 3] &= mask2[j & 7];
	mov	r11, rdx	# tmp219, j
# segmented_sieve.c:96:                 mem[j >> 3] &= mask2[j & 7];
	and	edx, 7	# tmp221,
# segmented_sieve.c:96:                 mem[j >> 3] &= mask2[j & 7];
	movzx	eax, BYTE PTR [rsi+rdx]	# mask2[_103], mask2[_103]
# segmented_sieve.c:96:                 mem[j >> 3] &= mask2[j & 7];
	shr	r11, 3	# tmp219,
# segmented_sieve.c:95:             for (uint64_t j = (i * i) >> 1; j < (limit >> 1) + 1; j += i) {
	lea	rdx, 4[r13]	# j,
# segmented_sieve.c:96:                 mem[j >> 3] &= mask2[j & 7];
	and	BYTE PTR [rbx+r11], al	# *_35, mask2[_103]
# segmented_sieve.c:96:                 mem[j >> 3] &= mask2[j & 7];
	mov	rcx, rdx	# tmp225, j
# segmented_sieve.c:95:             for (uint64_t j = (i * i) >> 1; j < (limit >> 1) + 1; j += i) {
	lea	rax, 5[r13]	# j,
# segmented_sieve.c:96:                 mem[j >> 3] &= mask2[j & 7];
	and	edx, 7	# tmp227,
# segmented_sieve.c:96:                 mem[j >> 3] &= mask2[j & 7];
	movzx	r11d, BYTE PTR [rsi+rdx]	# mask2[_103], mask2[_103]
# segmented_sieve.c:96:                 mem[j >> 3] &= mask2[j & 7];
	shr	rcx, 3	# tmp225,
	mov	rdx, rax	# tmp231, j
# segmented_sieve.c:96:                 mem[j >> 3] &= mask2[j & 7];
	and	eax, 7	# tmp233,
# segmented_sieve.c:96:                 mem[j >> 3] &= mask2[j & 7];
	and	BYTE PTR [rbx+rcx], r11b	# *_35, mask2[_103]
# segmented_sieve.c:96:                 mem[j >> 3] &= mask2[j & 7];
	shr	rdx, 3	# tmp231,
# segmented_sieve.c:95:             for (uint64_t j = (i * i) >> 1; j < (limit >> 1) + 1; j += i) {
	lea	r11, 6[r13]	# j,
# segmented_sieve.c:96:                 mem[j >> 3] &= mask2[j & 7];
	movzx	ecx, BYTE PTR [rsi+rax]	# mask2[_103], mask2[_103]
	and	BYTE PTR [rbx+rdx], cl	# *_35, mask2[_103]
# segmented_sieve.c:96:                 mem[j >> 3] &= mask2[j & 7];
	mov	rdx, r11	# tmp237, j
# segmented_sieve.c:96:                 mem[j >> 3] &= mask2[j & 7];
	and	r11d, 7	# tmp239,
# segmented_sieve.c:96:                 mem[j >> 3] &= mask2[j & 7];
	shr	rdx, 3	# tmp237,
# segmented_sieve.c:96:                 mem[j >> 3] &= mask2[j & 7];
	movzx	eax, BYTE PTR [rsi+r11]	# mask2[_103], mask2[_103]
	and	BYTE PTR [rbx+rdx], al	# *_35, mask2[_103]
# segmented_sieve.c:95:             for (uint64_t j = (i * i) >> 1; j < (limit >> 1) + 1; j += i) {
	lea	rdx, 7[r13]	# j,
	add	r13, 8	# j,
# segmented_sieve.c:96:                 mem[j >> 3] &= mask2[j & 7];
	mov	rcx, rdx	# tmp243, j
# segmented_sieve.c:96:                 mem[j >> 3] &= mask2[j & 7];
	mov	r11, rdx	# tmp245, j
# segmented_sieve.c:96:                 mem[j >> 3] &= mask2[j & 7];
	shr	rcx, 3	# tmp243,
# segmented_sieve.c:96:                 mem[j >> 3] &= mask2[j & 7];
	and	r11d, 7	# tmp245,
# segmented_sieve.c:96:                 mem[j >> 3] &= mask2[j & 7];
	movzx	eax, BYTE PTR [rsi+r11]	# mask2[_103], mask2[_103]
	and	BYTE PTR [rbx+rcx], al	# *_35, mask2[_103]
# segmented_sieve.c:95:             for (uint64_t j = (i * i) >> 1; j < (limit >> 1) + 1; j += i) {
	cmp	rdx, r10	# j, _91
	jne	.L270	#,
.L389:
# segmented_sieve.c:93:     for (uint64_t i = 3; i <= i_limit; i += 2) {
	mov	eax, 3	# i,
	jmp	.L268	#
	.p2align 4,,10
	.p2align 3
.L266:
# segmented_sieve.c:101:     for (uint64_t i = 3; i <= limit; i += 2) {
	cmp	r12, 2	# limit,
	jbe	.L273	#,
	lea	rdi, -3[r12]	# tmp196,
# segmented_sieve.c:100:     size_t c = 0;
	xor	eax, eax	# c
# segmented_sieve.c:101:     for (uint64_t i = 3; i <= limit; i += 2) {
	mov	r13d, 2	# pretmp_142,
# segmented_sieve.c:101:     for (uint64_t i = 3; i <= limit; i += 2) {
	mov	r9d, 3	# i,
	shr	rdi	# tmp195
# segmented_sieve.c:102:         if (mem[i >> 4] & mask[(i >> 1) & 7]) c++;
	lea	r10, mask[rip]	# tmp188,
	and	edi, 7	# tmp197,
	je	.L276	#,
# segmented_sieve.c:102:         if (mem[i >> 4] & mask[(i >> 1) & 7]) c++;
	and	r13b, BYTE PTR [rbx+rax]	# tmp370, *_24
# segmented_sieve.c:102:         if (mem[i >> 4] & mask[(i >> 1) & 7]) c++;
	xor	eax, eax	# c
# segmented_sieve.c:101:     for (uint64_t i = 3; i <= limit; i += 2) {
	mov	r9d, 5	# i,
# segmented_sieve.c:102:         if (mem[i >> 4] & mask[(i >> 1) & 7]) c++;
	cmp	r13b, 1	# tmp370,
	setnb	al	#, c
# segmented_sieve.c:101:     for (uint64_t i = 3; i <= limit; i += 2) {
	cmp	r12, 5	# limit,
	jb	.L275	#,
	cmp	rdi, 1	# tmp197,
# segmented_sieve.c:102:         if (mem[i >> 4] & mask[(i >> 1) & 7]) c++;
	movzx	r13d, BYTE PTR 2[r10]	# pretmp_142, mask[_141]
	je	.L276	#,
	cmp	rdi, 2	# tmp197,
	je	.L354	#,
	cmp	rdi, 3	# tmp197,
	je	.L355	#,
	cmp	rdi, 4	# tmp197,
	je	.L356	#,
	cmp	rdi, 5	# tmp197,
	je	.L357	#,
	cmp	rdi, 6	# tmp197,
	je	.L358	#,
# segmented_sieve.c:102:         if (mem[i >> 4] & mask[(i >> 1) & 7]) c++;
	and	r13b, BYTE PTR [rbx]	# tmp375, *_24
# segmented_sieve.c:101:     for (uint64_t i = 3; i <= limit; i += 2) {
	mov	r9d, 7	# i,
# segmented_sieve.c:102:         if (mem[i >> 4] & mask[(i >> 1) & 7]) c++;
	cmp	r13b, 1	# tmp375,
# segmented_sieve.c:102:         if (mem[i >> 4] & mask[(i >> 1) & 7]) c++;
	movzx	r13d, BYTE PTR 3[r10]	# pretmp_142, mask[_141]
# segmented_sieve.c:102:         if (mem[i >> 4] & mask[(i >> 1) & 7]) c++;
	sbb	rax, -1	# c,
.L358:
# segmented_sieve.c:102:         if (mem[i >> 4] & mask[(i >> 1) & 7]) c++;
	mov	rsi, r9	# tmp379, i
	shr	rsi, 4	# tmp379,
# segmented_sieve.c:102:         if (mem[i >> 4] & mask[(i >> 1) & 7]) c++;
	and	r13b, BYTE PTR [rbx+rsi]	# tmp380, *_24
# segmented_sieve.c:102:         if (mem[i >> 4] & mask[(i >> 1) & 7]) c++;
	cmp	r13b, 1	# tmp380,
	sbb	rax, -1	# c,
# segmented_sieve.c:101:     for (uint64_t i = 3; i <= limit; i += 2) {
	add	r9, 2	# i,
# segmented_sieve.c:102:         if (mem[i >> 4] & mask[(i >> 1) & 7]) c++;
	mov	r8, r9	# tmp382, i
	shr	r8	# tmp382
# segmented_sieve.c:102:         if (mem[i >> 4] & mask[(i >> 1) & 7]) c++;
	and	r8d, 7	# tmp383,
# segmented_sieve.c:102:         if (mem[i >> 4] & mask[(i >> 1) & 7]) c++;
	movzx	r13d, BYTE PTR [r10+r8]	# pretmp_142, mask[_141]
.L357:
# segmented_sieve.c:102:         if (mem[i >> 4] & mask[(i >> 1) & 7]) c++;
	mov	rcx, r9	# tmp384, i
	shr	rcx, 4	# tmp384,
# segmented_sieve.c:102:         if (mem[i >> 4] & mask[(i >> 1) & 7]) c++;
	and	r13b, BYTE PTR [rbx+rcx]	# tmp385, *_24
# segmented_sieve.c:102:         if (mem[i >> 4] & mask[(i >> 1) & 7]) c++;
	cmp	r13b, 1	# tmp385,
	sbb	rax, -1	# c,
# segmented_sieve.c:101:     for (uint64_t i = 3; i <= limit; i += 2) {
	add	r9, 2	# i,
# segmented_sieve.c:102:         if (mem[i >> 4] & mask[(i >> 1) & 7]) c++;
	mov	r13, r9	# tmp387, i
	shr	r13	# tmp387
# segmented_sieve.c:102:         if (mem[i >> 4] & mask[(i >> 1) & 7]) c++;
	and	r13d, 7	# tmp388,
# segmented_sieve.c:102:         if (mem[i >> 4] & mask[(i >> 1) & 7]) c++;
	movzx	r13d, BYTE PTR [r10+r13]	# pretmp_142, mask[_141]
.L356:
# segmented_sieve.c:102:         if (mem[i >> 4] & mask[(i >> 1) & 7]) c++;
	mov	r11, r9	# tmp389, i
	shr	r11, 4	# tmp389,
# segmented_sieve.c:102:         if (mem[i >> 4] & mask[(i >> 1) & 7]) c++;
	and	r13b, BYTE PTR [rbx+r11]	# tmp390, *_24
# segmented_sieve.c:102:         if (mem[i >> 4] & mask[(i >> 1) & 7]) c++;
	cmp	r13b, 1	# tmp390,
	sbb	rax, -1	# c,
# segmented_sieve.c:101:     for (uint64_t i = 3; i <= limit; i += 2) {
	add	r9, 2	# i,
# segmented_sieve.c:102:         if (mem[i >> 4] & mask[(i >> 1) & 7]) c++;
	mov	rdx, r9	# tmp392, i
	shr	rdx	# tmp392
# segmented_sieve.c:102:         if (mem[i >> 4] & mask[(i >> 1) & 7]) c++;
	and	edx, 7	# tmp393,
# segmented_sieve.c:102:         if (mem[i >> 4] & mask[(i >> 1) & 7]) c++;
	movzx	r13d, BYTE PTR [r10+rdx]	# pretmp_142, mask[_141]
.L355:
# segmented_sieve.c:102:         if (mem[i >> 4] & mask[(i >> 1) & 7]) c++;
	mov	rdi, r9	# tmp394, i
	shr	rdi, 4	# tmp394,
# segmented_sieve.c:102:         if (mem[i >> 4] & mask[(i >> 1) & 7]) c++;
	and	r13b, BYTE PTR [rbx+rdi]	# tmp395, *_24
# segmented_sieve.c:102:         if (mem[i >> 4] & mask[(i >> 1) & 7]) c++;
	cmp	r13b, 1	# tmp395,
	sbb	rax, -1	# c,
# segmented_sieve.c:101:     for (uint64_t i = 3; i <= limit; i += 2) {
	add	r9, 2	# i,
# segmented_sieve.c:102:         if (mem[i >> 4] & mask[(i >> 1) & 7]) c++;
	mov	rsi, r9	# tmp397, i
	shr	rsi	# tmp397
# segmented_sieve.c:102:         if (mem[i >> 4] & mask[(i >> 1) & 7]) c++;
	and	esi, 7	# tmp398,
# segmented_sieve.c:102:         if (mem[i >> 4] & mask[(i >> 1) & 7]) c++;
	movzx	r13d, BYTE PTR [r10+rsi]	# pretmp_142, mask[_141]
.L354:
# segmented_sieve.c:102:         if (mem[i >> 4] & mask[(i >> 1) & 7]) c++;
	mov	r8, r9	# tmp399, i
	shr	r8, 4	# tmp399,
# segmented_sieve.c:102:         if (mem[i >> 4] & mask[(i >> 1) & 7]) c++;
	and	r13b, BYTE PTR [rbx+r8]	# tmp400, *_24
# segmented_sieve.c:102:         if (mem[i >> 4] & mask[(i >> 1) & 7]) c++;
	cmp	r13b, 1	# tmp400,
	sbb	rax, -1	# c,
# segmented_sieve.c:101:     for (uint64_t i = 3; i <= limit; i += 2) {
	add	r9, 2	# i,
# segmented_sieve.c:102:         if (mem[i >> 4] & mask[(i >> 1) & 7]) c++;
	mov	rcx, r9	# tmp402, i
	shr	rcx	# tmp402
# segmented_sieve.c:102:         if (mem[i >> 4] & mask[(i >> 1) & 7]) c++;
	and	ecx, 7	# tmp403,
# segmented_sieve.c:102:         if (mem[i >> 4] & mask[(i >> 1) & 7]) c++;
	movzx	r13d, BYTE PTR [r10+rcx]	# pretmp_142, mask[_141]
	jmp	.L276	#
	.p2align 4,,10
	.p2align 3
.L391:
# segmented_sieve.c:102:         if (mem[i >> 4] & mask[(i >> 1) & 7]) c++;
	mov	r13, rdx	# tmp170, tmp198
# segmented_sieve.c:102:         if (mem[i >> 4] & mask[(i >> 1) & 7]) c++;
	shr	rdx, 4	# tmp250,
# segmented_sieve.c:101:     for (uint64_t i = 3; i <= limit; i += 2) {
	lea	r8, 4[r9]	# i,
	lea	r11, 6[r9]	# i,
# segmented_sieve.c:102:         if (mem[i >> 4] & mask[(i >> 1) & 7]) c++;
	shr	r13	# tmp170
	mov	rdi, r8	# tmp255, i
# segmented_sieve.c:102:         if (mem[i >> 4] & mask[(i >> 1) & 7]) c++;
	and	r13d, 7	# tmp171,
# segmented_sieve.c:102:         if (mem[i >> 4] & mask[(i >> 1) & 7]) c++;
	movzx	esi, BYTE PTR [r10+r13]	# pretmp_142, mask[_141]
# segmented_sieve.c:102:         if (mem[i >> 4] & mask[(i >> 1) & 7]) c++;
	and	sil, BYTE PTR [rbx+rdx]	# pretmp_142, *_24
# segmented_sieve.c:102:         if (mem[i >> 4] & mask[(i >> 1) & 7]) c++;
	mov	r13, r11	# tmp263, i
# segmented_sieve.c:102:         if (mem[i >> 4] & mask[(i >> 1) & 7]) c++;
	cmp	sil, 1	# tmp251,
# segmented_sieve.c:101:     for (uint64_t i = 3; i <= limit; i += 2) {
	lea	rsi, 8[r9]	# i,
# segmented_sieve.c:102:         if (mem[i >> 4] & mask[(i >> 1) & 7]) c++;
	sbb	rax, -1	# c,
# segmented_sieve.c:102:         if (mem[i >> 4] & mask[(i >> 1) & 7]) c++;
	shr	rdi	# tmp255
	mov	rcx, rsi	# tmp271, i
# segmented_sieve.c:102:         if (mem[i >> 4] & mask[(i >> 1) & 7]) c++;
	and	edi, 7	# tmp256,
# segmented_sieve.c:102:         if (mem[i >> 4] & mask[(i >> 1) & 7]) c++;
	shr	r8, 4	# tmp258,
# segmented_sieve.c:102:         if (mem[i >> 4] & mask[(i >> 1) & 7]) c++;
	movzx	edx, BYTE PTR [r10+rdi]	# pretmp_142, mask[_141]
# segmented_sieve.c:102:         if (mem[i >> 4] & mask[(i >> 1) & 7]) c++;
	and	dl, BYTE PTR [rbx+r8]	# pretmp_142, *_24
# segmented_sieve.c:101:     for (uint64_t i = 3; i <= limit; i += 2) {
	lea	r8, 10[r9]	# i,
# segmented_sieve.c:102:         if (mem[i >> 4] & mask[(i >> 1) & 7]) c++;
	cmp	dl, 1	# tmp259,
# segmented_sieve.c:102:         if (mem[i >> 4] & mask[(i >> 1) & 7]) c++;
	mov	rdi, r8	# tmp279, i
# segmented_sieve.c:102:         if (mem[i >> 4] & mask[(i >> 1) & 7]) c++;
	sbb	rax, -1	# c,
# segmented_sieve.c:102:         if (mem[i >> 4] & mask[(i >> 1) & 7]) c++;
	shr	r13	# tmp263
# segmented_sieve.c:102:         if (mem[i >> 4] & mask[(i >> 1) & 7]) c++;
	and	r13d, 7	# tmp264,
# segmented_sieve.c:102:         if (mem[i >> 4] & mask[(i >> 1) & 7]) c++;
	shr	r11, 4	# tmp266,
# segmented_sieve.c:102:         if (mem[i >> 4] & mask[(i >> 1) & 7]) c++;
	movzx	edx, BYTE PTR [r10+r13]	# pretmp_142, mask[_141]
# segmented_sieve.c:102:         if (mem[i >> 4] & mask[(i >> 1) & 7]) c++;
	and	dl, BYTE PTR [rbx+r11]	# pretmp_142, *_24
# segmented_sieve.c:101:     for (uint64_t i = 3; i <= limit; i += 2) {
	lea	r11, 12[r9]	# i,
# segmented_sieve.c:102:         if (mem[i >> 4] & mask[(i >> 1) & 7]) c++;
	cmp	dl, 1	# tmp267,
# segmented_sieve.c:102:         if (mem[i >> 4] & mask[(i >> 1) & 7]) c++;
	mov	r13, r11	# tmp287, i
# segmented_sieve.c:102:         if (mem[i >> 4] & mask[(i >> 1) & 7]) c++;
	sbb	rax, -1	# c,
# segmented_sieve.c:102:         if (mem[i >> 4] & mask[(i >> 1) & 7]) c++;
	shr	rcx	# tmp271
# segmented_sieve.c:102:         if (mem[i >> 4] & mask[(i >> 1) & 7]) c++;
	and	ecx, 7	# tmp272,
# segmented_sieve.c:102:         if (mem[i >> 4] & mask[(i >> 1) & 7]) c++;
	shr	rsi, 4	# tmp274,
# segmented_sieve.c:102:         if (mem[i >> 4] & mask[(i >> 1) & 7]) c++;
	movzx	edx, BYTE PTR [r10+rcx]	# pretmp_142, mask[_141]
# segmented_sieve.c:102:         if (mem[i >> 4] & mask[(i >> 1) & 7]) c++;
	and	dl, BYTE PTR [rbx+rsi]	# pretmp_142, *_24
# segmented_sieve.c:101:     for (uint64_t i = 3; i <= limit; i += 2) {
	lea	rsi, 14[r9]	# i,
# segmented_sieve.c:102:         if (mem[i >> 4] & mask[(i >> 1) & 7]) c++;
	cmp	dl, 1	# tmp275,
# segmented_sieve.c:102:         if (mem[i >> 4] & mask[(i >> 1) & 7]) c++;
	mov	rcx, rsi	# tmp295, i
# segmented_sieve.c:102:         if (mem[i >> 4] & mask[(i >> 1) & 7]) c++;
	sbb	rax, -1	# c,
# segmented_sieve.c:102:         if (mem[i >> 4] & mask[(i >> 1) & 7]) c++;
	shr	rdi	# tmp279
# segmented_sieve.c:102:         if (mem[i >> 4] & mask[(i >> 1) & 7]) c++;
	shr	r8, 4	# tmp282,
# segmented_sieve.c:102:         if (mem[i >> 4] & mask[(i >> 1) & 7]) c++;
	and	edi, 7	# tmp280,
# segmented_sieve.c:102:         if (mem[i >> 4] & mask[(i >> 1) & 7]) c++;
	movzx	edx, BYTE PTR [r10+rdi]	# pretmp_142, mask[_141]
# segmented_sieve.c:102:         if (mem[i >> 4] & mask[(i >> 1) & 7]) c++;
	and	dl, BYTE PTR [rbx+r8]	# pretmp_142, *_24
# segmented_sieve.c:102:         if (mem[i >> 4] & mask[(i >> 1) & 7]) c++;
	cmp	dl, 1	# tmp283,
	sbb	rax, -1	# c,
# segmented_sieve.c:102:         if (mem[i >> 4] & mask[(i >> 1) & 7]) c++;
	shr	r13	# tmp287
# segmented_sieve.c:102:         if (mem[i >> 4] & mask[(i >> 1) & 7]) c++;
	and	r13d, 7	# tmp288,
# segmented_sieve.c:102:         if (mem[i >> 4] & mask[(i >> 1) & 7]) c++;
	shr	r11, 4	# tmp290,
# segmented_sieve.c:102:         if (mem[i >> 4] & mask[(i >> 1) & 7]) c++;
	movzx	edx, BYTE PTR [r10+r13]	# pretmp_142, mask[_141]
# segmented_sieve.c:102:         if (mem[i >> 4] & mask[(i >> 1) & 7]) c++;
	and	dl, BYTE PTR [rbx+r11]	# pretmp_142, *_24
# segmented_sieve.c:102:         if (mem[i >> 4] & mask[(i >> 1) & 7]) c++;
	cmp	dl, 1	# tmp291,
	sbb	rax, -1	# c,
# segmented_sieve.c:102:         if (mem[i >> 4] & mask[(i >> 1) & 7]) c++;
	shr	rcx	# tmp295
# segmented_sieve.c:102:         if (mem[i >> 4] & mask[(i >> 1) & 7]) c++;
	and	ecx, 7	# tmp296,
# segmented_sieve.c:102:         if (mem[i >> 4] & mask[(i >> 1) & 7]) c++;
	shr	rsi, 4	# tmp298,
# segmented_sieve.c:102:         if (mem[i >> 4] & mask[(i >> 1) & 7]) c++;
	movzx	edx, BYTE PTR [r10+rcx]	# pretmp_142, mask[_141]
# segmented_sieve.c:102:         if (mem[i >> 4] & mask[(i >> 1) & 7]) c++;
	and	dl, BYTE PTR [rbx+rsi]	# pretmp_142, *_24
# segmented_sieve.c:102:         if (mem[i >> 4] & mask[(i >> 1) & 7]) c++;
	cmp	dl, 1	# tmp299,
	sbb	rax, -1	# c,
# segmented_sieve.c:101:     for (uint64_t i = 3; i <= limit; i += 2) {
	add	r9, 16	# i,
# segmented_sieve.c:102:         if (mem[i >> 4] & mask[(i >> 1) & 7]) c++;
	mov	r8, r9	# tmp301, i
	shr	r8	# tmp301
# segmented_sieve.c:102:         if (mem[i >> 4] & mask[(i >> 1) & 7]) c++;
	and	r8d, 7	# tmp302,
# segmented_sieve.c:102:         if (mem[i >> 4] & mask[(i >> 1) & 7]) c++;
	movzx	r13d, BYTE PTR [r10+r8]	# pretmp_142, mask[_141]
.L276:
# segmented_sieve.c:102:         if (mem[i >> 4] & mask[(i >> 1) & 7]) c++;
	mov	r11, r9	# tmp167, i
# segmented_sieve.c:101:     for (uint64_t i = 3; i <= limit; i += 2) {
	lea	rdx, 2[r9]	# tmp198,
# segmented_sieve.c:102:         if (mem[i >> 4] & mask[(i >> 1) & 7]) c++;
	shr	r11, 4	# tmp167,
# segmented_sieve.c:102:         if (mem[i >> 4] & mask[(i >> 1) & 7]) c++;
	and	r13b, BYTE PTR [rbx+r11]	# tmp168, *_24
# segmented_sieve.c:102:         if (mem[i >> 4] & mask[(i >> 1) & 7]) c++;
	cmp	r13b, 1	# tmp168,
	sbb	rax, -1	# c,
# segmented_sieve.c:101:     for (uint64_t i = 3; i <= limit; i += 2) {
	cmp	r12, rdx	# limit, tmp198
	jnb	.L391	#,
.L275:
# segmented_sieve.c:104:     PrimeState *primes = (PrimeState *) malloc(sizeof(PrimeState) * c);
	sal	rax, 4	# c,
	mov	rdi, rax	# tmp173, c
	call	malloc@PLT	#
	lea	r9, -3[r12]	# tmp192,
# segmented_sieve.c:105:     size_t idx = 0;
	xor	esi, esi	# idx
# segmented_sieve.c:106:     for (uint64_t i = 3; i <= limit; i += 2) {
	mov	ecx, 3	# i,
	shr	r9	# tmp191
# segmented_sieve.c:104:     PrimeState *primes = (PrimeState *) malloc(sizeof(PrimeState) * c);
	mov	r13, rax	# <retval>, tmp444
# segmented_sieve.c:107:         if (mem[i >> 4] & mask[(i >> 1) & 7]) {
	lea	r10, mask[rip]	# tmp187,
# segmented_sieve.c:104:     PrimeState *primes = (PrimeState *) malloc(sizeof(PrimeState) * c);
	mov	eax, 2	# pretmp_147,
	and	r9d, 3	# tmp193,
	je	.L279	#,
# segmented_sieve.c:107:         if (mem[i >> 4] & mask[(i >> 1) & 7]) {
	and	al, BYTE PTR [rbx+rsi]	# tmp308, *_32
# segmented_sieve.c:107:         if (mem[i >> 4] & mask[(i >> 1) & 7]) {
	jne	.L392	#,
.L290:
# segmented_sieve.c:106:     for (uint64_t i = 3; i <= limit; i += 2) {
	cmp	r12, 5	# limit,
# segmented_sieve.c:106:     for (uint64_t i = 3; i <= limit; i += 2) {
	mov	ecx, 5	# i,
# segmented_sieve.c:106:     for (uint64_t i = 3; i <= limit; i += 2) {
	jb	.L277	#,
	cmp	r9, 1	# tmp193,
# segmented_sieve.c:107:         if (mem[i >> 4] & mask[(i >> 1) & 7]) {
	movzx	eax, BYTE PTR 2[r10]	# pretmp_147, mask[_146]
	je	.L279	#,
	cmp	r9, 2	# tmp193,
	je	.L353	#,
# segmented_sieve.c:107:         if (mem[i >> 4] & mask[(i >> 1) & 7]) {
	and	al, BYTE PTR [rbx]	# tmp318, *_32
# segmented_sieve.c:107:         if (mem[i >> 4] & mask[(i >> 1) & 7]) {
	je	.L291	#,
# segmented_sieve.c:108:             primes[idx].p = i;
	mov	r8, rsi	# tmp322, idx
# segmented_sieve.c:109:             primes[idx].next_bit = (i * i) >> 1;
	mov	edi, 12	# tmp320,
# segmented_sieve.c:108:             primes[idx].p = i;
	vmovq	xmm8, rcx	# i, i
# segmented_sieve.c:110:             idx++;
	add	rsi, 1	# idx,
# segmented_sieve.c:108:             primes[idx].p = i;
	vpinsrq	xmm9, xmm8, rdi, 1	# tmp321, i, tmp320
	sal	r8, 4	# tmp322,
	vmovdqu	XMMWORD PTR 0[r13+r8], xmm9	# MEM <vector(2) long unsigned int> [(long unsigned int *)_39], tmp321
.L291:
# segmented_sieve.c:106:     for (uint64_t i = 3; i <= limit; i += 2) {
	add	rcx, 2	# i,
# segmented_sieve.c:107:         if (mem[i >> 4] & mask[(i >> 1) & 7]) {
	mov	r11, rcx	# tmp325, i
	shr	r11	# tmp325
# segmented_sieve.c:107:         if (mem[i >> 4] & mask[(i >> 1) & 7]) {
	and	r11d, 7	# tmp326,
# segmented_sieve.c:107:         if (mem[i >> 4] & mask[(i >> 1) & 7]) {
	movzx	eax, BYTE PTR [r10+r11]	# pretmp_147, mask[_146]
.L353:
# segmented_sieve.c:107:         if (mem[i >> 4] & mask[(i >> 1) & 7]) {
	mov	rdx, rcx	# tmp327, i
	shr	rdx, 4	# tmp327,
# segmented_sieve.c:107:         if (mem[i >> 4] & mask[(i >> 1) & 7]) {
	and	al, BYTE PTR [rbx+rdx]	# tmp328, *_32
# segmented_sieve.c:107:         if (mem[i >> 4] & mask[(i >> 1) & 7]) {
	je	.L293	#,
# segmented_sieve.c:109:             primes[idx].next_bit = (i * i) >> 1;
	mov	r9, rcx	# tmp329, i
# segmented_sieve.c:108:             primes[idx].p = i;
	mov	rax, rsi	# tmp332, idx
	vmovq	xmm10, rcx	# i, i
# segmented_sieve.c:110:             idx++;
	add	rsi, 1	# idx,
# segmented_sieve.c:109:             primes[idx].next_bit = (i * i) >> 1;
	imul	r9, rcx	# tmp329, i
# segmented_sieve.c:108:             primes[idx].p = i;
	sal	rax, 4	# tmp332,
# segmented_sieve.c:109:             primes[idx].next_bit = (i * i) >> 1;
	shr	r9	# tmp330
# segmented_sieve.c:108:             primes[idx].p = i;
	vpinsrq	xmm11, xmm10, r9, 1	# tmp331, i, tmp330
	vmovdqu	XMMWORD PTR 0[r13+rax], xmm11	# MEM <vector(2) long unsigned int> [(long unsigned int *)_39], tmp331
.L293:
# segmented_sieve.c:106:     for (uint64_t i = 3; i <= limit; i += 2) {
	add	rcx, 2	# i,
# segmented_sieve.c:107:         if (mem[i >> 4] & mask[(i >> 1) & 7]) {
	mov	rdi, rcx	# tmp335, i
	shr	rdi	# tmp335
# segmented_sieve.c:107:         if (mem[i >> 4] & mask[(i >> 1) & 7]) {
	and	edi, 7	# tmp336,
# segmented_sieve.c:107:         if (mem[i >> 4] & mask[(i >> 1) & 7]) {
	movzx	eax, BYTE PTR [r10+rdi]	# pretmp_147, mask[_146]
	jmp	.L279	#
	.p2align 4,,10
	.p2align 3
.L393:
# segmented_sieve.c:107:         if (mem[i >> 4] & mask[(i >> 1) & 7]) {
	mov	r9, rcx	# tmp183, tmp194
# segmented_sieve.c:107:         if (mem[i >> 4] & mask[(i >> 1) & 7]) {
	mov	rdi, rcx	# tmp305, tmp194
# segmented_sieve.c:107:         if (mem[i >> 4] & mask[(i >> 1) & 7]) {
	shr	r9	# tmp183
# segmented_sieve.c:107:         if (mem[i >> 4] & mask[(i >> 1) & 7]) {
	shr	rdi, 4	# tmp305,
# segmented_sieve.c:107:         if (mem[i >> 4] & mask[(i >> 1) & 7]) {
	and	r9d, 7	# tmp184,
# segmented_sieve.c:107:         if (mem[i >> 4] & mask[(i >> 1) & 7]) {
	movzx	eax, BYTE PTR [r10+r9]	# pretmp_147, mask[_146]
# segmented_sieve.c:107:         if (mem[i >> 4] & mask[(i >> 1) & 7]) {
	and	al, BYTE PTR [rbx+rdi]	# tmp306, *_32
# segmented_sieve.c:107:         if (mem[i >> 4] & mask[(i >> 1) & 7]) {
	je	.L296	#,
# segmented_sieve.c:109:             primes[idx].next_bit = (i * i) >> 1;
	mov	r8, rcx	# tmp337, tmp194
# segmented_sieve.c:108:             primes[idx].p = i;
	mov	r11, rsi	# tmp340, idx
	vmovq	xmm14, rcx	# tmp194, tmp194
# segmented_sieve.c:110:             idx++;
	add	rsi, 1	# idx,
# segmented_sieve.c:109:             primes[idx].next_bit = (i * i) >> 1;
	imul	r8, rcx	# tmp337, tmp194
# segmented_sieve.c:108:             primes[idx].p = i;
	sal	r11, 4	# tmp340,
# segmented_sieve.c:109:             primes[idx].next_bit = (i * i) >> 1;
	shr	r8	# tmp338
# segmented_sieve.c:108:             primes[idx].p = i;
	vpinsrq	xmm15, xmm14, r8, 1	# tmp339, tmp194, tmp338
	vmovdqu	XMMWORD PTR 0[r13+r11], xmm15	# MEM <vector(2) long unsigned int> [(long unsigned int *)_39], tmp339
.L296:
# segmented_sieve.c:106:     for (uint64_t i = 3; i <= limit; i += 2) {
	lea	rdx, 2[rcx]	# i,
# segmented_sieve.c:107:         if (mem[i >> 4] & mask[(i >> 1) & 7]) {
	mov	r9, rdx	# tmp344, i
# segmented_sieve.c:107:         if (mem[i >> 4] & mask[(i >> 1) & 7]) {
	mov	rdi, rdx	# tmp347, i
# segmented_sieve.c:107:         if (mem[i >> 4] & mask[(i >> 1) & 7]) {
	shr	r9	# tmp344
# segmented_sieve.c:107:         if (mem[i >> 4] & mask[(i >> 1) & 7]) {
	shr	rdi, 4	# tmp347,
# segmented_sieve.c:107:         if (mem[i >> 4] & mask[(i >> 1) & 7]) {
	and	r9d, 7	# tmp345,
# segmented_sieve.c:107:         if (mem[i >> 4] & mask[(i >> 1) & 7]) {
	movzx	eax, BYTE PTR [r10+r9]	# pretmp_147, mask[_146]
# segmented_sieve.c:107:         if (mem[i >> 4] & mask[(i >> 1) & 7]) {
	and	al, BYTE PTR [rbx+rdi]	# tmp348, *_32
# segmented_sieve.c:107:         if (mem[i >> 4] & mask[(i >> 1) & 7]) {
	je	.L297	#,
# segmented_sieve.c:109:             primes[idx].next_bit = (i * i) >> 1;
	mov	r8, rdx	# tmp349, i
# segmented_sieve.c:108:             primes[idx].p = i;
	mov	r11, rsi	# tmp352, idx
	vmovq	xmm6, rdx	# i, i
# segmented_sieve.c:110:             idx++;
	add	rsi, 1	# idx,
# segmented_sieve.c:109:             primes[idx].next_bit = (i * i) >> 1;
	imul	r8, rdx	# tmp349, i
# segmented_sieve.c:108:             primes[idx].p = i;
	sal	r11, 4	# tmp352,
# segmented_sieve.c:109:             primes[idx].next_bit = (i * i) >> 1;
	shr	r8	# tmp350
# segmented_sieve.c:108:             primes[idx].p = i;
	vpinsrq	xmm7, xmm6, r8, 1	# tmp351, i, tmp350
	vmovdqu	XMMWORD PTR 0[r13+r11], xmm7	# MEM <vector(2) long unsigned int> [(long unsigned int *)_39], tmp351
.L297:
# segmented_sieve.c:106:     for (uint64_t i = 3; i <= limit; i += 2) {
	lea	rdx, 4[rcx]	# i,
# segmented_sieve.c:107:         if (mem[i >> 4] & mask[(i >> 1) & 7]) {
	mov	r9, rdx	# tmp356, i
# segmented_sieve.c:107:         if (mem[i >> 4] & mask[(i >> 1) & 7]) {
	mov	rdi, rdx	# tmp359, i
# segmented_sieve.c:107:         if (mem[i >> 4] & mask[(i >> 1) & 7]) {
	shr	r9	# tmp356
# segmented_sieve.c:107:         if (mem[i >> 4] & mask[(i >> 1) & 7]) {
	shr	rdi, 4	# tmp359,
# segmented_sieve.c:107:         if (mem[i >> 4] & mask[(i >> 1) & 7]) {
	and	r9d, 7	# tmp357,
# segmented_sieve.c:107:         if (mem[i >> 4] & mask[(i >> 1) & 7]) {
	movzx	eax, BYTE PTR [r10+r9]	# pretmp_147, mask[_146]
# segmented_sieve.c:107:         if (mem[i >> 4] & mask[(i >> 1) & 7]) {
	and	al, BYTE PTR [rbx+rdi]	# tmp360, *_32
# segmented_sieve.c:107:         if (mem[i >> 4] & mask[(i >> 1) & 7]) {
	je	.L298	#,
# segmented_sieve.c:109:             primes[idx].next_bit = (i * i) >> 1;
	mov	r8, rdx	# tmp361, i
# segmented_sieve.c:108:             primes[idx].p = i;
	mov	r11, rsi	# tmp364, idx
	vmovq	xmm0, rdx	# i, i
# segmented_sieve.c:110:             idx++;
	add	rsi, 1	# idx,
# segmented_sieve.c:109:             primes[idx].next_bit = (i * i) >> 1;
	imul	r8, rdx	# tmp361, i
# segmented_sieve.c:108:             primes[idx].p = i;
	sal	r11, 4	# tmp364,
# segmented_sieve.c:109:             primes[idx].next_bit = (i * i) >> 1;
	shr	r8	# tmp362
# segmented_sieve.c:108:             primes[idx].p = i;
	vpinsrq	xmm1, xmm0, r8, 1	# tmp363, i, tmp362
	vmovdqu	XMMWORD PTR 0[r13+r11], xmm1	# MEM <vector(2) long unsigned int> [(long unsigned int *)_39], tmp363
.L298:
# segmented_sieve.c:106:     for (uint64_t i = 3; i <= limit; i += 2) {
	add	rcx, 6	# i,
# segmented_sieve.c:107:         if (mem[i >> 4] & mask[(i >> 1) & 7]) {
	mov	rdx, rcx	# tmp367, i
	shr	rdx	# tmp367
# segmented_sieve.c:107:         if (mem[i >> 4] & mask[(i >> 1) & 7]) {
	and	edx, 7	# tmp368,
# segmented_sieve.c:107:         if (mem[i >> 4] & mask[(i >> 1) & 7]) {
	movzx	eax, BYTE PTR [r10+rdx]	# pretmp_147, mask[_146]
.L279:
# segmented_sieve.c:107:         if (mem[i >> 4] & mask[(i >> 1) & 7]) {
	mov	r8, rcx	# tmp175, i
	shr	r8, 4	# tmp175,
# segmented_sieve.c:107:         if (mem[i >> 4] & mask[(i >> 1) & 7]) {
	and	al, BYTE PTR [rbx+r8]	# tmp176, *_32
# segmented_sieve.c:107:         if (mem[i >> 4] & mask[(i >> 1) & 7]) {
	je	.L278	#,
# segmented_sieve.c:109:             primes[idx].next_bit = (i * i) >> 1;
	mov	r11, rcx	# tmp178, i
# segmented_sieve.c:108:             primes[idx].p = i;
	mov	rdx, rsi	# tmp180, idx
	vmovq	xmm12, rcx	# i, i
# segmented_sieve.c:110:             idx++;
	add	rsi, 1	# idx,
# segmented_sieve.c:109:             primes[idx].next_bit = (i * i) >> 1;
	imul	r11, rcx	# tmp178, i
# segmented_sieve.c:108:             primes[idx].p = i;
	sal	rdx, 4	# tmp180,
# segmented_sieve.c:109:             primes[idx].next_bit = (i * i) >> 1;
	shr	r11	# tmp179
# segmented_sieve.c:108:             primes[idx].p = i;
	vpinsrq	xmm13, xmm12, r11, 1	# tmp177, i, tmp179
	vmovdqu	XMMWORD PTR 0[r13+rdx], xmm13	# MEM <vector(2) long unsigned int> [(long unsigned int *)_39], tmp177
.L278:
# segmented_sieve.c:106:     for (uint64_t i = 3; i <= limit; i += 2) {
	add	rcx, 2	# tmp194,
# segmented_sieve.c:106:     for (uint64_t i = 3; i <= limit; i += 2) {
	cmp	r12, rcx	# limit, tmp194
	jnb	.L393	#,
.L277:
# segmented_sieve.c:113:     *count = idx;
	mov	QWORD PTR 0[rbp], rsi	# *count_66(D), idx
# segmented_sieve.c:114:     free(mem);
	mov	rdi, rbx	#, mem
	call	free@PLT	#
# segmented_sieve.c:116: }
	add	rsp, 8	#,
	.cfi_remember_state
	.cfi_def_cfa_offset 40
	mov	rax, r13	#, <retval>
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
# segmented_sieve.c:92:     uint64_t i_limit = sqrt(limit);
	vsubsd	xmm3, xmm0, xmm2	# tmp150, _5, tmp149
	vcvttsd2si	rdi, xmm3	# i_limit, tmp150
	btc	rdi, 63	# i_limit,
	jmp	.L265	#
	.p2align 4,,10
	.p2align 3
.L392:
# segmented_sieve.c:109:             primes[idx].next_bit = (i * i) >> 1;
	mov	eax, 4	# tmp310,
# segmented_sieve.c:108:             primes[idx].p = i;
	vmovq	xmm4, rcx	# i, i
# segmented_sieve.c:110:             idx++;
	mov	esi, 1	# idx,
# segmented_sieve.c:108:             primes[idx].p = i;
	vpinsrq	xmm5, xmm4, rax, 1	# tmp311, i, tmp310
	vmovdqu	XMMWORD PTR 0[r13], xmm5	# MEM <vector(2) long unsigned int> [(long unsigned int *)_39], tmp311
	jmp	.L290	#
	.p2align 4,,10
	.p2align 3
.L259:
# segmented_sieve.c:92:     uint64_t i_limit = sqrt(limit);
	mov	rax, r12	# tmp146, limit
	mov	rdx, r12	# tmp147, limit
	vxorpd	xmm7, xmm7, xmm7	# tmp454
	shr	rax	# tmp146
	and	edx, 1	# tmp147,
	or	rax, rdx	# tmp203, tmp147
	vcvtsi2sd	xmm0, xmm7, rax	# tmp447, tmp454, tmp203
	vaddsd	xmm0, xmm0, xmm0	# _4, tmp145, tmp145
	jmp	.L260	#
	.p2align 4,,10
	.p2align 3
.L384:
	lea	r13, mask2[rip]	# tmp205,
	.p2align 4,,10
	.p2align 3
.L271:
# segmented_sieve.c:96:                 mem[j >> 3] &= mask2[j & 7];
	mov	rdx, rcx	# tmp155, j
# segmented_sieve.c:96:                 mem[j >> 3] &= mask2[j & 7];
	mov	r11, rcx	# tmp157, j
# segmented_sieve.c:95:             for (uint64_t j = (i * i) >> 1; j < (limit >> 1) + 1; j += i) {
	add	rcx, rax	# j, i
# segmented_sieve.c:96:                 mem[j >> 3] &= mask2[j & 7];
	shr	rdx, 3	# tmp155,
# segmented_sieve.c:96:                 mem[j >> 3] &= mask2[j & 7];
	and	r11d, 7	# tmp157,
# segmented_sieve.c:96:                 mem[j >> 3] &= mask2[j & 7];
	movzx	r11d, BYTE PTR 0[r13+r11]	# mask2[_17], mask2[_17]
	and	BYTE PTR [rbx+rdx], r11b	# *_15, mask2[_17]
# segmented_sieve.c:95:             for (uint64_t j = (i * i) >> 1; j < (limit >> 1) + 1; j += i) {
	cmp	rcx, r9	# j, _92
	jb	.L271	#,
	jmp	.L269	#
.L273:
# segmented_sieve.c:104:     PrimeState *primes = (PrimeState *) malloc(sizeof(PrimeState) * c);
	xor	edi, edi	#
	call	malloc@PLT	#
# segmented_sieve.c:105:     size_t idx = 0;
	xor	esi, esi	# idx
# segmented_sieve.c:104:     PrimeState *primes = (PrimeState *) malloc(sizeof(PrimeState) * c);
	mov	r13, rax	# <retval>, tmp443
	jmp	.L277	#
.L383:
# segmented_sieve.c:92:     uint64_t i_limit = sqrt(limit);
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
# segmented_sieve.c:203: int main(int argc, char *argv[]) {
	mov	rax, QWORD PTR fs:40	# tmp316, MEM[(<address-space-1> long unsigned int *)40B]
	mov	QWORD PTR -56[rbp], rax	# D.45739, tmp316
	xor	eax, eax	# tmp316
# segmented_sieve.c:204:     if (argc < 2) { printf("Usage: %s max\n", argv[0]); return 1; }
	cmp	edi, 1	# tmp305,
	jle	.L463	#,
# segmented_sieve.c:205:     uint64_t max_num = strtoull(argv[1], NULL, 0);
	mov	rdi, QWORD PTR 8[rsi]	# MEM[(char * *)argv_41(D) + 8B], MEM[(char * *)argv_41(D) + 8B]
	xor	edx, edx	#
	xor	esi, esi	#
# segmented_sieve.c:212:     int num_threads = (nprocs < 1) ? 8 : (int)nprocs;
	mov	r15d, 8	# tmp224,
# segmented_sieve.c:205:     uint64_t max_num = strtoull(argv[1], NULL, 0);
	call	__isoc23_strtoull@PLT	#
# segmented_sieve.c:208:     setlocale(LC_ALL, "");
	lea	rsi, .LC5[rip]	# tmp143,
	mov	edi, 6	#,
# segmented_sieve.c:206:     uint64_t total_bits = (max_num >> 1) + 1;
	mov	rbx, rax	# _3, max_num
# segmented_sieve.c:205:     uint64_t max_num = strtoull(argv[1], NULL, 0);
	mov	QWORD PTR -152[rbp], rax	# %sfp, max_num
# segmented_sieve.c:208:     setlocale(LC_ALL, "");
	call	setlocale@PLT	#
# segmented_sieve.c:209:     init_avx_pattern();
	xor	eax, eax	#
# segmented_sieve.c:206:     uint64_t total_bits = (max_num >> 1) + 1;
	shr	rbx	# _3
# segmented_sieve.c:209:     init_avx_pattern();
	call	init_avx_pattern	#
# segmented_sieve.c:211:     long nprocs = sysconf(_SC_NPROCESSORS_ONLN);
	mov	edi, 84	#,
# segmented_sieve.c:206:     uint64_t total_bits = (max_num >> 1) + 1;
	lea	r13, 1[rbx]	# total_bits,
# segmented_sieve.c:211:     long nprocs = sysconf(_SC_NPROCESSORS_ONLN);
	call	sysconf@PLT	#
# /usr/include/x86_64-linux-gnu/bits/stdio2.h:86:   return __printf_chk (__USE_FORTIFY_LEVEL - 1, __fmt, __va_arg_pack ());
	lea	rsi, .LC6[rip]	# tmp144,
	mov	edi, 2	#,
# segmented_sieve.c:212:     int num_threads = (nprocs < 1) ? 8 : (int)nprocs;
	test	rax, rax	# nprocs
	cmovg	r15, rax	# nprocs,, tmp224
# /usr/include/x86_64-linux-gnu/bits/stdio2.h:86:   return __printf_chk (__USE_FORTIFY_LEVEL - 1, __fmt, __va_arg_pack ());
	xor	eax, eax	#
	mov	edx, r15d	#, iftmp.5_31
# segmented_sieve.c:215:     pthread_t threads[num_threads];
	movsx	r14, r15d	# _4, nprocs
	mov	r12d, r15d	# iftmp.5_31, nprocs
# /usr/include/x86_64-linux-gnu/bits/stdio2.h:86:   return __printf_chk (__USE_FORTIFY_LEVEL - 1, __fmt, __va_arg_pack ());
	call	__printf_chk@PLT	#
# segmented_sieve.c:215:     pthread_t threads[num_threads];
	lea	rax, 15[0+r14*8]	# tmp147,
	mov	rcx, rsp	# tmp154,
	mov	rdx, rax	# tmp151, tmp147
	and	rax, -4096	# tmp153,
	and	rdx, -16	# tmp151,
	sub	rcx, rax	# tmp154, tmp153
.L398:
	cmp	rsp, rcx	#, tmp154
	je	.L399	#,
	sub	rsp, 4096	#,
	or	QWORD PTR 4088[rsp], 0	#,
	jmp	.L398	#
.L463:
# /usr/include/x86_64-linux-gnu/bits/stdio2.h:86:   return __printf_chk (__USE_FORTIFY_LEVEL - 1, __fmt, __va_arg_pack ());
	mov	rdx, QWORD PTR [rsi]	#, *argv_41(D)
	mov	edi, 2	#,
	lea	rsi, .LC4[rip]	# tmp141,
	call	__printf_chk@PLT	#
# segmented_sieve.c:204:     if (argc < 2) { printf("Usage: %s max\n", argv[0]); return 1; }
	mov	eax, 1	# <retval>,
.L394:
# segmented_sieve.c:246: }
	mov	rdx, QWORD PTR -56[rbp]	# tmp318, D.45739
	sub	rdx, QWORD PTR fs:40	# tmp318, MEM[(<address-space-1> long unsigned int *)40B]
	jne	.L464	#,
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
.L399:
	.cfi_restore_state
# segmented_sieve.c:215:     pthread_t threads[num_threads];
	and	edx, 4095	# tmp155,
	sub	rsp, rdx	#, tmp155
	test	rdx, rdx	# tmp155
	jne	.L465	#,
.L400:
# segmented_sieve.c:216:     ThreadData data[num_threads];
	mov	rsi, r14	# tmp169, _4
# segmented_sieve.c:215:     pthread_t threads[num_threads];
	mov	QWORD PTR -128[rbp], rsp	# %sfp,
# segmented_sieve.c:216:     ThreadData data[num_threads];
	mov	r8, rsp	# tmp172,
	sal	rsi, 5	# tmp169,
	mov	rdi, rsi	# tmp171, tmp169
	and	rdi, -4096	# tmp171,
	sub	r8, rdi	# tmp172, tmp171
.L401:
	cmp	rsp, r8	#, tmp172
	je	.L402	#,
	sub	rsp, 4096	#,
	or	QWORD PTR 4088[rsp], 0	#,
	jmp	.L401	#
.L465:
# segmented_sieve.c:215:     pthread_t threads[num_threads];
	or	QWORD PTR -8[rsp+rdx], 0	#,
	jmp	.L400	#
.L402:
# segmented_sieve.c:216:     ThreadData data[num_threads];
	and	esi, 4095	# tmp173,
	sub	rsp, rsi	#, tmp173
	test	rsi, rsi	# tmp173
	jne	.L466	#,
.L403:
# segmented_sieve.c:217:     PrimeState *base_primes = GetBasePrimes(sqrt(max_num), &prime_count);
	mov	r9, QWORD PTR -152[rbp]	# max_num, %sfp
# segmented_sieve.c:216:     ThreadData data[num_threads];
	mov	QWORD PTR -136[rbp], rsp	# %sfp,
# segmented_sieve.c:217:     PrimeState *base_primes = GetBasePrimes(sqrt(max_num), &prime_count);
	test	r9, r9	# max_num
	js	.L404	#,
	vxorpd	xmm3, xmm3, xmm3	# tmp356
	vcvtsi2sd	xmm0, xmm3, r9	# tmp312, tmp356, max_num
.L405:
	vxorpd	xmm1, xmm1, xmm1	# tmp184
	vucomisd	xmm1, xmm0	# tmp184, _8
	ja	.L455	#,
	vsqrtsd	xmm0, xmm0, xmm0	# _9, _8
.L408:
# segmented_sieve.c:217:     PrimeState *base_primes = GetBasePrimes(sqrt(max_num), &prime_count);
	vmovsd	xmm2, QWORD PTR .LC1[rip]	# tmp186,
	vcomisd	xmm0, xmm2	# _9, tmp186
	jnb	.L409	#,
	vcvttsd2si	rdi, xmm0	# tmp185, _9
.L410:
	lea	rsi, prime_count[rip]	# tmp190,
# segmented_sieve.c:219:     uint64_t total_blocks = (total_bits + BLOCK_BITS - 1) / BLOCK_BITS;
	add	rbx, 262080	# tmp191,
# segmented_sieve.c:217:     PrimeState *base_primes = GetBasePrimes(sqrt(max_num), &prime_count);
	call	GetBasePrimes	#
# segmented_sieve.c:219:     uint64_t total_blocks = (total_bits + BLOCK_BITS - 1) / BLOCK_BITS;
	shr	rbx, 6	# tmp193,
# segmented_sieve.c:223:     clock_gettime(CLOCK_REALTIME, &begin);
	xor	edi, edi	#
	lea	rsi, -96[rbp]	# tmp198,
# segmented_sieve.c:217:     PrimeState *base_primes = GetBasePrimes(sqrt(max_num), &prime_count);
	mov	QWORD PTR -104[rbp], rax	# %sfp, tmp310
# segmented_sieve.c:219:     uint64_t total_blocks = (total_bits + BLOCK_BITS - 1) / BLOCK_BITS;
	movabs	rax, 288300762079953921	# tmp193,
	mul	rbx	# tmp193
	mov	rax, rdx	# tmp194, tmp194
# segmented_sieve.c:220:     uint64_t blocks_per_thread = total_blocks / num_threads;
	xor	edx, edx	# tmp197
# segmented_sieve.c:219:     uint64_t total_blocks = (total_bits + BLOCK_BITS - 1) / BLOCK_BITS;
	shr	rax, 6	# total_blocks,
# segmented_sieve.c:220:     uint64_t blocks_per_thread = total_blocks / num_threads;
	div	r14	# _4
	mov	rbx, rax	# tmp196, total_blocks
# segmented_sieve.c:223:     clock_gettime(CLOCK_REALTIME, &begin);
	call	clock_gettime@PLT	#
# segmented_sieve.c:225:     for (int i = 0; i < num_threads; i++) {
	test	r12d, r12d	# iftmp.5_31
	jle	.L417	#,
# segmented_sieve.c:227:         data[i].end_bit = (i == num_threads - 1) ? total_bits : (i + 1) * blocks_per_thread * BLOCK_BITS;
	lea	r12d, -1[r12]	# _112,
	lea	r11d, -1[r15]	# _134,
	mov	r8, QWORD PTR -128[rbp]	# tmp162, %sfp
	xor	r15d, r15d	# ivtmp.195
	mov	DWORD PTR -112[rbp], r12d	# %sfp, _112
	imul	r12, rbx, 262080	# _123, tmp196,
	mov	r14, QWORD PTR -136[rbp]	# ivtmp.198, %sfp
	mov	QWORD PTR -144[rbp], r11	# %sfp, _134
	and	r11d, 3	# tmp235,
	mov	rsi, r8	# ivtmp.189, tmp162
	mov	rbx, r12	# ivtmp.201, _123
	je	.L460	#,
# segmented_sieve.c:228:         if (data[i].end_bit > total_bits) data[i].end_bit = total_bits;
	cmp	r13, r12	# total_bits, _123
	mov	r15, r12	# tmp294, _123
# segmented_sieve.c:229:         data[i].base_primes = base_primes;
	mov	rdi, QWORD PTR -104[rbp]	# base_primes, %sfp
# segmented_sieve.c:230:         pthread_create(&threads[i], NULL, SieveRange, &data[i]);
	mov	rbx, QWORD PTR -128[rbp]	# tmp162, %sfp
# segmented_sieve.c:228:         if (data[i].end_bit > total_bits) data[i].end_bit = total_bits;
	cmovbe	r15, r13	# total_bits,, tmp294
	cmp	DWORD PTR -112[rbp], 0	# %sfp,
# segmented_sieve.c:226:         data[i].start_bit = i * blocks_per_thread * BLOCK_BITS;
	mov	r14, QWORD PTR -136[rbp]	# tmp180, %sfp
# segmented_sieve.c:230:         pthread_create(&threads[i], NULL, SieveRange, &data[i]);
	lea	rdx, SieveRange[rip]	#,
	mov	QWORD PTR -120[rbp], r8	# %sfp, ivtmp.189
# segmented_sieve.c:228:         if (data[i].end_bit > total_bits) data[i].end_bit = total_bits;
	cmove	r15, r13	# tmp294,, _115, total_bits
# segmented_sieve.c:226:         data[i].start_bit = i * blocks_per_thread * BLOCK_BITS;
	xor	esi, esi	#
# segmented_sieve.c:229:         data[i].base_primes = base_primes;
	mov	QWORD PTR 16[r14], rdi	# MEM[(struct PrimeState * *)_126 + 16B], base_primes
# segmented_sieve.c:226:         data[i].start_bit = i * blocks_per_thread * BLOCK_BITS;
	mov	rcx, r14	# tmp180, tmp180
	mov	QWORD PTR [r14], rsi	# MEM[(long unsigned int *)_126],
# segmented_sieve.c:230:         pthread_create(&threads[i], NULL, SieveRange, &data[i]);
	mov	rdi, rbx	#, tmp162
	xor	esi, esi	#
# segmented_sieve.c:227:         data[i].end_bit = (i == num_threads - 1) ? total_bits : (i + 1) * blocks_per_thread * BLOCK_BITS;
	mov	QWORD PTR 8[r14], r15	# MEM[(long unsigned int *)_126 + 8B], _115
	mov	r15d, 1	# ivtmp.195,
	mov	QWORD PTR -160[rbp], r11	# %sfp, tmp235
# segmented_sieve.c:230:         pthread_create(&threads[i], NULL, SieveRange, &data[i]);
	call	pthread_create@PLT	#
	mov	r10, QWORD PTR -160[rbp]	# tmp235, %sfp
# segmented_sieve.c:225:     for (int i = 0; i < num_threads; i++) {
	mov	QWORD PTR -136[rbp], r14	# %sfp, tmp180
	lea	r8, 8[rbx]	# ivtmp.199,
	mov	QWORD PTR -128[rbp], rbx	# %sfp, tmp162
	mov	rsi, QWORD PTR -120[rbp]	# ivtmp.189, %sfp
	lea	r14, 32[r14]	# ivtmp.198,
	lea	rbx, [r12+r12]	# ivtmp.201,
	cmp	r10, 1	# tmp235,
	je	.L460	#,
	cmp	r10, 2	# tmp235,
	je	.L446	#,
	mov	rdx, rbx	# _5, ivtmp.201
# segmented_sieve.c:228:         if (data[i].end_bit > total_bits) data[i].end_bit = total_bits;
	mov	rax, rbx	# tmp298, ivtmp.201
# segmented_sieve.c:229:         data[i].base_primes = base_primes;
	mov	r9, QWORD PTR -104[rbp]	# base_primes, %sfp
# segmented_sieve.c:230:         pthread_create(&threads[i], NULL, SieveRange, &data[i]);
	mov	rcx, r14	#, ivtmp.198
	sub	rdx, r12	# _5, _123
# segmented_sieve.c:228:         if (data[i].end_bit > total_bits) data[i].end_bit = total_bits;
	cmp	r13, rbx	# total_bits, ivtmp.201
# segmented_sieve.c:230:         pthread_create(&threads[i], NULL, SieveRange, &data[i]);
	mov	rdi, r8	#, ivtmp.199
	mov	r15d, 2	# ivtmp.195,
# segmented_sieve.c:228:         if (data[i].end_bit > total_bits) data[i].end_bit = total_bits;
	cmovbe	rax, r13	# total_bits,, tmp298
	cmp	DWORD PTR -112[rbp], 1	# %sfp,
# segmented_sieve.c:226:         data[i].start_bit = i * blocks_per_thread * BLOCK_BITS;
	mov	QWORD PTR [r14], rdx	# MEM[(long unsigned int *)_126], _5
# segmented_sieve.c:230:         pthread_create(&threads[i], NULL, SieveRange, &data[i]);
	lea	rdx, SieveRange[rip]	#,
# segmented_sieve.c:229:         data[i].base_primes = base_primes;
	mov	QWORD PTR 16[r14], r9	# MEM[(struct PrimeState * *)_126 + 16B], base_primes
# segmented_sieve.c:228:         if (data[i].end_bit > total_bits) data[i].end_bit = total_bits;
	cmove	rax, r13	# tmp298,, _115, total_bits
# segmented_sieve.c:230:         pthread_create(&threads[i], NULL, SieveRange, &data[i]);
	xor	esi, esi	#
# segmented_sieve.c:225:     for (int i = 0; i < num_threads; i++) {
	add	rbx, r12	# ivtmp.201, _123
# segmented_sieve.c:227:         data[i].end_bit = (i == num_threads - 1) ? total_bits : (i + 1) * blocks_per_thread * BLOCK_BITS;
	mov	QWORD PTR 8[r14], rax	# MEM[(long unsigned int *)_126 + 8B], _115
# segmented_sieve.c:230:         pthread_create(&threads[i], NULL, SieveRange, &data[i]);
	call	pthread_create@PLT	#
# segmented_sieve.c:225:     for (int i = 0; i < num_threads; i++) {
	mov	r8, QWORD PTR -136[rbp]	# tmp180, %sfp
	mov	r11, QWORD PTR -128[rbp]	# tmp162, %sfp
	mov	rsi, QWORD PTR -120[rbp]	# ivtmp.189, %sfp
	lea	r14, 64[r8]	# ivtmp.198,
	lea	r8, 16[r11]	# ivtmp.199,
.L446:
	mov	rdi, rbx	# _5, ivtmp.201
# segmented_sieve.c:228:         if (data[i].end_bit > total_bits) data[i].end_bit = total_bits;
	mov	rcx, rbx	# tmp302, ivtmp.201
# segmented_sieve.c:229:         data[i].base_primes = base_primes;
	mov	r10, QWORD PTR -104[rbp]	# base_primes, %sfp
# segmented_sieve.c:230:         pthread_create(&threads[i], NULL, SieveRange, &data[i]);
	mov	QWORD PTR -120[rbp], r8	# %sfp, ivtmp.199
	sub	rdi, r12	# _5, _123
# segmented_sieve.c:228:         if (data[i].end_bit > total_bits) data[i].end_bit = total_bits;
	cmp	r13, rbx	# total_bits, ivtmp.201
	mov	QWORD PTR -160[rbp], rsi	# %sfp, ivtmp.189
# segmented_sieve.c:230:         pthread_create(&threads[i], NULL, SieveRange, &data[i]);
	lea	rdx, SieveRange[rip]	#,
# segmented_sieve.c:228:         if (data[i].end_bit > total_bits) data[i].end_bit = total_bits;
	cmovbe	rcx, r13	# total_bits,, tmp302
	cmp	DWORD PTR -112[rbp], r15d	# %sfp, ivtmp.195
# segmented_sieve.c:226:         data[i].start_bit = i * blocks_per_thread * BLOCK_BITS;
	mov	QWORD PTR [r14], rdi	# MEM[(long unsigned int *)_126], _5
# segmented_sieve.c:230:         pthread_create(&threads[i], NULL, SieveRange, &data[i]);
	mov	rdi, r8	#, ivtmp.199
# segmented_sieve.c:229:         data[i].base_primes = base_primes;
	mov	QWORD PTR 16[r14], r10	# MEM[(struct PrimeState * *)_126 + 16B], base_primes
# segmented_sieve.c:228:         if (data[i].end_bit > total_bits) data[i].end_bit = total_bits;
	cmove	rcx, r13	# tmp302,, _115, total_bits
# segmented_sieve.c:230:         pthread_create(&threads[i], NULL, SieveRange, &data[i]);
	xor	esi, esi	#
# segmented_sieve.c:225:     for (int i = 0; i < num_threads; i++) {
	add	rbx, r12	# ivtmp.201, _123
	add	r15, 1	# ivtmp.195,
# segmented_sieve.c:227:         data[i].end_bit = (i == num_threads - 1) ? total_bits : (i + 1) * blocks_per_thread * BLOCK_BITS;
	mov	QWORD PTR 8[r14], rcx	# MEM[(long unsigned int *)_126 + 8B], _115
# segmented_sieve.c:230:         pthread_create(&threads[i], NULL, SieveRange, &data[i]);
	mov	rcx, r14	#, ivtmp.198
# segmented_sieve.c:225:     for (int i = 0; i < num_threads; i++) {
	add	r14, 32	# ivtmp.198,
# segmented_sieve.c:230:         pthread_create(&threads[i], NULL, SieveRange, &data[i]);
	call	pthread_create@PLT	#
# segmented_sieve.c:225:     for (int i = 0; i < num_threads; i++) {
	mov	r8, QWORD PTR -120[rbp]	# ivtmp.199, %sfp
	add	r8, 8	# ivtmp.199,
.L462:
	mov	rdx, r12	# _123, _123
	mov	r9, rbx	# ivtmp.201, ivtmp.201
	mov	r12, r8	# ivtmp.199, ivtmp.199
	mov	rbx, r14	# ivtmp.198, ivtmp.198
	mov	r14, r13	# total_bits, total_bits
	mov	r13, rdx	# _123, _123
	jmp	.L413	#
	.p2align 4,,10
	.p2align 3
.L419:
	mov	rdx, r8	# _5, ivtmp.201
# segmented_sieve.c:228:         if (data[i].end_bit > total_bits) data[i].end_bit = total_bits;
	mov	r9, r8	# tmp225, ivtmp.201
	mov	QWORD PTR -120[rbp], r8	# %sfp, ivtmp.201
	sub	rdx, r13	# _5, _123
	cmp	r14, r8	# total_bits, ivtmp.201
	cmovbe	r9, r14	# total_bits,, tmp225
	cmp	DWORD PTR -112[rbp], r10d	# %sfp, ivtmp.195
# segmented_sieve.c:229:         data[i].base_primes = base_primes;
	mov	r10, QWORD PTR -104[rbp]	# base_primes, %sfp
# segmented_sieve.c:226:         data[i].start_bit = i * blocks_per_thread * BLOCK_BITS;
	mov	QWORD PTR 32[rbx], rdx	# MEM[(long unsigned int *)_126], _5
# segmented_sieve.c:230:         pthread_create(&threads[i], NULL, SieveRange, &data[i]);
	lea	rdx, SieveRange[rip]	#,
# segmented_sieve.c:228:         if (data[i].end_bit > total_bits) data[i].end_bit = total_bits;
	cmove	r9, r14	# tmp225,, _115, total_bits
# segmented_sieve.c:229:         data[i].base_primes = base_primes;
	mov	QWORD PTR 16[rcx], r10	# MEM[(struct PrimeState * *)_126 + 16B], base_primes
# segmented_sieve.c:230:         pthread_create(&threads[i], NULL, SieveRange, &data[i]);
	xor	esi, esi	#
# segmented_sieve.c:227:         data[i].end_bit = (i == num_threads - 1) ? total_bits : (i + 1) * blocks_per_thread * BLOCK_BITS;
	mov	QWORD PTR 8[rcx], r9	# MEM[(long unsigned int *)_126 + 8B], _115
# segmented_sieve.c:230:         pthread_create(&threads[i], NULL, SieveRange, &data[i]);
	call	pthread_create@PLT	#
# segmented_sieve.c:225:     for (int i = 0; i < num_threads; i++) {
	mov	r8, QWORD PTR -120[rbp]	# ivtmp.201, %sfp
	lea	rdx, 2[r15]	# ivtmp.195,
# segmented_sieve.c:229:         data[i].base_primes = base_primes;
	mov	rsi, QWORD PTR -104[rbp]	# base_primes, %sfp
# segmented_sieve.c:225:     for (int i = 0; i < num_threads; i++) {
	lea	rcx, 64[rbx]	# ivtmp.198,
	lea	rdi, 16[r12]	# ivtmp.199,
	lea	r11, [r8+r13]	# ivtmp.201,
# segmented_sieve.c:226:         data[i].start_bit = i * blocks_per_thread * BLOCK_BITS;
	mov	QWORD PTR 64[rbx], r8	# MEM[(long unsigned int *)_126], ivtmp.201
# segmented_sieve.c:228:         if (data[i].end_bit > total_bits) data[i].end_bit = total_bits;
	cmp	r14, r11	# total_bits, ivtmp.201
	mov	rax, r11	# tmp252, ivtmp.201
# segmented_sieve.c:229:         data[i].base_primes = base_primes;
	mov	QWORD PTR 16[rcx], rsi	# MEM[(struct PrimeState * *)_126 + 16B], base_primes
# segmented_sieve.c:228:         if (data[i].end_bit > total_bits) data[i].end_bit = total_bits;
	cmovbe	rax, r14	# total_bits,, tmp252
	cmp	DWORD PTR -112[rbp], edx	# %sfp, ivtmp.195
# segmented_sieve.c:230:         pthread_create(&threads[i], NULL, SieveRange, &data[i]);
	lea	rdx, SieveRange[rip]	#,
# segmented_sieve.c:228:         if (data[i].end_bit > total_bits) data[i].end_bit = total_bits;
	mov	QWORD PTR -120[rbp], r11	# %sfp, ivtmp.201
	cmove	rax, r14	# tmp252,, _115, total_bits
# segmented_sieve.c:230:         pthread_create(&threads[i], NULL, SieveRange, &data[i]);
	xor	esi, esi	#
# segmented_sieve.c:227:         data[i].end_bit = (i == num_threads - 1) ? total_bits : (i + 1) * blocks_per_thread * BLOCK_BITS;
	mov	QWORD PTR 8[rcx], rax	# MEM[(long unsigned int *)_126 + 8B], _115
# segmented_sieve.c:230:         pthread_create(&threads[i], NULL, SieveRange, &data[i]);
	call	pthread_create@PLT	#
# segmented_sieve.c:225:     for (int i = 0; i < num_threads; i++) {
	mov	r9, QWORD PTR -120[rbp]	# ivtmp.201, %sfp
	lea	r8, 3[r15]	# ivtmp.195,
# segmented_sieve.c:229:         data[i].base_primes = base_primes;
	mov	r11, QWORD PTR -104[rbp]	# base_primes, %sfp
# segmented_sieve.c:225:     for (int i = 0; i < num_threads; i++) {
	lea	rcx, 96[rbx]	# ivtmp.198,
	lea	rdi, 24[r12]	# ivtmp.199,
	lea	r10, [r9+r13]	# ivtmp.201,
# segmented_sieve.c:226:         data[i].start_bit = i * blocks_per_thread * BLOCK_BITS;
	mov	QWORD PTR 96[rbx], r9	# MEM[(long unsigned int *)_126], ivtmp.201
# segmented_sieve.c:230:         pthread_create(&threads[i], NULL, SieveRange, &data[i]);
	lea	rdx, SieveRange[rip]	#,
# segmented_sieve.c:228:         if (data[i].end_bit > total_bits) data[i].end_bit = total_bits;
	cmp	r14, r10	# total_bits, ivtmp.201
	mov	rax, r10	# tmp260, ivtmp.201
# segmented_sieve.c:229:         data[i].base_primes = base_primes;
	mov	QWORD PTR 16[rcx], r11	# MEM[(struct PrimeState * *)_126 + 16B], base_primes
# segmented_sieve.c:228:         if (data[i].end_bit > total_bits) data[i].end_bit = total_bits;
	cmovbe	rax, r14	# total_bits,, tmp260
	cmp	DWORD PTR -112[rbp], r8d	# %sfp, ivtmp.195
	mov	QWORD PTR -120[rbp], r10	# %sfp, ivtmp.201
	cmove	rax, r14	# tmp260,, _115, total_bits
# segmented_sieve.c:230:         pthread_create(&threads[i], NULL, SieveRange, &data[i]);
	xor	esi, esi	#
# segmented_sieve.c:225:     for (int i = 0; i < num_threads; i++) {
	sub	rbx, -128	# ivtmp.198,
	add	r12, 32	# ivtmp.199,
	add	r15, 4	# ivtmp.195,
# segmented_sieve.c:227:         data[i].end_bit = (i == num_threads - 1) ? total_bits : (i + 1) * blocks_per_thread * BLOCK_BITS;
	mov	QWORD PTR 8[rcx], rax	# MEM[(long unsigned int *)_126 + 8B], _115
# segmented_sieve.c:230:         pthread_create(&threads[i], NULL, SieveRange, &data[i]);
	call	pthread_create@PLT	#
# segmented_sieve.c:225:     for (int i = 0; i < num_threads; i++) {
	mov	r9, QWORD PTR -120[rbp]	# ivtmp.201, %sfp
	add	r9, r13	# ivtmp.201, _123
.L413:
	mov	r11, r9	# _5, ivtmp.201
# segmented_sieve.c:228:         if (data[i].end_bit > total_bits) data[i].end_bit = total_bits;
	mov	rax, r9	# tmp264, ivtmp.201
# segmented_sieve.c:229:         data[i].base_primes = base_primes;
	mov	rsi, QWORD PTR -104[rbp]	# base_primes, %sfp
# segmented_sieve.c:230:         pthread_create(&threads[i], NULL, SieveRange, &data[i]);
	mov	rcx, rbx	#, ivtmp.198
	sub	r11, r13	# _5, _123
# segmented_sieve.c:228:         if (data[i].end_bit > total_bits) data[i].end_bit = total_bits;
	cmp	r14, r9	# total_bits, ivtmp.201
# segmented_sieve.c:230:         pthread_create(&threads[i], NULL, SieveRange, &data[i]);
	mov	rdi, r12	#, ivtmp.199
# segmented_sieve.c:228:         if (data[i].end_bit > total_bits) data[i].end_bit = total_bits;
	mov	QWORD PTR -120[rbp], r9	# %sfp, ivtmp.201
	cmovbe	rax, r14	# total_bits,, tmp264
	cmp	DWORD PTR -112[rbp], r15d	# %sfp, ivtmp.195
# segmented_sieve.c:229:         data[i].base_primes = base_primes;
	mov	QWORD PTR 16[rbx], rsi	# MEM[(struct PrimeState * *)_126 + 16B], base_primes
# segmented_sieve.c:230:         pthread_create(&threads[i], NULL, SieveRange, &data[i]);
	lea	rdx, SieveRange[rip]	#,
# segmented_sieve.c:226:         data[i].start_bit = i * blocks_per_thread * BLOCK_BITS;
	mov	QWORD PTR [rbx], r11	# MEM[(long unsigned int *)_126], _5
# segmented_sieve.c:228:         if (data[i].end_bit > total_bits) data[i].end_bit = total_bits;
	cmove	rax, r14	# tmp264,, _115, total_bits
# segmented_sieve.c:230:         pthread_create(&threads[i], NULL, SieveRange, &data[i]);
	xor	esi, esi	#
# segmented_sieve.c:227:         data[i].end_bit = (i == num_threads - 1) ? total_bits : (i + 1) * blocks_per_thread * BLOCK_BITS;
	mov	QWORD PTR 8[rbx], rax	# MEM[(long unsigned int *)_126 + 8B], _115
# segmented_sieve.c:230:         pthread_create(&threads[i], NULL, SieveRange, &data[i]);
	call	pthread_create@PLT	#
# segmented_sieve.c:225:     for (int i = 0; i < num_threads; i++) {
	mov	r8, QWORD PTR -120[rbp]	# ivtmp.201, %sfp
	mov	rdx, QWORD PTR -144[rbp]	# _134, %sfp
	lea	r10, 1[r15]	# ivtmp.195,
	lea	rcx, 32[rbx]	# tmp236,
	lea	rdi, 8[r12]	# tmp237,
	add	r8, r13	# ivtmp.201, _123
	cmp	r15, rdx	# ivtmp.195, _134
	jne	.L419	#,
	mov	rcx, QWORD PTR -128[rbp]	# tmp162, %sfp
	mov	rdi, QWORD PTR -136[rbp]	# tmp180, %sfp
# segmented_sieve.c:233:     uint64_t total_primes = 1; // Count 2
	mov	ebx, 1	# total_primes,
	mov	r11, QWORD PTR -160[rbp]	# ivtmp.189, %sfp
	lea	r13, 8[rcx]	# tmp201,
	lea	r14, 24[rdi]	# ivtmp.190,
	lea	r15, 0[r13+r15*8]	# _118,
	mov	r12, r15	# tmp228, _118
	sub	r12, rcx	# tmp228, tmp162
	sub	r12, 8	# tmp229,
	shr	r12, 3	# tmp227,
	add	r12, 1	# tmp230,
	and	r12d, 3	# tmp231,
	je	.L459	#,
	cmp	r12, 1	# tmp231,
	je	.L444	#,
	cmp	r12, 2	# tmp231,
	je	.L445	#,
# segmented_sieve.c:235:         pthread_join(threads[i], NULL);
	mov	r9, QWORD PTR -128[rbp]	# tmp162, %sfp
	xor	esi, esi	#
	mov	rdi, QWORD PTR [r9]	# MEM[(long unsigned int *)_107], MEM[(long unsigned int *)_107]
	call	pthread_join@PLT	#
# segmented_sieve.c:236:         total_primes += data[i].thread_total;
	mov	rbx, QWORD PTR [r14]	# MEM[(long unsigned int *)_108], MEM[(long unsigned int *)_108]
# segmented_sieve.c:234:     for (int i = 0; i < num_threads; i++) {
	mov	r14, QWORD PTR -136[rbp]	# tmp180, %sfp
	mov	r11, r13	# ivtmp.189, tmp201
# segmented_sieve.c:236:         total_primes += data[i].thread_total;
	add	rbx, 1	# total_primes,
# segmented_sieve.c:234:     for (int i = 0; i < num_threads; i++) {
	add	r14, 56	# tmp180,
.L445:
# segmented_sieve.c:235:         pthread_join(threads[i], NULL);
	mov	rdi, QWORD PTR [r11]	# MEM[(long unsigned int *)_107], MEM[(long unsigned int *)_107]
	xor	esi, esi	#
	mov	QWORD PTR -112[rbp], r11	# %sfp, ivtmp.189
# segmented_sieve.c:234:     for (int i = 0; i < num_threads; i++) {
	add	r14, 32	# ivtmp.190,
# segmented_sieve.c:235:         pthread_join(threads[i], NULL);
	call	pthread_join@PLT	#
# segmented_sieve.c:234:     for (int i = 0; i < num_threads; i++) {
	mov	r11, QWORD PTR -112[rbp]	# ivtmp.189, %sfp
# segmented_sieve.c:236:         total_primes += data[i].thread_total;
	add	rbx, QWORD PTR -32[r14]	# total_primes, MEM[(long unsigned int *)_108]
# segmented_sieve.c:234:     for (int i = 0; i < num_threads; i++) {
	add	r11, 8	# ivtmp.189,
.L444:
# segmented_sieve.c:235:         pthread_join(threads[i], NULL);
	mov	rdi, QWORD PTR [r11]	# MEM[(long unsigned int *)_107], MEM[(long unsigned int *)_107]
	xor	esi, esi	#
	mov	QWORD PTR -112[rbp], r11	# %sfp, ivtmp.189
# segmented_sieve.c:234:     for (int i = 0; i < num_threads; i++) {
	add	r14, 32	# ivtmp.190,
# segmented_sieve.c:235:         pthread_join(threads[i], NULL);
	call	pthread_join@PLT	#
# segmented_sieve.c:234:     for (int i = 0; i < num_threads; i++) {
	mov	r11, QWORD PTR -112[rbp]	# ivtmp.189, %sfp
# segmented_sieve.c:236:         total_primes += data[i].thread_total;
	add	rbx, QWORD PTR -32[r14]	# total_primes, MEM[(long unsigned int *)_108]
# segmented_sieve.c:234:     for (int i = 0; i < num_threads; i++) {
	add	r11, 8	# ivtmp.189,
	cmp	r11, r15	# ivtmp.189, _118
	je	.L411	#,
.L459:
	mov	r13, r11	# ivtmp.189, ivtmp.189
.L414:
# segmented_sieve.c:235:         pthread_join(threads[i], NULL);
	mov	rdi, QWORD PTR 0[r13]	# MEM[(long unsigned int *)_107], MEM[(long unsigned int *)_107]
	xor	esi, esi	#
# segmented_sieve.c:234:     for (int i = 0; i < num_threads; i++) {
	add	r13, 32	# ivtmp.189,
	sub	r14, -128	# ivtmp.190,
# segmented_sieve.c:235:         pthread_join(threads[i], NULL);
	call	pthread_join@PLT	#
	mov	rdi, QWORD PTR -24[r13]	# MEM[(long unsigned int *)_107], MEM[(long unsigned int *)_107]
	xor	esi, esi	#
# segmented_sieve.c:236:         total_primes += data[i].thread_total;
	add	rbx, QWORD PTR -128[r14]	# tmp205, MEM[(long unsigned int *)_108]
# segmented_sieve.c:235:         pthread_join(threads[i], NULL);
	call	pthread_join@PLT	#
	mov	rdi, QWORD PTR -16[r13]	# MEM[(long unsigned int *)_107], MEM[(long unsigned int *)_107]
	xor	esi, esi	#
# segmented_sieve.c:236:         total_primes += data[i].thread_total;
	add	rbx, QWORD PTR -96[r14]	# tmp271, MEM[(long unsigned int *)_108]
# segmented_sieve.c:235:         pthread_join(threads[i], NULL);
	call	pthread_join@PLT	#
	mov	rdi, QWORD PTR -8[r13]	# MEM[(long unsigned int *)_107], MEM[(long unsigned int *)_107]
	xor	esi, esi	#
# segmented_sieve.c:236:         total_primes += data[i].thread_total;
	add	rbx, QWORD PTR -64[r14]	# tmp277, MEM[(long unsigned int *)_108]
# segmented_sieve.c:235:         pthread_join(threads[i], NULL);
	call	pthread_join@PLT	#
# segmented_sieve.c:236:         total_primes += data[i].thread_total;
	add	rbx, QWORD PTR -32[r14]	# total_primes, MEM[(long unsigned int *)_108]
# segmented_sieve.c:234:     for (int i = 0; i < num_threads; i++) {
	cmp	r13, r15	# ivtmp.189, _118
	jne	.L414	#,
.L411:
# segmented_sieve.c:239:     clock_gettime(CLOCK_REALTIME, &end);
	lea	rsi, -80[rbp]	# tmp207,
	xor	edi, edi	#
	call	clock_gettime@PLT	#
# segmented_sieve.c:81:     struct timespec diff = {.tv_sec = time1->tv_sec - time0->tv_sec, .tv_nsec = time1->tv_nsec - time0->tv_nsec};
	mov	rsi, QWORD PTR -80[rbp]	# end.tv_sec, end.tv_sec
# segmented_sieve.c:81:     struct timespec diff = {.tv_sec = time1->tv_sec - time0->tv_sec, .tv_nsec = time1->tv_nsec - time0->tv_nsec};
	mov	rax, QWORD PTR -72[rbp]	# end.tv_nsec, end.tv_nsec
# segmented_sieve.c:81:     struct timespec diff = {.tv_sec = time1->tv_sec - time0->tv_sec, .tv_nsec = time1->tv_nsec - time0->tv_nsec};
	sub	rsi, QWORD PTR -96[rbp]	# diff$tv_sec, begin.tv_sec
# segmented_sieve.c:82:     if (diff.tv_nsec < 0) { diff.tv_nsec += 1000000000; diff.tv_sec--; }
	sub	rax, QWORD PTR -88[rbp]	# diff$tv_nsec, begin.tv_nsec
	jns	.L415	#,
# segmented_sieve.c:82:     if (diff.tv_nsec < 0) { diff.tv_nsec += 1000000000; diff.tv_sec--; }
	add	rax, 1000000000	# diff$tv_nsec,
# segmented_sieve.c:82:     if (diff.tv_nsec < 0) { diff.tv_nsec += 1000000000; diff.tv_sec--; }
	sub	rsi, 1	# diff$tv_sec,
.L415:
# segmented_sieve.c:241:     printf("Time = %0.5f seconds\n", diff.tv_sec + (diff.tv_nsec / 1e9));
	vxorpd	xmm6, xmm6, xmm6	# tmp386
# /usr/include/x86_64-linux-gnu/bits/stdio2.h:86:   return __printf_chk (__USE_FORTIFY_LEVEL - 1, __fmt, __va_arg_pack ());
	mov	edi, 2	#,
# segmented_sieve.c:241:     printf("Time = %0.5f seconds\n", diff.tv_sec + (diff.tv_nsec / 1e9));
	vcvtsi2sd	xmm9, xmm6, rsi	# tmp315, tmp387, diff$tv_sec
# /usr/include/x86_64-linux-gnu/bits/stdio2.h:86:   return __printf_chk (__USE_FORTIFY_LEVEL - 1, __fmt, __va_arg_pack ());
	lea	rsi, .LC8[rip]	# tmp215,
# segmented_sieve.c:241:     printf("Time = %0.5f seconds\n", diff.tv_sec + (diff.tv_nsec / 1e9));
	vcvtsi2sd	xmm7, xmm6, rax	# tmp314, tmp386, diff$tv_nsec
	vdivsd	xmm8, xmm7, QWORD PTR .LC7[rip]	# tmp211, tmp210,
# /usr/include/x86_64-linux-gnu/bits/stdio2.h:86:   return __printf_chk (__USE_FORTIFY_LEVEL - 1, __fmt, __va_arg_pack ());
	mov	eax, 1	#,
# segmented_sieve.c:241:     printf("Time = %0.5f seconds\n", diff.tv_sec + (diff.tv_nsec / 1e9));
	vaddsd	xmm0, xmm8, xmm9	# tmp214, tmp211, tmp213
# /usr/include/x86_64-linux-gnu/bits/stdio2.h:86:   return __printf_chk (__USE_FORTIFY_LEVEL - 1, __fmt, __va_arg_pack ());
	call	__printf_chk@PLT	#
	mov	rdx, rbx	#, total_primes
	mov	edi, 2	#,
	xor	eax, eax	#
	mov	rcx, QWORD PTR -152[rbp]	#, %sfp
	lea	rsi, .LC9[rip]	# tmp216,
	call	__printf_chk@PLT	#
# segmented_sieve.c:244:     free(base_primes);
	mov	rdi, QWORD PTR -104[rbp]	#, %sfp
	call	free@PLT	#
# segmented_sieve.c:245:     return 0;
	xor	eax, eax	# <retval>
	jmp	.L394	#
.L466:
# segmented_sieve.c:216:     ThreadData data[num_threads];
	or	QWORD PTR -8[rsp+rsi], 0	#,
	jmp	.L403	#
.L404:
# segmented_sieve.c:217:     PrimeState *base_primes = GetBasePrimes(sqrt(max_num), &prime_count);
	mov	r10, QWORD PTR -152[rbp]	# max_num, %sfp
	vxorpd	xmm4, xmm4, xmm4	# tmp360
	mov	r11, r10	# tmp182, max_num
	and	r10d, 1	# tmp183,
	shr	r11	# tmp182
	or	r11, r10	# tmp240, tmp183
	vcvtsi2sd	xmm0, xmm4, r11	# tmp313, tmp360, tmp240
	vaddsd	xmm0, xmm0, xmm0	# _8, tmp181, tmp181
	jmp	.L405	#
.L460:
	mov	QWORD PTR -160[rbp], rsi	# %sfp, ivtmp.189
	jmp	.L462	#
.L409:
# segmented_sieve.c:217:     PrimeState *base_primes = GetBasePrimes(sqrt(max_num), &prime_count);
	vsubsd	xmm5, xmm0, xmm2	# tmp187, _9, tmp186
	vcvttsd2si	rdi, xmm5	# tmp241, tmp187
	btc	rdi, 63	# tmp185,
	jmp	.L410	#
.L417:
# segmented_sieve.c:233:     uint64_t total_primes = 1; // Count 2
	mov	ebx, 1	# total_primes,
	jmp	.L411	#
.L455:
# segmented_sieve.c:217:     PrimeState *base_primes = GetBasePrimes(sqrt(max_num), &prime_count);
	call	sqrt@PLT	#
	jmp	.L408	#
.L464:
# segmented_sieve.c:246: }
	call	__stack_chk_fail@PLT	#
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
	.type	mask2, @object
	.size	mask2, 8
mask2:
	.ascii	"\376\375\373\367\357\337\277\177"
	.align 8
	.type	mask, @object
	.size	mask, 8
mask:
	.ascii	"\001\002\004\b\020 @\200"
	.section	.rodata.cst8,"aM",@progbits,8
	.align 8
.LC1:
	.long	0
	.long	1138753536
	.align 8
.LC7:
	.long	0
	.long	1104006501
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
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
