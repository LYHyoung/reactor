.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r15
push %rbp
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_A_ht+0x1cd7f, %r15
nop
cmp %rbp, %rbp
vmovups (%r15), %ymm0
vextracti128 $1, %ymm0, %xmm0
vpextrq $0, %xmm0, %r12
nop
nop
sub $64767, %r15
lea addresses_WT_ht+0x1c63f, %rsi
nop
nop
add %r12, %r12
movl $0x61626364, (%rsi)
nop
nop
xor $55199, %rbp
lea addresses_normal_ht+0x863f, %rsi
lea addresses_UC_ht+0x463f, %rdi
nop
nop
nop
nop
and %rdx, %rdx
mov $5, %rcx
rep movsb
xor $27648, %rcx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r15
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r13
push %r14
push %r9
push %rax
push %rbx
push %rcx

// Store
mov $0x63f, %rax
nop
nop
nop
nop
nop
add $33727, %r9
mov $0x5152535455565758, %r14
movq %r14, %xmm4
vmovntdq %ymm4, (%rax)
nop
nop
nop
nop
nop
dec %r14

// Faulty Load
lea addresses_US+0x6e3f, %r13
add %rcx, %rcx
movups (%r13), %xmm3
vpextrq $0, %xmm3, %rbx
lea oracles, %r14
and $0xff, %rbx
shlq $12, %rbx
mov (%r14,%rbx,1), %rbx
pop %rcx
pop %rbx
pop %rax
pop %r9
pop %r14
pop %r13
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': True, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_US', 'congruent': 0}}
{'dst': {'same': False, 'NT': True, 'AVXalign': False, 'size': 32, 'type': 'addresses_P', 'congruent': 9}, 'OP': 'STOR'}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_US', 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_A_ht', 'congruent': 2}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_WT_ht', 'congruent': 11}, 'OP': 'STOR'}
{'dst': {'same': True, 'congruent': 11, 'type': 'addresses_UC_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 11, 'type': 'addresses_normal_ht'}}
{'50': 172, 'd4': 1, '00': 3800, '1a': 20, 'f6': 1, '32': 2530, '7f': 8}
32 00 32 00 00 00 32 32 32 50 32 32 00 32 00 32 00 32 50 32 00 00 32 32 00 32 00 00 00 00 00 00 00 00 00 32 00 32 00 00 00 32 00 00 00 00 32 00 32 50 32 00 00 32 00 32 50 32 32 00 32 00 32 00 00 00 00 32 00 00 32 32 32 32 00 32 32 32 00 00 00 32 00 00 32 32 32 00 50 00 50 00 32 32 00 00 00 32 32 00 00 32 32 00 00 00 32 00 00 32 00 00 00 00 00 00 00 00 32 00 32 00 32 00 00 32 00 00 00 00 00 32 00 00 00 00 00 32 00 00 00 00 32 32 32 32 00 00 32 00 00 00 00 00 00 00 00 00 32 32 00 00 00 00 00 00 00 00 00 32 00 00 00 32 00 32 00 32 00 00 32 32 00 00 00 00 00 00 00 00 00 00 00 00 32 00 00 32 00 32 00 00 00 00 00 00 00 00 32 32 32 32 00 32 00 32 00 32 32 00 00 00 00 00 00 00 00 32 00 00 32 00 00 32 32 00 00 00 00 00 00 00 00 00 32 32 00 32 32 32 32 00 00 32 00 32 32 32 00 00 32 32 32 00 32 00 32 32 32 00 00 32 32 32 32 32 00 32 00 32 00 32 32 00 32 32 00 32 32 00 00 32 32 00 00 00 32 32 32 32 00 32 00 32 32 32 32 00 00 00 32 32 00 32 00 00 32 32 00 00 32 00 32 32 32 32 32 00 32 00 32 32 00 00 32 32 32 32 32 32 00 00 32 00 00 00 50 32 00 32 32 32 32 32 00 32 00 00 32 00 32 32 32 50 00 00 00 00 32 32 00 00 00 32 00 00 32 32 32 32 00 00 32 00 32 32 32 00 00 32 32 32 32 32 00 32 32 00 00 50 32 00 00 32 00 00 00 32 00 32 00 00 32 32 00 7f 32 32 32 32 00 32 00 32 00 32 32 32 00 00 32 00 32 32 32 00 00 32 32 00 32 32 00 32 32 00 00 32 32 32 00 32 32 00 00 32 32 32 32 00 50 00 32 00 32 32 32 00 32 32 00 00 32 00 00 32 32 32 00 32 32 00 00 00 00 50 00 32 00 00 00 00 32 32 00 00 32 32 00 32 00 50 00 00 32 00 32 50 00 00 32 00 00 00 00 00 32 00 00 00 00 00 32 00 00 32 32 00 00 32 32 00 00 50 32 00 32 32 00 32 32 32 00 00 00 32 32 32 32 32 00 32 00 00 00 00 00 00 00 00 00 00 00 32 32 00 32 00 00 32 32 00 32 00 32 00 00 00 00 00 00 00 00 00 00 00 00 32 00 00 00 00 00 32 00 00 32 00 00 00 50 00 00 00 00 00 00 32 32 00 00 00 00 00 00 00 00 00 00 00 00 00 00 32 00 32 00 32 00 00 00 32 00 00 32 32 00 32 32 32 00 32 32 32 00 32 00 32 00 32 32 00 32 00 00 32 00 00 32 32 32 00 32 32 32 00 00 32 32 32 32 00 00 00 32 32 00 00 00 00 00 00 00 32 32 1a 00 00 32 00 00 00 32 32 32 00 00 d4 32 50 00 32 32 00 00 00 00 32 00 00 00 00 00 00 00 00 00 00 00 00 00 32 32 32 00 00 32 32 32 00 00 00 32 00 32 00 00 32 32 00 00 32 00 32 00 32 00 32 32 32 32 32 32 32 00 32 00 00 32 00 50 00 32 32 00 32 32 32 00 32 32 32 00 00 00 32 32 32 00 32 00 00 1a 00 32 32 00 00 00 00 32 00 32 00 32 32 32 32 32 00 32 32 32 00 32 00 32 00 00 00 00 00 32 32 50 00 32 00 32 32 32 32 32 00 00 32 32 32 32 32 32 32 00 32 00 32 50 00 00 32 00 00 00 00 00 00 00 00 00 00 32 00 32 00 00 32 32 00 00 00 00 00 00 00 00 00 00 00 50 32 00 00 00 00 00 00 00 00 32 32 32 00 32 32 00 00 00 32 32 32 32 32 00 00 00 32 00 00 32 00 00 00 00 00 00 00 00 00 50 32 32 32 50 1a 32 00 00 32 32 32 32 00 50 32 32 32 32 32 32 00 32 32 32 00 32 32 50 32 00 32 32 00 50 32 00 32 32 32 32 32 00 32 32 32 32 00 00 32 32 00 32 00 32 00 32 32 50 00 32 00 00 00 00 00 32 32 32 32 50 00 00 00 00 00 00 00 00 00 32 32 32 00 00 00 00 00 00 32 00 00
*/
