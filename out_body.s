    .globl aic_main
aic_main:
    pushq   %rbp
    movq    %rsp, %rbp
    subq    $16, %rsp
    call    aicfn_main
    movq    $0, %rax
.Lmain_ret:
    leave
    ret

aicfn_concat2:
    pushq   %rbp
    movq    %rsp, %rbp
    subq    $64, %rsp
    movq    %rdi, -8(%rbp)
    movq    %rsi, -16(%rbp)
    movq    $0, -24(%rbp)
    movq    $0, -32(%rbp)
    movq    $0, -40(%rbp)
    movq    $0, -48(%rbp)
    movq    $0, -56(%rbp)
    movq    -8(%rbp), %rax
    movq    %rax, %rdi
    call    aic_strlen
    movq    %rax, -48(%rbp)
    movq    -16(%rbp), %rax
    movq    %rax, %rdi
    call    aic_strlen
    movq    %rax, -56(%rbp)
    movq    -48(%rbp), %rax
    pushq   %rax
    movq    -56(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    leaq    1(%rax), %rdi
    movq    $1, %rsi
    call    aic_calloc
    testq   %rax, %rax
    jne     .Lallocok1
    jmp     .Lruntimeerror
.Lallocok1:
    movq    %rax, -24(%rbp)
    movq    $0, %rax
    movq    %rax, -32(%rbp)
.Lwtop2:
    movq    -32(%rbp), %rax
    pushq   %rax
    movq    -48(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    setl    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lwend3
    movq    -24(%rbp), %rax
    pushq   %rax
    movq    -32(%rbp), %rax
    pushq   %rax
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    -32(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    movzbq  (%rax,%rbx), %rax
    popq    %rbx
    popq    %rcx
    movb    %al, (%rcx,%rbx)
    movq    -32(%rbp), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, -32(%rbp)
    jmp     .Lwtop2
.Lwend3:
    movq    $0, %rax
    movq    %rax, -40(%rbp)
.Lwtop4:
    movq    -40(%rbp), %rax
    pushq   %rax
    movq    -56(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    setl    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lwend5
    movq    -24(%rbp), %rax
    pushq   %rax
    movq    -48(%rbp), %rax
    pushq   %rax
    movq    -40(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    pushq   %rax
    movq    -16(%rbp), %rax
    pushq   %rax
    movq    -40(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    movzbq  (%rax,%rbx), %rax
    popq    %rbx
    popq    %rcx
    movb    %al, (%rcx,%rbx)
    movq    -40(%rbp), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, -40(%rbp)
    jmp     .Lwtop4
.Lwend5:
    movq    -24(%rbp), %rax
    pushq   %rax
    movq    -48(%rbp), %rax
    pushq   %rax
    movq    -56(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    pushq   %rax
    movq    $0, %rax
    popq    %rbx
    popq    %rcx
    movb    %al, (%rcx,%rbx)
    movq    -24(%rbp), %rax
    jmp     .Lret_concat2
    movq    $0, %rax
.Lret_concat2:
    leave
    ret

aicfn_format_zoom:
    pushq   %rbp
    movq    %rsp, %rbp
    subq    $16, %rsp
    movq    %rdi, -8(%rbp)
    movq    $0, -16(%rbp)
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    $100, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    setl    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse6
    leaq    aicstr_0(%rip), %rax
    jmp     .Lret_format_zoom
    jmp     .Lendif7
.Lelse6:
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    $100, %rax
    movq    %rax, %rbx
    popq    %rax
    testq   %rbx, %rbx
    jne     .Ldivok8
    jmp     .Ldivzero
.Ldivok8:
    cqto
    idivq   %rbx
    movq    %rax, -16(%rbp)
    movq    -16(%rbp), %rax
    movq    %rax, %r12
    movq    $24, %rdi
    call    aic_malloc
    testq   %rax, %rax
    jne     .Lallocok9
    jmp     .Lruntimeerror
.Lallocok9:
    movq    %rax, %r13
    movq    %r13, %rdi
    leaq    fmt_d(%rip), %rsi
    movq    %r12, %rdx
    xorl    %eax, %eax
    call    aic_sprintf
    movq    %r13, %rax
    pushq   %rax
    leaq    aicstr_1(%rip), %rax
    pushq   %rax
    popq    %rsi
    popq    %rdi
    call    aicfn_concat2
    jmp     .Lret_format_zoom
.Lendif7:
    movq    $0, %rax
.Lret_format_zoom:
    leave
    ret

aicfn_get_location_name:
    pushq   %rbp
    movq    %rsp, %rbp
    subq    $16, %rsp
    movq    %rdi, -8(%rbp)

    movq    -8(%rbp), %rax
    pushq   %rax
    movq    $0, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse10
    leaq    aicstr_2(%rip), %rax
    jmp     .Lret_get_location_name
    jmp     .Lendif11
.Lelse10:
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse12
    leaq    aicstr_3(%rip), %rax
    jmp     .Lret_get_location_name
    jmp     .Lendif13
.Lelse12:
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    $2, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse14
    leaq    aicstr_4(%rip), %rax
    jmp     .Lret_get_location_name
    jmp     .Lendif15
.Lelse14:
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    $3, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse16
    leaq    aicstr_5(%rip), %rax
    jmp     .Lret_get_location_name
    jmp     .Lendif17
.Lelse16:
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    $4, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse18
    leaq    aicstr_6(%rip), %rax
    jmp     .Lret_get_location_name
    jmp     .Lendif19
.Lelse18:
    leaq    aicstr_7(%rip), %rax
    jmp     .Lret_get_location_name
.Lendif19:
.Lendif17:
.Lendif15:
.Lendif13:
.Lendif11:
    movq    $0, %rax
.Lret_get_location_name:
    leave
    ret

aicfn_apply_command:
    pushq   %rbp
    movq    %rsp, %rbp
    subq    $48, %rsp
    movq    %rdi, -8(%rbp)
    movq    %rsi, -16(%rbp)
    movq    $0, -24(%rbp)
    movq    $0, -32(%rbp)
    movq    $0, -40(%rbp)
    movq    -8(%rbp), %rax
    movq    16(%rax), %rax
    movq    %rax, -40(%rbp)
    movq    $4000000, %rax
    pushq   %rax
    movq    -40(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    testq   %rbx, %rbx
    jne     .Ldivok20
    jmp     .Ldivzero
.Ldivok20:
    cqto
    idivq   %rbx
    movq    %rax, -32(%rbp)
    movq    -32(%rbp), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    setl    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse21
    movq    $1, %rax
    movq    %rax, -32(%rbp)
    jmp     .Lendif22
.Lelse21:
.Lendif22:
    movq    -16(%rbp), %rax
    pushq   %rax
    movq    $119, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    jne      .Lscshort25
    movq    -16(%rbp), %rax
    pushq   %rax
    movq    $87, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    setne   %al
    movzbq  %al, %rax
    jmp     .Lscend26
.Lscshort25:
    movq    $1, %rax
.Lscend26:
    testq   %rax, %rax
    je      .Lelse23
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    -8(%rbp), %rax
    movq    8(%rax), %rax
    pushq   %rax
    movq    -32(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    subq    %rbx, %rax
    popq    %rbx
    movq    %rax, 8(%rbx)
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    $4, %rax
    popq    %rbx
    movq    %rax, 48(%rbx)
    jmp     .Lendif24
.Lelse23:
    movq    -16(%rbp), %rax
    pushq   %rax
    movq    $115, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    jne      .Lscshort29
    movq    -16(%rbp), %rax
    pushq   %rax
    movq    $83, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    setne   %al
    movzbq  %al, %rax
    jmp     .Lscend30
.Lscshort29:
    movq    $1, %rax
.Lscend30:
    testq   %rax, %rax
    je      .Lelse27
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    -8(%rbp), %rax
    movq    8(%rax), %rax
    pushq   %rax
    movq    -32(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    popq    %rbx
    movq    %rax, 8(%rbx)
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    $4, %rax
    popq    %rbx
    movq    %rax, 48(%rbx)
    jmp     .Lendif28
.Lelse27:
    movq    -16(%rbp), %rax
    pushq   %rax
    movq    $97, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    jne      .Lscshort33
    movq    -16(%rbp), %rax
    pushq   %rax
    movq    $65, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    setne   %al
    movzbq  %al, %rax
    jmp     .Lscend34
.Lscshort33:
    movq    $1, %rax
.Lscend34:
    testq   %rax, %rax
    je      .Lelse31
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    -8(%rbp), %rax
    movq    0(%rax), %rax
    pushq   %rax
    movq    -32(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    subq    %rbx, %rax
    popq    %rbx
    movq    %rax, 0(%rbx)
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    $4, %rax
    popq    %rbx
    movq    %rax, 48(%rbx)
    jmp     .Lendif32
.Lelse31:
    movq    -16(%rbp), %rax
    pushq   %rax
    movq    $100, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    jne      .Lscshort37
    movq    -16(%rbp), %rax
    pushq   %rax
    movq    $68, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    setne   %al
    movzbq  %al, %rax
    jmp     .Lscend38
.Lscshort37:
    movq    $1, %rax
.Lscend38:
    testq   %rax, %rax
    je      .Lelse35
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    -8(%rbp), %rax
    movq    0(%rax), %rax
    pushq   %rax
    movq    -32(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    popq    %rbx
    movq    %rax, 0(%rbx)
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    $4, %rax
    popq    %rbx
    movq    %rax, 48(%rbx)
    jmp     .Lendif36
.Lelse35:
    movq    -16(%rbp), %rax
    pushq   %rax
    movq    $43, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    jne      .Lscshort41
    movq    -16(%rbp), %rax
    pushq   %rax
    movq    $61, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    setne   %al
    movzbq  %al, %rax
    jmp     .Lscend42
.Lscshort41:
    movq    $1, %rax
.Lscend42:
    testq   %rax, %rax
    je      .Lelse39
    movq    -40(%rbp), %rax
    pushq   %rax
    movq    $150, %rax
    movq    %rax, %rbx
    popq    %rax
    imulq   %rbx, %rax
    pushq   %rax
    movq    $100, %rax
    movq    %rax, %rbx
    popq    %rax
    testq   %rbx, %rbx
    jne     .Ldivok43
    jmp     .Ldivzero
.Ldivok43:
    cqto
    idivq   %rbx
    movq    %rax, -24(%rbp)
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    -24(%rbp), %rax
    popq    %rbx
    movq    %rax, 16(%rbx)
    jmp     .Lendif40
.Lelse39:
    movq    -16(%rbp), %rax
    pushq   %rax
    movq    $45, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    jne      .Lscshort46
    movq    -16(%rbp), %rax
    pushq   %rax
    movq    $95, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    setne   %al
    movzbq  %al, %rax
    jmp     .Lscend47
.Lscshort46:
    movq    $1, %rax
.Lscend47:
    testq   %rax, %rax
    je      .Lelse44
    movq    -40(%rbp), %rax
    pushq   %rax
    movq    $100, %rax
    movq    %rax, %rbx
    popq    %rax
    imulq   %rbx, %rax
    pushq   %rax
    movq    $150, %rax
    movq    %rax, %rbx
    popq    %rax
    testq   %rbx, %rbx
    jne     .Ldivok48
    jmp     .Ldivzero
.Ldivok48:
    cqto
    idivq   %rbx
    movq    %rax, -24(%rbp)
    movq    -24(%rbp), %rax
    pushq   %rax
    movq    $50, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    setl    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse49
    movq    $50, %rax
    movq    %rax, -24(%rbp)
    jmp     .Lendif50
.Lelse49:
.Lendif50:
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    -24(%rbp), %rax
    popq    %rbx
    movq    %rax, 16(%rbx)
    jmp     .Lendif45
.Lelse44:
    movq    -16(%rbp), %rax
    pushq   %rax
    movq    $49, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse51
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    $-74360, %rax
    popq    %rbx
    movq    %rax, 0(%rbx)
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    $13180, %rax
    popq    %rbx
    movq    %rax, 8(%rbx)
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    $800, %rax
    popq    %rbx
    movq    %rax, 16(%rbx)
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    $48, %rax
    popq    %rbx
    movq    %rax, 24(%rbx)
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    $1, %rax
    popq    %rbx
    movq    %rax, 48(%rbx)
    jmp     .Lendif52
.Lelse51:
    movq    -16(%rbp), %rax
    pushq   %rax
    movq    $50, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse53
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    $27500, %rax
    popq    %rbx
    movq    %rax, 0(%rbx)
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    $0, %rax
    popq    %rbx
    movq    %rax, 8(%rbx)
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    $400, %rax
    popq    %rbx
    movq    %rax, 16(%rbx)
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    $36, %rax
    popq    %rbx
    movq    %rax, 24(%rbx)
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    $2, %rax
    popq    %rbx
    movq    %rax, 48(%rbx)
    jmp     .Lendif54
.Lelse53:
    movq    -16(%rbp), %rax
    pushq   %rax
    movq    $51, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse55
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    $-175000, %rax
    popq    %rbx
    movq    %rax, 0(%rbx)
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    $0, %rax
    popq    %rbx
    movq    %rax, 8(%rbx)
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    $600, %rax
    popq    %rbx
    movq    %rax, 16(%rbx)
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    $40, %rax
    popq    %rbx
    movq    %rax, 24(%rbx)
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    $3, %rax
    popq    %rbx
    movq    %rax, 48(%rbx)
    jmp     .Lendif56
.Lelse55:
    movq    -16(%rbp), %rax
    pushq   %rax
    movq    $114, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    jne      .Lscshort59
    movq    -16(%rbp), %rax
    pushq   %rax
    movq    $82, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    setne   %al
    movzbq  %al, %rax
    jmp     .Lscend60
.Lscshort59:
    movq    $1, %rax
.Lscend60:
    testq   %rax, %rax
    je      .Lelse57
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    $-75000, %rax
    popq    %rbx
    movq    %rax, 0(%rbx)
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    $0, %rax
    popq    %rbx
    movq    %rax, 8(%rbx)
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    $100, %rax
    popq    %rbx
    movq    %rax, 16(%rbx)
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    $32, %rax
    popq    %rbx
    movq    %rax, 24(%rbx)
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    $0, %rax
    popq    %rbx
    movq    %rax, 48(%rbx)
    jmp     .Lendif58
.Lelse57:
.Lendif58:
.Lendif56:
.Lendif54:
.Lendif52:
.Lendif45:
.Lendif40:
.Lendif36:
.Lendif32:
.Lendif28:
.Lendif24:
    movq    $0, %rax
    jmp     .Lret_apply_command
    movq    $0, %rax
.Lret_apply_command:
    leave
    ret

aicfn_render_view:
    pushq   %rbp
    movq    %rsp, %rbp
    subq    $240, %rsp
    movq    %rdi, -8(%rbp)
    movq    $0, -16(%rbp)
    movq    $0, -24(%rbp)
    movq    $0, -32(%rbp)
    movq    $0, -40(%rbp)
    movq    $0, -48(%rbp)
    movq    $0, -56(%rbp)
    movq    $0, -64(%rbp)
    movq    $0, -72(%rbp)
    movq    $0, -80(%rbp)
    movq    $0, -88(%rbp)
    movq    $0, -96(%rbp)
    movq    $0, -104(%rbp)
    movq    $0, -112(%rbp)
    movq    $0, -120(%rbp)
    movq    $0, -128(%rbp)
    movq    $0, -136(%rbp)
    movq    $0, -144(%rbp)
    movq    $0, -152(%rbp)
    movq    $0, -160(%rbp)
    movq    $0, -168(%rbp)
    movq    $0, -176(%rbp)
    movq    $0, -184(%rbp)
    movq    $0, -192(%rbp)
    movq    $0, -200(%rbp)
    movq    $0, -208(%rbp)
    movq    $0, -216(%rbp)
    movq    $0, -224(%rbp)
    movq    $0, -232(%rbp)
    movq    -8(%rbp), %rax
    movq    0(%rax), %rax
    movq    %rax, -56(%rbp)
    movq    -8(%rbp), %rax
    movq    8(%rax), %rax
    movq    %rax, -64(%rbp)
    movq    -8(%rbp), %rax
    movq    16(%rax), %rax
    movq    %rax, -216(%rbp)
    movq    -8(%rbp), %rax
    movq    24(%rax), %rax
    movq    %rax, -120(%rbp)
    movq    -8(%rbp), %rax
    movq    32(%rax), %rax
    movq    %rax, -48(%rbp)
    movq    -8(%rbp), %rax
    movq    40(%rax), %rax
    movq    %rax, -160(%rbp)
    movq    -8(%rbp), %rax
    movq    48(%rax), %rax
    movq    %rax, -144(%rbp)
    movq    -144(%rbp), %rax
    pushq   %rax
    popq    %rdi
    call    aicfn_get_location_name
    movq    %rax, -112(%rbp)
    movq    -216(%rbp), %rax
    pushq   %rax
    popq    %rdi
    call    aicfn_format_zoom
    movq    %rax, -208(%rbp)
    leaq    aicstr_8(%rip), %rax
    leaq    fmt_s_sp(%rip), %rdi
    movq    %rax, %rsi
    xorl    %eax, %eax
    call    aic_printf
    movq    -112(%rbp), %rax
    leaq    fmt_s_sp(%rip), %rdi
    movq    %rax, %rsi
    xorl    %eax, %eax
    call    aic_printf
    leaq    aicstr_9(%rip), %rax
    leaq    fmt_s_sp(%rip), %rdi
    movq    %rax, %rsi
    xorl    %eax, %eax
    call    aic_printf
    movq    -208(%rbp), %rax
    leaq    fmt_s_sp(%rip), %rdi
    movq    %rax, %rsi
    xorl    %eax, %eax
    call    aic_printf
    leaq    aicstr_10(%rip), %rax
    leaq    fmt_s_nl(%rip), %rdi
    movq    %rax, %rsi
    xorl    %eax, %eax
    call    aic_printf
    leaq    aicstr_11(%rip), %rax
    movq    %rax, -136(%rbp)
    movq    $30000000, %rax
    pushq   %rax
    movq    -48(%rbp), %rax
    pushq   %rax
    movq    -216(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    imulq   %rbx, %rax
    movq    %rax, %rbx
    popq    %rax
    testq   %rbx, %rbx
    jne     .Ldivok61
    jmp     .Ldivzero
.Ldivok61:
    cqto
    idivq   %rbx
    movq    %rax, -168(%rbp)
    movq    -168(%rbp), %rax
    pushq   %rax
    movq    $0, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    setle    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse62
    movq    $1, %rax
    movq    %rax, -168(%rbp)
    jmp     .Lendif63
.Lelse62:
.Lendif63:
    movq    $24000000, %rax
    pushq   %rax
    movq    -160(%rbp), %rax
    pushq   %rax
    movq    -216(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    imulq   %rbx, %rax
    movq    %rax, %rbx
    popq    %rax
    testq   %rbx, %rbx
    jne     .Ldivok64
    jmp     .Ldivzero
.Ldivok64:
    cqto
    idivq   %rbx
    movq    %rax, -176(%rbp)
    movq    -176(%rbp), %rax
    pushq   %rax
    movq    $0, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    setle    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse65
    movq    $1, %rax
    movq    %rax, -176(%rbp)
    jmp     .Lendif66
.Lelse65:
.Lendif66:
    movq    -48(%rbp), %rax
    pushq   %rax
    movq    $2, %rax
    movq    %rax, %rbx
    popq    %rax
    testq   %rbx, %rbx
    jne     .Ldivok67
    jmp     .Ldivzero
.Ldivok67:
    cqto
    idivq   %rbx
    movq    %rax, -80(%rbp)
    movq    -160(%rbp), %rax
    pushq   %rax
    movq    $2, %rax
    movq    %rax, %rbx
    popq    %rax
    testq   %rbx, %rbx
    jne     .Ldivok68
    jmp     .Ldivzero
.Ldivok68:
    cqto
    idivq   %rbx
    movq    %rax, -88(%rbp)
    movq    -48(%rbp), %rax
    pushq   %rax
    movq    $2, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    leaq    1(%rax), %rdi
    movq    $1, %rsi
    call    aic_calloc
    testq   %rax, %rax
    jne     .Lallocok69
    jmp     .Lruntimeerror
.Lallocok69:
    movq    %rax, -104(%rbp)
    movq    $0, %rax
    movq    %rax, -152(%rbp)
.Lwtop70:
    movq    -152(%rbp), %rax
    pushq   %rax
    movq    -160(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    setl    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lwend71
    movq    -64(%rbp), %rax
    pushq   %rax
    movq    -152(%rbp), %rax
    pushq   %rax
    movq    -88(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    subq    %rbx, %rax
    pushq   %rax
    movq    -176(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    imulq   %rbx, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, -32(%rbp)
    movq    $0, %rax
    movq    %rax, -16(%rbp)
.Lwtop72:
    movq    -16(%rbp), %rax
    pushq   %rax
    movq    -48(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    setl    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lwend73
    movq    -56(%rbp), %rax
    pushq   %rax
    movq    -16(%rbp), %rax
    pushq   %rax
    movq    -80(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    subq    %rbx, %rax
    pushq   %rax
    movq    -168(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    imulq   %rbx, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, -24(%rbp)
    movq    $0, %rax
    movq    %rax, -224(%rbp)
    movq    $0, %rax
    movq    %rax, -232(%rbp)
    movq    $0, %rax
    movq    %rax, -96(%rbp)
    movq    $0, %rax
    movq    %rax, -72(%rbp)
.Lwtop74:
    movq    -96(%rbp), %rax
    pushq   %rax
    movq    -120(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    setl    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lscshort76
    movq    -72(%rbp), %rax
    pushq   %rax
    movq    $0, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    setne   %al
    movzbq  %al, %rax
    jmp     .Lscend77
.Lscshort76:
    movq    $0, %rax
.Lscend77:
    testq   %rax, %rax
    je      .Lwend75
    movq    -224(%rbp), %rax
    pushq   %rax
    movq    -224(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    imulq   %rbx, %rax
    pushq   %rax
    movq    $100000, %rax
    movq    %rax, %rbx
    popq    %rax
    testq   %rbx, %rbx
    jne     .Ldivok78
    jmp     .Ldivzero
.Ldivok78:
    cqto
    idivq   %rbx
    movq    %rax, -192(%rbp)
    movq    -232(%rbp), %rax
    pushq   %rax
    movq    -232(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    imulq   %rbx, %rax
    pushq   %rax
    movq    $100000, %rax
    movq    %rax, %rbx
    popq    %rax
    testq   %rbx, %rbx
    jne     .Ldivok79
    jmp     .Ldivzero
.Ldivok79:
    cqto
    idivq   %rbx
    movq    %rax, -200(%rbp)
    movq    -192(%rbp), %rax
    pushq   %rax
    movq    -200(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    pushq   %rax
    movq    $400000, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    setg    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse80
    movq    $1, %rax
    movq    %rax, -72(%rbp)
    jmp     .Lendif81
.Lelse80:
    movq    $2, %rax
    pushq   %rax
    movq    -224(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    imulq   %rbx, %rax
    pushq   %rax
    movq    -232(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    imulq   %rbx, %rax
    pushq   %rax
    movq    $100000, %rax
    movq    %rax, %rbx
    popq    %rax
    testq   %rbx, %rbx
    jne     .Ldivok82
    jmp     .Ldivzero
.Ldivok82:
    cqto
    idivq   %rbx
    movq    %rax, -184(%rbp)
    movq    -192(%rbp), %rax
    pushq   %rax
    movq    -200(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    subq    %rbx, %rax
    pushq   %rax
    movq    -24(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, -224(%rbp)
    movq    -184(%rbp), %rax
    pushq   %rax
    movq    -32(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, -232(%rbp)
    movq    -96(%rbp), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, -96(%rbp)
.Lendif81:
    jmp     .Lwtop74
.Lwend75:
    movq    $32, %rax
    movq    %rax, -40(%rbp)
    movq    -72(%rbp), %rax
    pushq   %rax
    movq    $0, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse83
    movq    $32, %rax
    movq    %rax, -40(%rbp)
    jmp     .Lendif84
.Lelse83:
    movq    -96(%rbp), %rax
    pushq   %rax
    movq    $10, %rax
    movq    %rax, %rbx
    popq    %rax
    imulq   %rbx, %rax
    pushq   %rax
    movq    -120(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    testq   %rbx, %rbx
    jne     .Ldivok85
    jmp     .Ldivzero
.Ldivok85:
    cqto
    idivq   %rbx
    movq    %rax, -128(%rbp)
    movq    -128(%rbp), %rax
    pushq   %rax
    movq    $10, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    setge    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse86
    movq    $9, %rax
    movq    %rax, -128(%rbp)
    jmp     .Lendif87
.Lelse86:
.Lendif87:
    movq    -128(%rbp), %rax
    pushq   %rax
    movq    $0, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    setl    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse88
    movq    $0, %rax
    movq    %rax, -128(%rbp)
    jmp     .Lendif89
.Lelse88:
.Lendif89:
    movq    -136(%rbp), %rax
    pushq   %rax
    movq    -128(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    movzbq  (%rax,%rbx), %rax
    movq    %rax, -40(%rbp)
.Lendif84:
    movq    -104(%rbp), %rax
    pushq   %rax
    movq    -16(%rbp), %rax
    pushq   %rax
    movq    -40(%rbp), %rax
    popq    %rbx
    popq    %rcx
    movb    %al, (%rcx,%rbx)
    movq    -16(%rbp), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, -16(%rbp)
    jmp     .Lwtop72
.Lwend73:
    movq    -104(%rbp), %rax
    pushq   %rax
    movq    -48(%rbp), %rax
    pushq   %rax
    movq    $0, %rax
    popq    %rbx
    popq    %rcx
    movb    %al, (%rcx,%rbx)
    movq    -104(%rbp), %rax
    leaq    fmt_s_nl(%rip), %rdi
    movq    %rax, %rsi
    xorl    %eax, %eax
    call    aic_printf
    movq    -152(%rbp), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, -152(%rbp)
    jmp     .Lwtop70
.Lwend71:
    movq    $0, %rax
    jmp     .Lret_render_view
    movq    $0, %rax
.Lret_render_view:
    leave
    ret

aicfn_main:
    pushq   %rbp
    movq    %rsp, %rbp
    subq    $48, %rsp

    movq    $0, -8(%rbp)
    movq    $0, -16(%rbp)
    movq    $0, -24(%rbp)
    movq    $0, -32(%rbp)
    movq    $0, -40(%rbp)
    movq    $0, -48(%rbp)
    movq    $1, %rax
    movq    %rax, %rdi
    call    aic_arg
    movq    %rax, -8(%rbp)
    movq    $0, %rax
    movq    %rax, -24(%rbp)
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    $0, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    setne    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse90
    movq    -8(%rbp), %rax
    movq    %rax, %rdi
    call    aic_strlen
    pushq   %rax
    movq    $0, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    setg    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse92
    movq    $1, %rax
    movq    %rax, -24(%rbp)
    jmp     .Lendif93
.Lelse92:
.Lendif93:
    jmp     .Lendif91
.Lelse90:
.Lendif91:
    movq    -24(%rbp), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse94
    leaq    aicstr_12(%rip), %rax
    leaq    fmt_s_sp(%rip), %rdi
    movq    %rax, %rsi
    xorl    %eax, %eax
    call    aic_printf
    movq    -8(%rbp), %rax
    leaq    fmt_s_nl(%rip), %rdi
    movq    %rax, %rsi
    xorl    %eax, %eax
    call    aic_printf
    leaq    aicstr_13(%rip), %rax
    leaq    fmt_s_nl(%rip), %rdi
    movq    %rax, %rsi
    xorl    %eax, %eax
    call    aic_printf
    movq    $-75000, %rax
    pushq   %rax
    movq    $0, %rax
    pushq   %rax
    movq    $100, %rax
    pushq   %rax
    movq    $32, %rax
    pushq   %rax
    movq    $60, %rax
    pushq   %rax
    movq    $18, %rax
    pushq   %rax
    movq    $0, %rax
    pushq   %rax
    movq    $57, %rdi
    movq    $1, %rsi
    call    aic_calloc
    testq   %rax, %rax
    jne     .Lallocok96
    jmp     .Lruntimeerror
.Lallocok96:
    popq    %rbx
    movq    %rbx, 48(%rax)
    popq    %rbx
    movq    %rbx, 40(%rax)
    popq    %rbx
    movq    %rbx, 32(%rax)
    popq    %rbx
    movq    %rbx, 24(%rax)
    popq    %rbx
    movq    %rbx, 16(%rax)
    popq    %rbx
    movq    %rbx, 8(%rax)
    popq    %rbx
    movq    %rbx, 0(%rax)
    movq    %rax, -48(%rbp)
    movq    -8(%rbp), %rax
    movq    %rax, %rdi
    call    aic_strlen
    movq    %rax, -40(%rbp)
    movq    $0, %rax
    movq    %rax, -32(%rbp)
.Lwtop97:
    movq    -32(%rbp), %rax
    pushq   %rax
    movq    -40(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    setl    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lwend98
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    -32(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    movzbq  (%rax,%rbx), %rax
    movq    %rax, -16(%rbp)
    movq    -48(%rbp), %rax
    pushq   %rax
    movq    -16(%rbp), %rax
    pushq   %rax
    popq    %rsi
    popq    %rdi
    call    aicfn_apply_command
    movq    -32(%rbp), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, -32(%rbp)
    jmp     .Lwtop97
.Lwend98:
    movq    -48(%rbp), %rax
    pushq   %rax
    popq    %rdi
    call    aicfn_render_view
    leaq    aicstr_13(%rip), %rax
    leaq    fmt_s_nl(%rip), %rdi
    movq    %rax, %rsi
    xorl    %eax, %eax
    call    aic_printf
    leaq    aicstr_14(%rip), %rax
    leaq    fmt_s_sp(%rip), %rdi
    movq    %rax, %rsi
    xorl    %eax, %eax
    call    aic_printf
    movq    -40(%rbp), %rax
    movq    %rax, %r12
    movq    $24, %rdi
    call    aic_malloc
    testq   %rax, %rax
    jne     .Lallocok99
    jmp     .Lruntimeerror
.Lallocok99:
    movq    %rax, %r13
    movq    %r13, %rdi
    leaq    fmt_d(%rip), %rsi
    movq    %r12, %rdx
    xorl    %eax, %eax
    call    aic_sprintf
    movq    %r13, %rax
    leaq    fmt_s_sp(%rip), %rdi
    movq    %rax, %rsi
    xorl    %eax, %eax
    call    aic_printf
    leaq    aicstr_15(%rip), %rax
    leaq    fmt_s_nl(%rip), %rdi
    movq    %rax, %rsi
    xorl    %eax, %eax
    call    aic_printf
    jmp     .Lendif95
.Lelse94:
    movq    $-75000, %rax
    pushq   %rax
    movq    $0, %rax
    pushq   %rax
    movq    $100, %rax
    pushq   %rax
    movq    $32, %rax
    pushq   %rax
    movq    $60, %rax
    pushq   %rax
    movq    $18, %rax
    pushq   %rax
    movq    $0, %rax
    pushq   %rax
    movq    $57, %rdi
    movq    $1, %rsi
    call    aic_calloc
    testq   %rax, %rax
    jne     .Lallocok100
    jmp     .Lruntimeerror
.Lallocok100:
    popq    %rbx
    movq    %rbx, 48(%rax)
    popq    %rbx
    movq    %rbx, 40(%rax)
    popq    %rbx
    movq    %rbx, 32(%rax)
    popq    %rbx
    movq    %rbx, 24(%rax)
    popq    %rbx
    movq    %rbx, 16(%rax)
    popq    %rbx
    movq    %rbx, 8(%rax)
    popq    %rbx
    movq    %rbx, 0(%rax)
    movq    %rax, -48(%rbp)
    leaq    aicstr_16(%rip), %rax
    leaq    fmt_s_nl(%rip), %rdi
    movq    %rax, %rsi
    xorl    %eax, %eax
    call    aic_printf
    movq    -48(%rbp), %rax
    pushq   %rax
    popq    %rdi
    call    aicfn_render_view
    leaq    aicstr_13(%rip), %rax
    leaq    fmt_s_nl(%rip), %rdi
    movq    %rax, %rsi
    xorl    %eax, %eax
    call    aic_printf
    leaq    aicstr_17(%rip), %rax
    leaq    fmt_s_nl(%rip), %rdi
    movq    %rax, %rsi
    xorl    %eax, %eax
    call    aic_printf
    movq    -48(%rbp), %rax
    pushq   %rax
    movq    $49, %rax
    pushq   %rax
    popq    %rsi
    popq    %rdi
    call    aicfn_apply_command
    movq    -48(%rbp), %rax
    pushq   %rax
    movq    $43, %rax
    pushq   %rax
    popq    %rsi
    popq    %rdi
    call    aicfn_apply_command
    movq    -48(%rbp), %rax
    pushq   %rax
    movq    $43, %rax
    pushq   %rax
    popq    %rsi
    popq    %rdi
    call    aicfn_apply_command
    movq    -48(%rbp), %rax
    pushq   %rax
    popq    %rdi
    call    aicfn_render_view
    leaq    aicstr_13(%rip), %rax
    leaq    fmt_s_nl(%rip), %rdi
    movq    %rax, %rsi
    xorl    %eax, %eax
    call    aic_printf
    leaq    aicstr_18(%rip), %rax
    leaq    fmt_s_nl(%rip), %rdi
    movq    %rax, %rsi
    xorl    %eax, %eax
    call    aic_printf
    movq    -48(%rbp), %rax
    pushq   %rax
    movq    $119, %rax
    pushq   %rax
    popq    %rsi
    popq    %rdi
    call    aicfn_apply_command
    movq    -48(%rbp), %rax
    pushq   %rax
    movq    $119, %rax
    pushq   %rax
    popq    %rsi
    popq    %rdi
    call    aicfn_apply_command
    movq    -48(%rbp), %rax
    pushq   %rax
    movq    $100, %rax
    pushq   %rax
    popq    %rsi
    popq    %rdi
    call    aicfn_apply_command
    movq    -48(%rbp), %rax
    pushq   %rax
    popq    %rdi
    call    aicfn_render_view
    leaq    aicstr_13(%rip), %rax
    leaq    fmt_s_nl(%rip), %rdi
    movq    %rax, %rsi
    xorl    %eax, %eax
    call    aic_printf
    leaq    aicstr_19(%rip), %rax
    leaq    fmt_s_nl(%rip), %rdi
    movq    %rax, %rsi
    xorl    %eax, %eax
    call    aic_printf
    movq    -48(%rbp), %rax
    pushq   %rax
    movq    $51, %rax
    pushq   %rax
    popq    %rsi
    popq    %rdi
    call    aicfn_apply_command
    movq    -48(%rbp), %rax
    pushq   %rax
    movq    $43, %rax
    pushq   %rax
    popq    %rsi
    popq    %rdi
    call    aicfn_apply_command
    movq    -48(%rbp), %rax
    pushq   %rax
    popq    %rdi
    call    aicfn_render_view
    leaq    aicstr_13(%rip), %rax
    leaq    fmt_s_nl(%rip), %rdi
    movq    %rax, %rsi
    xorl    %eax, %eax
    call    aic_printf
    leaq    aicstr_20(%rip), %rax
    leaq    fmt_s_nl(%rip), %rdi
    movq    %rax, %rsi
    xorl    %eax, %eax
    call    aic_printf
    leaq    aicstr_21(%rip), %rax
    leaq    fmt_s_nl(%rip), %rdi
    movq    %rax, %rsi
    xorl    %eax, %eax
    call    aic_printf
    leaq    aicstr_22(%rip), %rax
    leaq    fmt_s_nl(%rip), %rdi
    movq    %rax, %rsi
    xorl    %eax, %eax
    call    aic_printf
    leaq    aicstr_23(%rip), %rax
    leaq    fmt_s_nl(%rip), %rdi
    movq    %rax, %rsi
    xorl    %eax, %eax
    call    aic_printf
    leaq    aicstr_24(%rip), %rax
    leaq    fmt_s_nl(%rip), %rdi
    movq    %rax, %rsi
    xorl    %eax, %eax
    call    aic_printf
    leaq    aicstr_13(%rip), %rax
    leaq    fmt_s_nl(%rip), %rdi
    movq    %rax, %rsi
    xorl    %eax, %eax
    call    aic_printf
    leaq    aicstr_25(%rip), %rax
    leaq    fmt_s_nl(%rip), %rdi
    movq    %rax, %rsi
    xorl    %eax, %eax
    call    aic_printf
    leaq    aicstr_26(%rip), %rax
    leaq    fmt_s_nl(%rip), %rdi
    movq    %rax, %rsi
    xorl    %eax, %eax
    call    aic_printf
    leaq    aicstr_27(%rip), %rax
    leaq    fmt_s_nl(%rip), %rdi
    movq    %rax, %rsi
    xorl    %eax, %eax
    call    aic_printf
.Lendif95:
    movq    $0, %rax
    jmp     .Lret_main
    movq    $0, %rax
.Lret_main:
    leave
    ret
