    movq    $7, %rax
    movq    %rax, -64(%rbp)
    movq    $3, %rax
    movq    %rax, -72(%rbp)
    movq    $32, %rax
    leaq    1(%rax), %rdi
    movq    $1, %rsi
    call    calloc@PLT
    testq   %rax, %rax
    jne     .Lallocok1
    jmp     .Lruntimeerror
.Lallocok1:
    movq    %rax, -8(%rbp)
    movq    -8(%rbp), %rax
    movq    %rax, %rdi
    call    strlen@PLT
    movq    %rax, -24(%rbp)
    movq    -64(%rbp), %rax
    movq    %rax, %r12
    movq    $24, %rdi
    call    malloc@PLT
    testq   %rax, %rax
    jne     .Lallocok2
    jmp     .Lruntimeerror
.Lallocok2:
    movq    %rax, %r13
    movq    %r13, %rdi
    leaq    fmt_d(%rip), %rsi
    movq    %r12, %rdx
    xorl    %eax, %eax
    call    sprintf@PLT
    movq    %r13, %rax
    movq    %rax, -40(%rbp)
    leaq    aicstr_0(%rip), %rax
    movq    %rax, %rdi
    xorl    %esi, %esi
    movq    $10, %rdx
    call    strtol@PLT
    movq    %rax, -56(%rbp)
    leaq    aicstr_1(%rip), %rax
    movq    %rax, %rdi
    leaq    aicstr_2(%rip), %rsi
    call    fopen@PLT
    testq   %rax, %rax
    jne     .Lopenok3
    jmp     .Lruntimeerror
.Lopenok3:
    movq    %rax, -16(%rbp)
    movq    -16(%rbp), %rax
    movq    %rax, %r12
    movq    %r12, %rdi
    call    ftell@PLT
    movq    %rax, %r13
    movq    %r12, %rdi
    movq    $0, %rsi
    movq    $2, %rdx
    call    fseek@PLT
    movq    %r12, %rdi
    call    ftell@PLT
    movq    %rax, %r14
    movq    %r12, %rdi
    movq    %r13, %rsi
    movq    $0, %rdx
    call    fseek@PLT
    movq    %r14, %rax
    movq    %rax, -48(%rbp)
    movq    -16(%rbp), %rax
    movq    %rax, %r12
    movq    $10, %rax
    movq    %rax, %r13
    leaq    1(%r13), %rdi
    call    malloc@PLT
    testq   %rax, %rax
    jne     .Lallocok4
    jmp     .Lruntimeerror
.Lallocok4:
    movq    %rax, %r14
    movq    %r14, %rdi
    movq    $1, %rsi
    movq    %r13, %rdx
    movq    %r12, %rcx
    call    fread@PLT
    movb    $0, (%r14,%rax)
    movq    %r14, %rax
    movq    %rax, -32(%rbp)
    movq    -64(%rbp), %rax
    leaq    fmt_nl(%rip), %rdi
    movq    %rax, %rsi
    xorl    %eax, %eax
    call    printf@PLT
    leaq    aicstr_3(%rip), %rax
    leaq    fmt_s_nl(%rip), %rdi
    movq    %rax, %rsi
    xorl    %eax, %eax
    call    printf@PLT
    leaq    aicstr_4(%rip), %rax
    leaq    fmt_s_sp(%rip), %rdi
    movq    %rax, %rsi
    xorl    %eax, %eax
    call    printf@PLT
    movq    -64(%rbp), %rax
    leaq    fmt_nl(%rip), %rdi
    movq    %rax, %rsi
    xorl    %eax, %eax
    call    printf@PLT
    movq    -64(%rbp), %rax
    leaq    fmt_sp(%rip), %rdi
    movq    %rax, %rsi
    xorl    %eax, %eax
    call    printf@PLT
    movq    -72(%rbp), %rax
    leaq    fmt_nl(%rip), %rdi
    movq    %rax, %rsi
    xorl    %eax, %eax
    call    printf@PLT
    call    aicfn_mkmsg
    leaq    fmt_s_nl(%rip), %rdi
    movq    %rax, %rsi
    xorl    %eax, %eax
    call    printf@PLT
    movq    -64(%rbp), %rax
    pushq   %rax
    movq    $0, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    setg    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lternelse5
    leaq    aicstr_5(%rip), %rax
    jmp     .Lternend6
.Lternelse5:
    leaq    aicstr_6(%rip), %rax
.Lternend6:
    leaq    fmt_s_nl(%rip), %rdi
    movq    %rax, %rsi
    xorl    %eax, %eax
    call    printf@PLT
    movq    -16(%rbp), %rax
    movq    %rax, %r12
    movq    -32(%rbp), %rax
    movq    %rax, %r13
    movq    %r13, %rdi
    call    strlen@PLT
    movq    %rax, %r14
    movq    %r13, %rdi
    movq    $1, %rsi
    movq    %r14, %rdx
    movq    %r12, %rcx
    call    fwrite@PLT
    movq    -16(%rbp), %rax
    movq    %rax, %rdi
    call    fclose@PLT
    movq    $8, %rax
    leaq    1(%rax), %rdi
    movq    $1, %rsi
    call    calloc@PLT
    testq   %rax, %rax
    jne     .Lallocok7
    jmp     .Lruntimeerror
.Lallocok7:
    movq    -8(%rbp), %rax
    movq    %rax, %rdi
    call    strlen@PLT
    movq    -64(%rbp), %rax
    movq    %rax, %r12
    movq    $24, %rdi
    call    malloc@PLT
    testq   %rax, %rax
    jne     .Lallocok8
    jmp     .Lruntimeerror
.Lallocok8:
    movq    %rax, %r13
    movq    %r13, %rdi
    leaq    fmt_d(%rip), %rsi
    movq    %r12, %rdx
    xorl    %eax, %eax
    call    sprintf@PLT
    movq    %r13, %rax
    leaq    aicstr_7(%rip), %rax
    movq    %rax, %rdi
    xorl    %esi, %esi
    movq    $10, %rdx
    call    strtol@PLT
    movq    -64(%rbp), %rax
    jmp     .Lret_test
