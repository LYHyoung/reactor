.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r12
push %r13
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_WT_ht+0x18ba3, %rsi
lea addresses_WC_ht+0x5233, %rdi
nop
nop
nop
dec %r10
mov $59, %rcx
rep movsq
nop
nop
nop
inc %r13
lea addresses_WT_ht+0x1ed43, %rsi
lea addresses_normal_ht+0x1c7d3, %rdi
nop
nop
nop
nop
xor %r12, %r12
mov $22, %rcx
rep movsl
nop
nop
nop
nop
xor $54887, %r13
lea addresses_WT_ht+0xeef3, %rsi
lea addresses_WT_ht+0x8f43, %rdi
nop
nop
add $3224, %rbp
mov $102, %rcx
rep movsb
nop
nop
nop
add %rsi, %rsi
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %r13
pop %r12
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r14
push %r15
push %r9
push %rbx
push %rcx
push %rdi

// Load
lea addresses_UC+0x12e3, %r15
nop
nop
nop
nop
and $60198, %r10
mov (%r15), %di
nop
nop
nop
nop
add %rdi, %rdi

// Store
mov $0x4cd8530000000f43, %r10
nop
nop
nop
nop
inc %rcx
mov $0x5152535455565758, %rbx
movq %rbx, %xmm0
vmovntdq %ymm0, (%r10)
and %r14, %r14

// Faulty Load
mov $0x4cd8530000000f43, %rbx
clflush (%rbx)
inc %r15
movntdqa (%rbx), %xmm5
vpextrq $0, %xmm5, %r9
lea oracles, %rbx
and $0xff, %r9
shlq $12, %r9
mov (%rbx,%r9,1), %r9
pop %rdi
pop %rcx
pop %rbx
pop %r9
pop %r15
pop %r14
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_NC', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 0}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_UC', 'NT': False, 'AVXalign': True, 'size': 2, 'congruent': 4}}
{'OP': 'STOR', 'dst': {'same': True, 'type': 'addresses_NC', 'NT': True, 'AVXalign': False, 'size': 32, 'congruent': 0}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_NC', 'NT': True, 'AVXalign': False, 'size': 16, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'same': False, 'congruent': 4, 'type': 'addresses_WT_ht'}, 'dst': {'same': True, 'congruent': 2, 'type': 'addresses_WC_ht'}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 9, 'type': 'addresses_WT_ht'}, 'dst': {'same': False, 'congruent': 3, 'type': 'addresses_normal_ht'}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 3, 'type': 'addresses_WT_ht'}, 'dst': {'same': False, 'congruent': 7, 'type': 'addresses_WT_ht'}}
{'66': 2, '64': 1, 'ae': 1, 'b2': 2, '9a': 4, '58': 21524, '36': 2, '84': 1, '68': 1, 'a6': 2, '98': 1, 'd2': 2, 'c2': 1, 'a2': 1, 'b0': 1, 'a4': 2, '56': 2, '9c': 1, 'ca': 2, '4e': 2, '6c': 3, '40': 1, 'c8': 2, 'ba': 1, 'f8': 1, '92': 3, 'e4': 3, 'de': 2, '12': 1, '46': 1, 'fe': 4, '74': 1, '60': 4, '1c': 4, 'e0': 3, '4a': 2, '06': 2, 'c6': 2, 'a0': 1, '28': 2, '02': 3, 'aa': 2, '2c': 3, '50': 6, '1e': 3, 'b6': 1, '18': 1, '0e': 3, '52': 1, '3a': 1, '82': 1, 'c4': 4, 'e8': 1, '96': 1, '30': 1, '86': 2, '14': 4, '3e': 1, 'f4': 1, 'be': 2, '80': 1, 'fa': 3, '62': 3, 'b4': 2, '42': 1, '20': 3, 'e6': 1, '72': 1, 'ce': 1, 'ea': 1, '48': 1, 'bc': 1, 'd8': 1, 'b8': 3, 'fc': 4, '54': 1, '32': 2, '0c': 2, '3c': 1, '0a': 4, '6a': 3, '10': 1, '00': 118, '2a': 1, 'f2': 2, '8e': 1, '7a': 1, '94': 3, 'ac': 2, 'da': 1, '2e': 1, '88': 3, '8c': 1, '4c': 2, '90': 1, '22': 1, 'a8': 1, '1a': 1, '5c': 2, '5e': 2, 'f0': 4}
58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 6a 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 0c 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 b4 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 da 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 1a 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 50 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 0e 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 50 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58
*/
