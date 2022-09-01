.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r12
push %r13
push %r8
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_D_ht+0x4f8b, %rdx
nop
nop
cmp $25314, %rcx
mov $0x6162636465666768, %r8
movq %r8, %xmm6
vmovups %ymm6, (%rdx)
nop
nop
nop
nop
xor $31475, %r13
lea addresses_normal_ht+0x448b, %rsi
lea addresses_WT_ht+0x18abb, %rdi
nop
nop
and $49368, %r11
mov $49, %rcx
rep movsl
nop
nop
nop
nop
nop
dec %r8
lea addresses_normal_ht+0x16d8b, %rsi
lea addresses_normal_ht+0xd603, %rdi
and %r12, %r12
mov $119, %rcx
rep movsq
nop
nop
nop
nop
nop
sub $57040, %r12
lea addresses_WT_ht+0x1114b, %rsi
nop
nop
sub $41497, %rdi
mov $0x6162636465666768, %r8
movq %r8, %xmm7
vmovups %ymm7, (%rsi)
add $25946, %r13
lea addresses_A_ht+0x6d8b, %rdi
nop
nop
inc %r8
movl $0x61626364, (%rdi)
nop
nop
nop
nop
nop
dec %rsi
lea addresses_D_ht+0x768b, %r13
nop
nop
nop
inc %r12
movl $0x61626364, (%r13)
nop
nop
nop
nop
and %r8, %r8
lea addresses_UC_ht+0x2f8b, %r13
clflush (%r13)
nop
nop
cmp $38379, %rsi
vmovups (%r13), %ymm1
vextracti128 $1, %ymm1, %xmm1
vpextrq $0, %xmm1, %rdx
nop
nop
nop
sub $37443, %r12
lea addresses_normal_ht+0x1ad23, %rsi
lea addresses_normal_ht+0x316b, %rdi
cmp $30259, %r11
mov $73, %rcx
rep movsq
add %rsi, %rsi
lea addresses_UC_ht+0xe8cf, %r8
nop
add $19728, %r12
movw $0x6162, (%r8)
nop
nop
nop
nop
sub $29288, %r13
lea addresses_D_ht+0x1b0f5, %rsi
lea addresses_WC_ht+0x943b, %rdi
nop
nop
nop
nop
sub $15464, %r12
mov $0, %rcx
rep movsw
nop
nop
sub %rdx, %rdx
lea addresses_WC_ht+0x6f8b, %r13
nop
nop
nop
nop
and %rdx, %rdx
mov $0x6162636465666768, %r11
movq %r11, %xmm5
vmovups %ymm5, (%r13)
xor $0, %rsi
lea addresses_UC_ht+0x18d8b, %rdi
nop
nop
nop
and %r8, %r8
mov $0x6162636465666768, %rcx
movq %rcx, %xmm1
movups %xmm1, (%rdi)
nop
nop
nop
inc %r8
lea addresses_A_ht+0x1d2ab, %rsi
lea addresses_D_ht+0x1b563, %rdi
nop
nop
nop
sub %r12, %r12
mov $3, %rcx
rep movsw
nop
nop
nop
nop
cmp $37931, %r12
lea addresses_normal_ht+0xbab3, %rdx
nop
nop
cmp $51158, %rsi
mov $0x6162636465666768, %r11
movq %r11, (%rdx)
nop
nop
nop
nop
nop
sub $34809, %r12
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %r8
pop %r13
pop %r12
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r12
push %r14
push %rax
push %rbp

// Faulty Load
lea addresses_RW+0x12c8b, %r10
nop
nop
nop
nop
nop
xor %r12, %r12
vmovntdqa (%r10), %ymm2
vextracti128 $0, %ymm2, %xmm2
vpextrq $1, %xmm2, %rax
lea oracles, %r10
and $0xff, %rax
shlq $12, %rax
mov (%r10,%rax,1), %rax
pop %rbp
pop %rax
pop %r14
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_RW', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_RW', 'size': 32, 'AVXalign': False, 'NT': True, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 11, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 4, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 8, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 2, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'size': 4, 'AVXalign': True, 'NT': False, 'congruent': 8, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': True}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': True}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 2, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 5, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'size': 2, 'AVXalign': True, 'NT': False, 'congruent': 1, 'same': True}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 1, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 4, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 5, 'same': True}, 'dst': {'type': 'addresses_D_ht', 'congruent': 3, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'size': 8, 'AVXalign': False, 'NT': True, 'congruent': 1, 'same': False}}
{'44': 75, '00': 4}
44 44 44 44 44 44 44 44 44 44 44 44 00 44 44 44 44 44 44 44 44 44 44 44 44 44 00 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 00 44 44 44 44 44 44 44 44 44 44 44 44 44 00 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44
*/
