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
    .string "--- DSS BENCHMARK ---"
aicstr_1:
    .string "Total:"
aicstr_2:
    .string "Elapsed Seconds:"


    .text
    .globl main
main:
    pushq   %rbp
    movq    %rsp, %rbp
    subq    $32, %rsp
    movq    $0, -8(%rbp)
    movq    $0, -16(%rbp)
    movq    $0, -24(%rbp)
    movq    $0, -32(%rbp)
    movq    %rax, -24(%rbp)
    movq    $0, %rax
    movq    %rax, -16(%rbp)
    movq    $0, %rax
    movq    %rax, -32(%rbp)
.Lwtop1:
    movq    -16(%rbp), %rax
    pushq   %rax
    movq    $1000000, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    setl    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lwend2
    movq    -32(%rbp), %rax
    pushq   %rax
    movq    -16(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, -32(%rbp)
    movq    -16(%rbp), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, -16(%rbp)
    jmp     .Lwtop1
.Lwend2:
    movq    %rax, -8(%rbp)
    leaq    aicstr_0(%rip), %rax
    leaq    fmt_s_nl(%rip), %rdi
    movq    %rax, %rsi
    xorl    %eax, %eax
    call    printf@PLT
    leaq    aicstr_1(%rip), %rax
    leaq    fmt_s_sp(%rip), %rdi
    movq    %rax, %rsi
    xorl    %eax, %eax
    call    printf@PLT
    movq    -32(%rbp), %rax
    leaq    fmt_nl(%rip), %rdi
    movq    %rax, %rsi
    xorl    %eax, %eax
    call    printf@PLT
    leaq    aicstr_2(%rip), %rax
    leaq    fmt_s_sp(%rip), %rdi
    movq    %rax, %rsi
    xorl    %eax, %eax
    call    printf@PLT
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    -24(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    subq    %rbx, %rax
    leaq    fmt_nl(%rip), %rdi
    movq    %rax, %rsi
    xorl    %eax, %eax
    call    printf@PLT
    movq    $0, %rax
    leave
    ret


    .section .note.GNU-stack,"",@progbits
