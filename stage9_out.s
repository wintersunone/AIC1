    .section .rodata
fmt_nl:
    .string "%ld\n"
fmt_sp:
    .string "%ld "
fmt_s_nl:
    .string "%s\n"
fmt_s_sp:
    .string "%s "
fmt_d:
    .string "%ld"
nl_only:
    .string "\n"
aicstr_0:
    .string "main-total"
aicstr_1:
    .string "from-fn"


    .text
    .globl main
main:
    pushq   %rbp
    movq    %rsp, %rbp
    subq    $32, %rsp
    movq    $0, -8(%rbp)
    movq    $0, -16(%rbp)
    movq    $0, -24(%rbp)
    movq    $2, %rax
    movq    %rax, -16(%rbp)
    movq    $5, %rax
    movq    %rax, -24(%rbp)
    movq    -16(%rbp), %rax
    pushq   %rax
    movq    -24(%rbp), %rax
    pushq   %rax
    popq    %rsi
    popq    %rdi
    call    aicfn_add
    movq    %rax, -8(%rbp)
    leaq    aicstr_0(%rip), %rax
    leaq    fmt_s_sp(%rip), %rdi
    movq    %rax, %rsi
    xorl    %eax, %eax
    call    printf@PLT
    movq    -8(%rbp), %rax
    leaq    fmt_nl(%rip), %rdi
    movq    %rax, %rsi
    xorl    %eax, %eax
    call    printf@PLT
    call    aicfn_make_msg
    leaq    fmt_s_nl(%rip), %rdi
    movq    %rax, %rsi
    xorl    %eax, %eax
    call    printf@PLT
    movq    $0, %rax
    leave
    ret

aicfn_add:
    pushq   %rbp
    movq    %rsp, %rbp
    subq    $32, %rsp
    movq    %rdi, -8(%rbp)
    movq    %rsi, -16(%rbp)
    movq    $0, -24(%rbp)
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    -16(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, -24(%rbp)
    movq    -24(%rbp), %rax
    jmp     .Lret_add
    movq    $0, %rax
.Lret_add:
    leave
    ret

aicfn_make_msg:
    pushq   %rbp
    movq    %rsp, %rbp
    subq    $16, %rsp


    leaq    aicstr_1(%rip), %rax
    jmp     .Lret_make_msg
    movq    $0, %rax
.Lret_make_msg:
    leave
    ret



    .section .note.GNU-stack,"",@progbits
