.align 0x1000
.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r13
push %r9
push %rax
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_D_ht+0xbe45, %rsi
lea addresses_WC_ht+0xc3b5, %rdi
nop
nop
nop
add $49698, %rdx
mov $101, %rcx
rep movsw
nop
nop
nop
and $57987, %r11
lea addresses_normal_ht+0x9ab5, %rsi
lea addresses_WT_ht+0xd815, %rdi
xor $55092, %rax
mov $64, %rcx
rep movsb
nop
nop
inc %rax
lea addresses_A_ht+0x1d935, %rsi
lea addresses_D_ht+0x5bb5, %rdi
nop
nop
and $29850, %r9
mov $57, %rcx
rep movsw
dec %rdi
lea addresses_UC_ht+0x1c7b1, %rdi
nop
nop
nop
nop
nop
sub $43007, %rax
mov (%rdi), %r11d
nop
nop
nop
nop
and $21953, %rcx
lea addresses_D_ht+0xfe75, %rsi
lea addresses_UC_ht+0xa689, %rdi
nop
nop
nop
nop
add %r13, %r13
mov $108, %rcx
rep movsw
nop
nop
nop
nop
add $38147, %r9
lea addresses_A_ht+0x6e55, %rsi
lea addresses_WT_ht+0x6b7d, %rdi
nop
nop
inc %r11
mov $78, %rcx
rep movsw
add $40314, %r11
lea addresses_WT_ht+0x6db5, %rsi
lea addresses_WC_ht+0x17b5d, %rdi
nop
nop
nop
nop
nop
sub %rax, %rax
mov $9, %rcx
rep movsq
nop
nop
nop
xor $5882, %rdx
lea addresses_WT_ht+0x161b5, %rdi
nop
nop
nop
nop
and $60373, %rsi
movl $0x61626364, (%rdi)
nop
nop
nop
nop
nop
sub %rcx, %rcx
lea addresses_A_ht+0x57b5, %rsi
lea addresses_UC_ht+0xf805, %rdi
nop
nop
nop
xor %r13, %r13
mov $93, %rcx
rep movsl
nop
nop
sub %r13, %r13
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rax
pop %r9
pop %r13
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r12
push %r8
push %rax
push %rbp

// Store
lea addresses_A+0x1d6b5, %rbp
nop
nop
nop
nop
nop
sub %r10, %r10
movb $0x51, (%rbp)
nop
add %rax, %rax

// Store
lea addresses_normal+0x197d5, %r10
nop
and $33888, %r12
movb $0x51, (%r10)
xor %r10, %r10

// Faulty Load
mov $0x458fae00000007b5, %r12
nop
nop
nop
add $6136, %rbp
lea leak, %r14
lea dummy, %r15
mov (%r14), %rax
push %rax

movl $0xe7ff4190, (%r14)
leak:
vmovups (%r12), %ymm3
vextracti128 $0, %ymm3, %xmm3
vpextrq $0, %xmm3, %rax
lea oracles, %rbp
and $0xff, %rax
shlq $12, %rax
mov (%rbp,%rax,1), %rax
dummy:
pop %rax
mov %rax, (%r14)
pop %rbp
pop %rax
pop %r8
pop %r12
pop %r11
pop %r10
ret