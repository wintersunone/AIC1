    movq    $100, %rax
    movq    %rax, -16(%rbp)
    movq    $0, %rax
    movq    %rax, -32(%rbp)
    movq    $0, %rax
    movq    %rax, -48(%rbp)
    movq    $0, %rax
    movq    %rax, -8(%rbp)
    movq    $0, %rax
    movq    %rax, -24(%rbp)
    movq    $0, %rax
    movq    %rax, -40(%rbp)
    movq    $0, %rax
    movq    %rax, -56(%rbp)
    movq    $1, %rax
    pushq   %rax
    movq    $2, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, -8(%rbp)
.Lwtop1:
    movq    -32(%rbp), %rax
    pushq   %rax
    movq    $5, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    setl    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lwend2
    movq    -32(%rbp), %rax
    pushq   %rax
    popq    %rdi
    call    aicfn_double
    movq    %rax, -48(%rbp)
    movq    -48(%rbp), %rax
    pushq   %rax
    movq    $4, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    setg    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse3
    movq    $1, %rax
    movq    %rax, -24(%rbp)
    movq    -16(%rbp), %rax
    pushq   %rax
    movq    -32(%rbp), %rax
    pushq   %rax
    movq    -48(%rbp), %rax
    popq    %rbx
    popq    %rcx
    movb    %al, (%rcx,%rbx)
    jmp     .Lendif4
.Lelse3:
    movq    $0, %rax
    movq    %rax, -24(%rbp)
.Lendif4:
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    -48(%rbp), %rax
    pushq   %rax
    popq    %rsi
    popq    %rdi
    call    aicfn_add
    movq    %rax, -8(%rbp)
    movq    -32(%rbp), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, -32(%rbp)
    jmp     .Lwtop1
.Lwend2:
    movq    -24(%rbp), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse5
    movq    $1, %rax
    movq    %rax, -40(%rbp)
    jmp     .Lendif6
.Lelse5:
    movq    $0, %rax
    movq    %rax, -40(%rbp)
.Lendif6:
    movq    -40(%rbp), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse7
    call    aicfn_getconst
    movq    %rax, -56(%rbp)
    jmp     .Lendif8
.Lelse7:
.Lendif8:
    movq    -16(%rbp), %rax
    pushq   %rax
    movq    -32(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    movzbq  (%rax,%rbx), %rax
    movq    -16(%rbp), %rax
    pushq   %rax
    movq    -32(%rbp), %rax
    pushq   %rax
    movq    -48(%rbp), %rax
    popq    %rbx
    popq    %rcx
    movq    %rax, (%rcx,%rbx,8)
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    -48(%rbp), %rax
    pushq   %rax
    popq    %rsi
    popq    %rdi
    call    aicfn_add
    movq    -40(%rbp), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, -40(%rbp)
.Lwtop9:
    movq    -56(%rbp), %rax
    pushq   %rax
    movq    $3, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    setl    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lwend10
    movq    -56(%rbp), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, -56(%rbp)
    movq    -56(%rbp), %rax
    pushq   %rax
    movq    $2, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse11
    movq    -56(%rbp), %rax
    jmp     .Lret_test
    jmp     .Lendif12
.Lelse11:
.Lendif12:
    jmp     .Lwtop9
.Lwend10:
    movq    -8(%rbp), %rax
    jmp     .Lret_test
