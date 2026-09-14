    .globl aic_main
aic_main:
    pushq   %rbp
    movq    %rsp, %rbp
    subq    $224, %rsp
    movq    $0, -8(%rbp)
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
    movq    $-99, %rax
    pushq   %rax
    popq    %rdi
    call    aicfn_math_abs
    movq    %rax, -8(%rbp)
    movq    $42, %rax
    pushq   %rax
    movq    $17, %rax
    pushq   %rax
    popq    %rsi
    popq    %rdi
    call    aicfn_math_min
    movq    %rax, -112(%rbp)
    movq    $42, %rax
    pushq   %rax
    movq    $17, %rax
    pushq   %rax
    popq    %rsi
    popq    %rdi
    call    aicfn_math_max
    movq    %rax, -120(%rbp)
    movq    $150, %rax
    pushq   %rax
    movq    $0, %rax
    pushq   %rax
    movq    $100, %rax
    pushq   %rax
    popq    %rdx
    popq    %rsi
    popq    %rdi
    call    aicfn_math_clamp
    movq    %rax, -32(%rbp)
    movq    $2, %rax
    pushq   %rax
    movq    $10, %rax
    pushq   %rax
    popq    %rsi
    popq    %rdi
    call    aicfn_math_pow
    movq    %rax, -144(%rbp)
    movq    $48, %rax
    pushq   %rax
    movq    $18, %rax
    pushq   %rax
    popq    %rsi
    popq    %rdi
    call    aicfn_math_gcd
    movq    %rax, -72(%rbp)
    movq    $12, %rax
    pushq   %rax
    movq    $18, %rax
    pushq   %rax
    popq    %rsi
    popq    %rdi
    call    aicfn_math_lcm
    movq    %rax, -96(%rbp)
    movq    $144, %rax
    pushq   %rax
    popq    %rdi
    call    aicfn_math_sqrt
    movq    %rax, -176(%rbp)
    leaq    aicstr_0(%rip), %rax
    leaq    fmt_s_sp(%rip), %rdi
    movq    %rax, %rsi
    xorl    %eax, %eax
    call    aic_printf
    movq    -8(%rbp), %rax
    leaq    fmt_sp(%rip), %rdi
    movq    %rax, %rsi
    xorl    %eax, %eax
    call    aic_printf
    movq    -112(%rbp), %rax
    leaq    fmt_sp(%rip), %rdi
    movq    %rax, %rsi
    xorl    %eax, %eax
    call    aic_printf
    movq    -120(%rbp), %rax
    leaq    fmt_sp(%rip), %rdi
    movq    %rax, %rsi
    xorl    %eax, %eax
    call    aic_printf
    movq    -32(%rbp), %rax
    leaq    fmt_sp(%rip), %rdi
    movq    %rax, %rsi
    xorl    %eax, %eax
    call    aic_printf
    movq    -144(%rbp), %rax
    leaq    fmt_sp(%rip), %rdi
    movq    %rax, %rsi
    xorl    %eax, %eax
    call    aic_printf
    movq    -72(%rbp), %rax
    leaq    fmt_sp(%rip), %rdi
    movq    %rax, %rsi
    xorl    %eax, %eax
    call    aic_printf
    movq    -96(%rbp), %rax
    leaq    fmt_sp(%rip), %rdi
    movq    %rax, %rsi
    xorl    %eax, %eax
    call    aic_printf
    movq    -176(%rbp), %rax
    leaq    fmt_nl(%rip), %rdi
    movq    %rax, %rsi
    xorl    %eax, %eax
    call    aic_printf
    leaq    aicstr_1(%rip), %rax
    movq    %rax, -160(%rbp)
    leaq    aicstr_2(%rip), %rax
    movq    %rax, -168(%rbp)
    movq    -160(%rbp), %rax
    pushq   %rax
    movq    -168(%rbp), %rax
    pushq   %rax
    popq    %rsi
    popq    %rdi
    call    aicfn_str_cat
    movq    %rax, -16(%rbp)
    movq    -160(%rbp), %rax
    pushq   %rax
    leaq    aicstr_1(%rip), %rax
    pushq   %rax
    popq    %rsi
    popq    %rdi
    call    aicfn_str_eq
    movq    %rax, -48(%rbp)
    movq    -160(%rbp), %rax
    pushq   %rax
    movq    $0, %rax
    pushq   %rax
    popq    %rsi
    popq    %rdi
    call    aicfn_str_char_at
    movq    %rax, -24(%rbp)
    movq    -160(%rbp), %rax
    pushq   %rax
    movq    $108, %rax
    pushq   %rax
    popq    %rsi
    popq    %rdi
    call    aicfn_str_find
    movq    %rax, -64(%rbp)
    movq    -160(%rbp), %rax
    pushq   %rax
    leaq    aicstr_3(%rip), %rax
    pushq   %rax
    popq    %rsi
    popq    %rdi
    call    aicfn_str_starts_with
    movq    %rax, -184(%rbp)
    movq    -168(%rbp), %rax
    pushq   %rax
    leaq    aicstr_4(%rip), %rax
    pushq   %rax
    popq    %rsi
    popq    %rdi
    call    aicfn_str_ends_with
    movq    %rax, -56(%rbp)
    leaq    aicstr_5(%rip), %rax
    leaq    fmt_s_sp(%rip), %rdi
    movq    %rax, %rsi
    xorl    %eax, %eax
    call    aic_printf
    movq    -16(%rbp), %rax
    leaq    fmt_s_sp(%rip), %rdi
    movq    %rax, %rsi
    xorl    %eax, %eax
    call    aic_printf
    movq    -48(%rbp), %rax
    leaq    fmt_sp(%rip), %rdi
    movq    %rax, %rsi
    xorl    %eax, %eax
    call    aic_printf
    movq    -24(%rbp), %rax
    leaq    fmt_sp(%rip), %rdi
    movq    %rax, %rsi
    xorl    %eax, %eax
    call    aic_printf
    movq    -64(%rbp), %rax
    leaq    fmt_sp(%rip), %rdi
    movq    %rax, %rsi
    xorl    %eax, %eax
    call    aic_printf
    movq    -184(%rbp), %rax
    leaq    fmt_sp(%rip), %rdi
    movq    %rax, %rsi
    xorl    %eax, %eax
    call    aic_printf
    movq    -56(%rbp), %rax
    leaq    fmt_nl(%rip), %rdi
    movq    %rax, %rsi
    xorl    %eax, %eax
    call    aic_printf
    movq    $2, %rax
    pushq   %rax
    popq    %rdi
    call    aicfn_vec_new
    movq    %rax, -192(%rbp)
    movq    -192(%rbp), %rax
    pushq   %rax
    movq    $100, %rax
    pushq   %rax
    popq    %rsi
    popq    %rdi
    call    aicfn_vec_push
    movq    -192(%rbp), %rax
    pushq   %rax
    movq    $200, %rax
    pushq   %rax
    popq    %rsi
    popq    %rdi
    call    aicfn_vec_push
    movq    -192(%rbp), %rax
    pushq   %rax
    movq    $300, %rax
    pushq   %rax
    popq    %rsi
    popq    %rdi
    call    aicfn_vec_push
    movq    -192(%rbp), %rax
    pushq   %rax
    movq    $400, %rax
    pushq   %rax
    popq    %rsi
    popq    %rdi
    call    aicfn_vec_push
    movq    -192(%rbp), %rax
    pushq   %rax
    movq    $500, %rax
    pushq   %rax
    popq    %rsi
    popq    %rdi
    call    aicfn_vec_push
    movq    -192(%rbp), %rax
    pushq   %rax
    popq    %rdi
    call    aicfn_vec_len
    movq    %rax, -224(%rbp)
    movq    -192(%rbp), %rax
    pushq   %rax
    popq    %rdi
    call    aicfn_vec_cap
    movq    %rax, -216(%rbp)
    movq    -192(%rbp), %rax
    pushq   %rax
    movq    $2, %rax
    pushq   %rax
    popq    %rsi
    popq    %rdi
    call    aicfn_vec_get
    movq    %rax, -40(%rbp)
    movq    -192(%rbp), %rax
    pushq   %rax
    popq    %rdi
    call    aicfn_vec_pop
    movq    %rax, -152(%rbp)
    movq    -192(%rbp), %rax
    pushq   %rax
    popq    %rdi
    call    aicfn_vec_len
    movq    %rax, -136(%rbp)
    leaq    aicstr_6(%rip), %rax
    leaq    fmt_s_sp(%rip), %rdi
    movq    %rax, %rsi
    xorl    %eax, %eax
    call    aic_printf
    movq    -224(%rbp), %rax
    leaq    fmt_sp(%rip), %rdi
    movq    %rax, %rsi
    xorl    %eax, %eax
    call    aic_printf
    movq    -216(%rbp), %rax
    leaq    fmt_sp(%rip), %rdi
    movq    %rax, %rsi
    xorl    %eax, %eax
    call    aic_printf
    movq    -40(%rbp), %rax
    leaq    fmt_sp(%rip), %rdi
    movq    %rax, %rsi
    xorl    %eax, %eax
    call    aic_printf
    movq    -152(%rbp), %rax
    leaq    fmt_sp(%rip), %rdi
    movq    %rax, %rsi
    xorl    %eax, %eax
    call    aic_printf
    movq    -136(%rbp), %rax
    leaq    fmt_nl(%rip), %rdi
    movq    %rax, %rsi
    xorl    %eax, %eax
    call    aic_printf
    movq    $4, %rax
    pushq   %rax
    popq    %rdi
    call    aicfn_map_new
    movq    %rax, -104(%rbp)
    movq    -104(%rbp), %rax
    pushq   %rax
    leaq    aicstr_7(%rip), %rax
    pushq   %rax
    movq    $10, %rax
    pushq   %rax
    popq    %rdx
    popq    %rsi
    popq    %rdi
    call    aicfn_map_set
    movq    -104(%rbp), %rax
    pushq   %rax
    leaq    aicstr_8(%rip), %rax
    pushq   %rax
    movq    $20, %rax
    pushq   %rax
    popq    %rdx
    popq    %rsi
    popq    %rdi
    call    aicfn_map_set
    movq    -104(%rbp), %rax
    pushq   %rax
    leaq    aicstr_9(%rip), %rax
    pushq   %rax
    movq    $30, %rax
    pushq   %rax
    popq    %rdx
    popq    %rsi
    popq    %rdi
    call    aicfn_map_set
    movq    -104(%rbp), %rax
    pushq   %rax
    leaq    aicstr_10(%rip), %rax
    pushq   %rax
    movq    $40, %rax
    pushq   %rax
    popq    %rdx
    popq    %rsi
    popq    %rdi
    call    aicfn_map_set
    movq    -104(%rbp), %rax
    pushq   %rax
    popq    %rdi
    call    aicfn_map_len
    movq    %rax, -128(%rbp)
    movq    -104(%rbp), %rax
    pushq   %rax
    leaq    aicstr_7(%rip), %rax
    pushq   %rax
    popq    %rsi
    popq    %rdi
    call    aicfn_map_get
    movq    %rax, -200(%rbp)
    movq    -104(%rbp), %rax
    pushq   %rax
    leaq    aicstr_9(%rip), %rax
    pushq   %rax
    popq    %rsi
    popq    %rdi
    call    aicfn_map_get
    movq    %rax, -208(%rbp)
    movq    -104(%rbp), %rax
    pushq   %rax
    leaq    aicstr_8(%rip), %rax
    pushq   %rax
    popq    %rsi
    popq    %rdi
    call    aicfn_map_contains
    movq    %rax, -80(%rbp)
    movq    -104(%rbp), %rax
    pushq   %rax
    leaq    aicstr_11(%rip), %rax
    pushq   %rax
    popq    %rsi
    popq    %rdi
    call    aicfn_map_contains
    movq    %rax, -88(%rbp)
    leaq    aicstr_12(%rip), %rax
    leaq    fmt_s_sp(%rip), %rdi
    movq    %rax, %rsi
    xorl    %eax, %eax
    call    aic_printf
    movq    -128(%rbp), %rax
    leaq    fmt_sp(%rip), %rdi
    movq    %rax, %rsi
    xorl    %eax, %eax
    call    aic_printf
    movq    -200(%rbp), %rax
    leaq    fmt_sp(%rip), %rdi
    movq    %rax, %rsi
    xorl    %eax, %eax
    call    aic_printf
    movq    -208(%rbp), %rax
    leaq    fmt_sp(%rip), %rdi
    movq    %rax, %rsi
    xorl    %eax, %eax
    call    aic_printf
    movq    -80(%rbp), %rax
    leaq    fmt_sp(%rip), %rdi
    movq    %rax, %rsi
    xorl    %eax, %eax
    call    aic_printf
    movq    -88(%rbp), %rax
    leaq    fmt_nl(%rip), %rdi
    movq    %rax, %rsi
    xorl    %eax, %eax
    call    aic_printf
    movq    $0, %rax
.Lmain_ret:
    leave
    ret

aicfn_math_abs:
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
    setl    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse1
    movq    $0, %rax
    pushq   %rax
    movq    -8(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    subq    %rbx, %rax
    jmp     .Lret_math_abs
    jmp     .Lendif2
.Lelse1:
    movq    -8(%rbp), %rax
    jmp     .Lret_math_abs
.Lendif2:
    movq    $0, %rax
.Lret_math_abs:
    leave
    ret

aicfn_math_min:
    pushq   %rbp
    movq    %rsp, %rbp
    subq    $16, %rsp
    movq    %rdi, -8(%rbp)
    movq    %rsi, -16(%rbp)

    movq    -8(%rbp), %rax
    pushq   %rax
    movq    -16(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    setl    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse3
    movq    -8(%rbp), %rax
    jmp     .Lret_math_min
    jmp     .Lendif4
.Lelse3:
    movq    -16(%rbp), %rax
    jmp     .Lret_math_min
.Lendif4:
    movq    $0, %rax
.Lret_math_min:
    leave
    ret

aicfn_math_max:
    pushq   %rbp
    movq    %rsp, %rbp
    subq    $16, %rsp
    movq    %rdi, -8(%rbp)
    movq    %rsi, -16(%rbp)

    movq    -8(%rbp), %rax
    pushq   %rax
    movq    -16(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    setg    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse5
    movq    -8(%rbp), %rax
    jmp     .Lret_math_max
    jmp     .Lendif6
.Lelse5:
    movq    -16(%rbp), %rax
    jmp     .Lret_math_max
.Lendif6:
    movq    $0, %rax
.Lret_math_max:
    leave
    ret

aicfn_math_clamp:
    pushq   %rbp
    movq    %rsp, %rbp
    subq    $32, %rsp
    movq    %rdi, -8(%rbp)
    movq    %rsi, -16(%rbp)
    movq    %rdx, -24(%rbp)

    movq    -8(%rbp), %rax
    pushq   %rax
    movq    -16(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    setl    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse7
    movq    -16(%rbp), %rax
    jmp     .Lret_math_clamp
    jmp     .Lendif8
.Lelse7:
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    -24(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    setg    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse9
    movq    -24(%rbp), %rax
    jmp     .Lret_math_clamp
    jmp     .Lendif10
.Lelse9:
    movq    -8(%rbp), %rax
    jmp     .Lret_math_clamp
.Lendif10:
.Lendif8:
    movq    $0, %rax
.Lret_math_clamp:
    leave
    ret

aicfn_math_pow:
    pushq   %rbp
    movq    %rsp, %rbp
    subq    $48, %rsp
    movq    %rdi, -8(%rbp)
    movq    %rsi, -16(%rbp)
    movq    $0, -24(%rbp)
    movq    $0, -32(%rbp)
    movq    $0, -40(%rbp)
    movq    -16(%rbp), %rax
    pushq   %rax
    movq    $0, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    setl    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse11
    movq    $0, %rax
    jmp     .Lret_math_pow
    jmp     .Lendif12
.Lelse11:
.Lendif12:
    movq    -16(%rbp), %rax
    pushq   %rax
    movq    $0, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse13
    movq    $1, %rax
    jmp     .Lret_math_pow
    jmp     .Lendif14
.Lelse13:
.Lendif14:
    movq    $1, %rax
    movq    %rax, -40(%rbp)
    movq    -8(%rbp), %rax
    movq    %rax, -24(%rbp)
    movq    -16(%rbp), %rax
    movq    %rax, -32(%rbp)
.Lwtop15:
    movq    -32(%rbp), %rax
    pushq   %rax
    movq    $0, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    setg    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lwend16
    movq    -32(%rbp), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    andq    %rbx, %rax
    pushq   %rax
    movq    $0, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    setne    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse17
    movq    -40(%rbp), %rax
    pushq   %rax
    movq    -24(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    imulq   %rbx, %rax
    movq    %rax, -40(%rbp)
    jmp     .Lendif18
.Lelse17:
.Lendif18:
    movq    -24(%rbp), %rax
    pushq   %rax
    movq    -24(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    imulq   %rbx, %rax
    movq    %rax, -24(%rbp)
    movq    -32(%rbp), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    movq    %rbx, %rcx
    sarq    %cl, %rax
    movq    %rax, -32(%rbp)
    jmp     .Lwtop15
.Lwend16:
    movq    -40(%rbp), %rax
    jmp     .Lret_math_pow
    movq    $0, %rax
.Lret_math_pow:
    leave
    ret

aicfn_math_gcd:
    pushq   %rbp
    movq    %rsp, %rbp
    subq    $48, %rsp
    movq    %rdi, -8(%rbp)
    movq    %rsi, -16(%rbp)
    movq    $0, -24(%rbp)
    movq    $0, -32(%rbp)
    movq    $0, -40(%rbp)
    movq    -8(%rbp), %rax
    pushq   %rax
    popq    %rdi
    call    aicfn_math_abs
    movq    %rax, -32(%rbp)
    movq    -16(%rbp), %rax
    pushq   %rax
    popq    %rdi
    call    aicfn_math_abs
    movq    %rax, -40(%rbp)
.Lwtop19:
    movq    -40(%rbp), %rax
    pushq   %rax
    movq    $0, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    setne    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lwend20
    movq    -32(%rbp), %rax
    pushq   %rax
    movq    -40(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    testq   %rbx, %rbx
    jne     .Ldivok21
    jmp     .Ldivzero
.Ldivok21:
    cqto
    idivq   %rbx
    movq    %rdx, %rax
    movq    %rax, -24(%rbp)
    movq    -40(%rbp), %rax
    movq    %rax, -32(%rbp)
    movq    -24(%rbp), %rax
    movq    %rax, -40(%rbp)
    jmp     .Lwtop19
.Lwend20:
    movq    -32(%rbp), %rax
    jmp     .Lret_math_gcd
    movq    $0, %rax
.Lret_math_gcd:
    leave
    ret

aicfn_math_lcm:
    pushq   %rbp
    movq    %rsp, %rbp
    subq    $32, %rsp
    movq    %rdi, -8(%rbp)
    movq    %rsi, -16(%rbp)
    movq    $0, -24(%rbp)
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    $0, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    jne      .Lscshort24
    movq    -16(%rbp), %rax
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
    jmp     .Lscend25
.Lscshort24:
    movq    $1, %rax
.Lscend25:
    testq   %rax, %rax
    je      .Lelse22
    movq    $0, %rax
    jmp     .Lret_math_lcm
    jmp     .Lendif23
.Lelse22:
.Lendif23:
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    -16(%rbp), %rax
    pushq   %rax
    popq    %rsi
    popq    %rdi
    call    aicfn_math_gcd
    movq    %rax, -24(%rbp)
    movq    -8(%rbp), %rax
    pushq   %rax
    popq    %rdi
    call    aicfn_math_abs
    pushq   %rax
    movq    -16(%rbp), %rax
    pushq   %rax
    popq    %rdi
    call    aicfn_math_abs
    movq    %rax, %rbx
    popq    %rax
    imulq   %rbx, %rax
    pushq   %rax
    movq    -24(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    testq   %rbx, %rbx
    jne     .Ldivok26
    jmp     .Ldivzero
.Ldivok26:
    cqto
    idivq   %rbx
    jmp     .Lret_math_lcm
    movq    $0, %rax
.Lret_math_lcm:
    leave
    ret

aicfn_math_sqrt:
    pushq   %rbp
    movq    %rsp, %rbp
    subq    $32, %rsp
    movq    %rdi, -8(%rbp)
    movq    $0, -16(%rbp)
    movq    $0, -24(%rbp)
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    $0, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    setl    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse27
    movq    $-1, %rax
    jmp     .Lret_math_sqrt
    jmp     .Lendif28
.Lelse27:
.Lendif28:
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    $0, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse29
    movq    $0, %rax
    jmp     .Lret_math_sqrt
    jmp     .Lendif30
.Lelse29:
.Lendif30:
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    $4, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    setl    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse31
    movq    $1, %rax
    jmp     .Lret_math_sqrt
    jmp     .Lendif32
.Lelse31:
.Lendif32:
    movq    -8(%rbp), %rax
    movq    %rax, -16(%rbp)
    movq    -16(%rbp), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    pushq   %rax
    movq    $2, %rax
    movq    %rax, %rbx
    popq    %rax
    testq   %rbx, %rbx
    jne     .Ldivok33
    jmp     .Ldivzero
.Ldivok33:
    cqto
    idivq   %rbx
    movq    %rax, -24(%rbp)
.Lwtop34:
    movq    -24(%rbp), %rax
    pushq   %rax
    movq    -16(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    setl    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lwend35
    movq    -24(%rbp), %rax
    movq    %rax, -16(%rbp)
    movq    -16(%rbp), %rax
    pushq   %rax
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    -16(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    testq   %rbx, %rbx
    jne     .Ldivok36
    jmp     .Ldivzero
.Ldivok36:
    cqto
    idivq   %rbx
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    pushq   %rax
    movq    $2, %rax
    movq    %rax, %rbx
    popq    %rax
    testq   %rbx, %rbx
    jne     .Ldivok37
    jmp     .Ldivzero
.Ldivok37:
    cqto
    idivq   %rbx
    movq    %rax, -24(%rbp)
    jmp     .Lwtop34
.Lwend35:
    movq    -16(%rbp), %rax
    jmp     .Lret_math_sqrt
    movq    $0, %rax
.Lret_math_sqrt:
    leave
    ret

aicfn_str_len:
    pushq   %rbp
    movq    %rsp, %rbp
    subq    $16, %rsp
    movq    %rdi, -8(%rbp)

    movq    -8(%rbp), %rax
    movq    %rax, %rdi
    call    aic_strlen
    jmp     .Lret_str_len
    movq    $0, %rax
.Lret_str_len:
    leave
    ret

aicfn_str_char_at:
    pushq   %rbp
    movq    %rsp, %rbp
    subq    $32, %rsp
    movq    %rdi, -8(%rbp)
    movq    %rsi, -16(%rbp)
    movq    $0, -24(%rbp)
    movq    -8(%rbp), %rax
    movq    %rax, %rdi
    call    aic_strlen
    movq    %rax, -24(%rbp)
    movq    -16(%rbp), %rax
    pushq   %rax
    movq    $0, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    setl    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    jne      .Lscshort40
    movq    -16(%rbp), %rax
    pushq   %rax
    movq    -24(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    setge    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    setne   %al
    movzbq  %al, %rax
    jmp     .Lscend41
.Lscshort40:
    movq    $1, %rax
.Lscend41:
    testq   %rax, %rax
    je      .Lelse38
    movq    $0, %rax
    jmp     .Lret_str_char_at
    jmp     .Lendif39
.Lelse38:
.Lendif39:
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    -16(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    movzbq  (%rax,%rbx), %rax
    jmp     .Lret_str_char_at
    movq    $0, %rax
.Lret_str_char_at:
    leave
    ret

aicfn_str_eq:
    pushq   %rbp
    movq    %rsp, %rbp
    subq    $48, %rsp
    movq    %rdi, -8(%rbp)
    movq    %rsi, -16(%rbp)
    movq    $0, -24(%rbp)
    movq    $0, -32(%rbp)
    movq    $0, -40(%rbp)
    movq    $0, -48(%rbp)
    movq    -8(%rbp), %rax
    movq    %rax, %rdi
    call    aic_strlen
    movq    %rax, -40(%rbp)
    movq    -16(%rbp), %rax
    movq    %rax, %rdi
    call    aic_strlen
    movq    %rax, -48(%rbp)
    movq    -40(%rbp), %rax
    pushq   %rax
    movq    -48(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    setne    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse42
    movq    $0, %rax
    jmp     .Lret_str_eq
    jmp     .Lendif43
.Lelse42:
.Lendif43:
    movq    $0, %rax
    movq    %rax, -32(%rbp)
    movq    $0, %rax
    movq    %rax, -24(%rbp)
.Lwtop44:
    movq    -24(%rbp), %rax
    pushq   %rax
    movq    $0, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lscshort46
    movq    -32(%rbp), %rax
    pushq   %rax
    movq    -40(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    setl    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    setne   %al
    movzbq  %al, %rax
    jmp     .Lscend47
.Lscshort46:
    movq    $0, %rax
.Lscend47:
    testq   %rax, %rax
    je      .Lwend45
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    -32(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    movzbq  (%rax,%rbx), %rax
    pushq   %rax
    movq    -16(%rbp), %rax
    pushq   %rax
    movq    -32(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    movzbq  (%rax,%rbx), %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    setne    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse48
    movq    $1, %rax
    movq    %rax, -24(%rbp)
    jmp     .Lendif49
.Lelse48:
.Lendif49:
    movq    -32(%rbp), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, -32(%rbp)
    jmp     .Lwtop44
.Lwend45:
    movq    -24(%rbp), %rax
    pushq   %rax
    movq    $0, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lternelse50
    movq    $1, %rax
    jmp     .Lternend51
.Lternelse50:
    movq    $0, %rax
.Lternend51:
    jmp     .Lret_str_eq
    movq    $0, %rax
.Lret_str_eq:
    leave
    ret

aicfn_str_cmp:
    pushq   %rbp
    movq    %rsp, %rbp
    subq    $80, %rsp
    movq    %rdi, -8(%rbp)
    movq    %rsi, -16(%rbp)
    movq    $0, -24(%rbp)
    movq    $0, -32(%rbp)
    movq    $0, -40(%rbp)
    movq    $0, -48(%rbp)
    movq    $0, -56(%rbp)
    movq    $0, -64(%rbp)
    movq    $0, -72(%rbp)
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
    cmpq    %rbx, %rax
    setl    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lternelse52
    movq    -48(%rbp), %rax
    jmp     .Lternend53
.Lternelse52:
    movq    -56(%rbp), %rax
.Lternend53:
    movq    %rax, -64(%rbp)
    movq    $0, %rax
    movq    %rax, -40(%rbp)
    movq    $0, %rax
    movq    %rax, -72(%rbp)
.Lwtop54:
    movq    -72(%rbp), %rax
    pushq   %rax
    movq    $0, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lscshort56
    movq    -40(%rbp), %rax
    pushq   %rax
    movq    -64(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    setl    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    setne   %al
    movzbq  %al, %rax
    jmp     .Lscend57
.Lscshort56:
    movq    $0, %rax
.Lscend57:
    testq   %rax, %rax
    je      .Lwend55
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    -40(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    movzbq  (%rax,%rbx), %rax
    movq    %rax, -24(%rbp)
    movq    -16(%rbp), %rax
    pushq   %rax
    movq    -40(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    movzbq  (%rax,%rbx), %rax
    movq    %rax, -32(%rbp)
    movq    -24(%rbp), %rax
    pushq   %rax
    movq    -32(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    setne    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse58
    movq    -24(%rbp), %rax
    pushq   %rax
    movq    -32(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    subq    %rbx, %rax
    movq    %rax, -72(%rbp)
    jmp     .Lendif59
.Lelse58:
.Lendif59:
    movq    -40(%rbp), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, -40(%rbp)
    jmp     .Lwtop54
.Lwend55:
    movq    -72(%rbp), %rax
    pushq   %rax
    movq    $0, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    setne    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse60
    movq    -72(%rbp), %rax
    jmp     .Lret_str_cmp
    jmp     .Lendif61
.Lelse60:
.Lendif61:
    movq    -48(%rbp), %rax
    pushq   %rax
    movq    -56(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    subq    %rbx, %rax
    jmp     .Lret_str_cmp
    movq    $0, %rax
.Lret_str_cmp:
    leave
    ret

aicfn_str_cat:
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
    movq    $0, -64(%rbp)
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
    movq    %rax, -64(%rbp)
    movq    -64(%rbp), %rax
    leaq    1(%rax), %rdi
    movq    $1, %rsi
    call    aic_calloc
    testq   %rax, %rax
    jne     .Lallocok62
    jmp     .Lruntimeerror
.Lallocok62:
    movq    %rax, -24(%rbp)
    movq    $0, -32(%rbp)
.Lmaptop63:
    movq    -32(%rbp), %rax
    pushq   %rax
    movq    -48(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    jge     .Lmapend64
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
    incq    -32(%rbp)
    jmp     .Lmaptop63
.Lmapend64:
    movq    $0, -40(%rbp)
.Lmaptop65:
    movq    -40(%rbp), %rax
    pushq   %rax
    movq    -56(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    jge     .Lmapend66
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
    incq    -40(%rbp)
    jmp     .Lmaptop65
.Lmapend66:
    movq    -24(%rbp), %rax
    pushq   %rax
    movq    -64(%rbp), %rax
    pushq   %rax
    movq    $0, %rax
    popq    %rbx
    popq    %rcx
    movb    %al, (%rcx,%rbx)
    movq    -24(%rbp), %rax
    jmp     .Lret_str_cat
    movq    $0, %rax
.Lret_str_cat:
    leave
    ret

aicfn_str_find:
    pushq   %rbp
    movq    %rsp, %rbp
    subq    $48, %rsp
    movq    %rdi, -8(%rbp)
    movq    %rsi, -16(%rbp)
    movq    $0, -24(%rbp)
    movq    $0, -32(%rbp)
    movq    $0, -40(%rbp)
    movq    -8(%rbp), %rax
    movq    %rax, %rdi
    call    aic_strlen
    movq    %rax, -32(%rbp)
    movq    $0, %rax
    movq    %rax, -24(%rbp)
    movq    $-1, %rax
    movq    %rax, -40(%rbp)
.Lwtop67:
    movq    -40(%rbp), %rax
    pushq   %rax
    movq    $-1, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lscshort69
    movq    -24(%rbp), %rax
    pushq   %rax
    movq    -32(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    setl    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    setne   %al
    movzbq  %al, %rax
    jmp     .Lscend70
.Lscshort69:
    movq    $0, %rax
.Lscend70:
    testq   %rax, %rax
    je      .Lwend68
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    -24(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    movzbq  (%rax,%rbx), %rax
    pushq   %rax
    movq    -16(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse71
    movq    -24(%rbp), %rax
    movq    %rax, -40(%rbp)
    jmp     .Lendif72
.Lelse71:
.Lendif72:
    movq    -24(%rbp), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, -24(%rbp)
    jmp     .Lwtop67
.Lwend68:
    movq    -40(%rbp), %rax
    jmp     .Lret_str_find
    movq    $0, %rax
.Lret_str_find:
    leave
    ret

aicfn_str_starts_with:
    pushq   %rbp
    movq    %rsp, %rbp
    subq    $48, %rsp
    movq    %rdi, -8(%rbp)
    movq    %rsi, -16(%rbp)
    movq    $0, -24(%rbp)
    movq    $0, -32(%rbp)
    movq    $0, -40(%rbp)
    movq    $0, -48(%rbp)
    movq    -8(%rbp), %rax
    movq    %rax, %rdi
    call    aic_strlen
    movq    %rax, -48(%rbp)
    movq    -16(%rbp), %rax
    movq    %rax, %rdi
    call    aic_strlen
    movq    %rax, -40(%rbp)
    movq    -48(%rbp), %rax
    pushq   %rax
    movq    -40(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    setl    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse73
    movq    $0, %rax
    jmp     .Lret_str_starts_with
    jmp     .Lendif74
.Lelse73:
.Lendif74:
    movq    $0, %rax
    movq    %rax, -24(%rbp)
    movq    $1, %rax
    movq    %rax, -32(%rbp)
.Lwtop75:
    movq    -32(%rbp), %rax
    pushq   %rax
    movq    $0, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    setne    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lscshort77
    movq    -24(%rbp), %rax
    pushq   %rax
    movq    -40(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    setl    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    setne   %al
    movzbq  %al, %rax
    jmp     .Lscend78
.Lscshort77:
    movq    $0, %rax
.Lscend78:
    testq   %rax, %rax
    je      .Lwend76
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    -24(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    movzbq  (%rax,%rbx), %rax
    pushq   %rax
    movq    -16(%rbp), %rax
    pushq   %rax
    movq    -24(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    movzbq  (%rax,%rbx), %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    setne    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse79
    movq    $0, %rax
    movq    %rax, -32(%rbp)
    jmp     .Lendif80
.Lelse79:
.Lendif80:
    movq    -24(%rbp), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, -24(%rbp)
    jmp     .Lwtop75
.Lwend76:
    movq    -32(%rbp), %rax
    jmp     .Lret_str_starts_with
    movq    $0, %rax
.Lret_str_starts_with:
    leave
    ret

aicfn_str_ends_with:
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
    cmpq    %rbx, %rax
    setl    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse81
    movq    $0, %rax
    jmp     .Lret_str_ends_with
    jmp     .Lendif82
.Lelse81:
.Lendif82:
    movq    -48(%rbp), %rax
    pushq   %rax
    movq    -56(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    subq    %rbx, %rax
    movq    %rax, -32(%rbp)
    movq    $0, %rax
    movq    %rax, -24(%rbp)
    movq    $1, %rax
    movq    %rax, -40(%rbp)
.Lwtop83:
    movq    -40(%rbp), %rax
    pushq   %rax
    movq    $0, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    setne    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lscshort85
    movq    -24(%rbp), %rax
    pushq   %rax
    movq    -56(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    setl    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    setne   %al
    movzbq  %al, %rax
    jmp     .Lscend86
.Lscshort85:
    movq    $0, %rax
.Lscend86:
    testq   %rax, %rax
    je      .Lwend84
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    -32(%rbp), %rax
    pushq   %rax
    movq    -24(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, %rbx
    popq    %rax
    movzbq  (%rax,%rbx), %rax
    pushq   %rax
    movq    -16(%rbp), %rax
    pushq   %rax
    movq    -24(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    movzbq  (%rax,%rbx), %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    setne    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse87
    movq    $0, %rax
    movq    %rax, -40(%rbp)
    jmp     .Lendif88
.Lelse87:
.Lendif88:
    movq    -24(%rbp), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, -24(%rbp)
    jmp     .Lwtop83
.Lwend84:
    movq    -40(%rbp), %rax
    jmp     .Lret_str_ends_with
    movq    $0, %rax
.Lret_str_ends_with:
    leave
    ret

aicfn_str_from_int:
    pushq   %rbp
    movq    %rsp, %rbp
    subq    $16, %rsp
    movq    %rdi, -8(%rbp)

    movq    -8(%rbp), %rax
    movq    %rax, %r12
    movq    $24, %rdi
    call    aic_malloc
    testq   %rax, %rax
    jne     .Lallocok89
    jmp     .Lruntimeerror
.Lallocok89:
    movq    %rax, %r13
    movq    %r13, %rdi
    leaq    fmt_d(%rip), %rsi
    movq    %r12, %rdx
    xorl    %eax, %eax
    call    aic_sprintf
    movq    %r13, %rax
    jmp     .Lret_str_from_int
    movq    $0, %rax
.Lret_str_from_int:
    leave
    ret

aicfn_str_to_int:
    pushq   %rbp
    movq    %rsp, %rbp
    subq    $16, %rsp
    movq    %rdi, -8(%rbp)

    movq    -8(%rbp), %rax
    movq    %rax, %rdi
    xorl    %esi, %esi
    movq    $10, %rdx
    call    aic_strtol
    jmp     .Lret_str_to_int
    movq    $0, %rax
.Lret_str_to_int:
    leave
    ret

aicfn_vec_new:
    pushq   %rbp
    movq    %rsp, %rbp
    subq    $32, %rsp
    movq    %rdi, -8(%rbp)
    movq    $0, -16(%rbp)
    movq    $0, -24(%rbp)
    movq    $0, -32(%rbp)
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    $0, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    setle    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lternelse90
    movq    $4, %rax
    jmp     .Lternend91
.Lternelse90:
    movq    -8(%rbp), %rax
.Lternend91:
    movq    %rax, -24(%rbp)
    movq    -24(%rbp), %rax
    pushq   %rax
    movq    $8, %rax
    movq    %rax, %rbx
    popq    %rax
    imulq   %rbx, %rax
    leaq    1(%rax), %rdi
    movq    $1, %rsi
    call    aic_calloc
    testq   %rax, %rax
    jne     .Lallocok92
    jmp     .Lruntimeerror
.Lallocok92:
    movq    %rax, -16(%rbp)
    movq    -16(%rbp), %rax
    pushq   %rax
    movq    $0, %rax
    pushq   %rax
    movq    -24(%rbp), %rax
    pushq   %rax
    movq    $25, %rdi
    movq    $1, %rsi
    call    aic_calloc
    testq   %rax, %rax
    jne     .Lallocok93
    jmp     .Lruntimeerror
.Lallocok93:
    popq    %rbx
    movq    %rbx, 16(%rax)
    popq    %rbx
    movq    %rbx, 8(%rax)
    popq    %rbx
    movq    %rbx, 0(%rax)
    movq    %rax, -32(%rbp)
    movq    -32(%rbp), %rax
    jmp     .Lret_vec_new
    movq    $0, %rax
.Lret_vec_new:
    leave
    ret

aicfn_vec_len:
    pushq   %rbp
    movq    %rsp, %rbp
    subq    $16, %rsp
    movq    %rdi, -8(%rbp)

    movq    -8(%rbp), %rax
    movq    8(%rax), %rax
    jmp     .Lret_vec_len
    movq    $0, %rax
.Lret_vec_len:
    leave
    ret

aicfn_vec_cap:
    pushq   %rbp
    movq    %rsp, %rbp
    subq    $16, %rsp
    movq    %rdi, -8(%rbp)

    movq    -8(%rbp), %rax
    movq    16(%rax), %rax
    jmp     .Lret_vec_cap
    movq    $0, %rax
.Lret_vec_cap:
    leave
    ret

aicfn_vec_get:
    pushq   %rbp
    movq    %rsp, %rbp
    subq    $32, %rsp
    movq    %rdi, -8(%rbp)
    movq    %rsi, -16(%rbp)
    movq    $0, -24(%rbp)
    movq    $0, -32(%rbp)
    movq    -8(%rbp), %rax
    movq    8(%rax), %rax
    movq    %rax, -32(%rbp)
    movq    -16(%rbp), %rax
    pushq   %rax
    movq    $0, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    setl    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    jne      .Lscshort96
    movq    -16(%rbp), %rax
    pushq   %rax
    movq    -32(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    setge    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    setne   %al
    movzbq  %al, %rax
    jmp     .Lscend97
.Lscshort96:
    movq    $1, %rax
.Lscend97:
    testq   %rax, %rax
    je      .Lelse94
    movq    $0, %rax
    jmp     .Lret_vec_get
    jmp     .Lendif95
.Lelse94:
.Lendif95:
    movq    -8(%rbp), %rax
    movq    0(%rax), %rax
    movq    %rax, -24(%rbp)
    movq    -24(%rbp), %rax
    pushq   %rax
    movq    -16(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    movq    (%rax,%rbx,8), %rax
    jmp     .Lret_vec_get
    movq    $0, %rax
.Lret_vec_get:
    leave
    ret

aicfn_vec_set:
    pushq   %rbp
    movq    %rsp, %rbp
    subq    $48, %rsp
    movq    %rdi, -8(%rbp)
    movq    %rsi, -16(%rbp)
    movq    %rdx, -24(%rbp)
    movq    $0, -32(%rbp)
    movq    $0, -40(%rbp)
    movq    -8(%rbp), %rax
    movq    8(%rax), %rax
    movq    %rax, -40(%rbp)
    movq    -16(%rbp), %rax
    pushq   %rax
    movq    $0, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    setl    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    jne      .Lscshort100
    movq    -16(%rbp), %rax
    pushq   %rax
    movq    -40(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    setge    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    setne   %al
    movzbq  %al, %rax
    jmp     .Lscend101
.Lscshort100:
    movq    $1, %rax
.Lscend101:
    testq   %rax, %rax
    je      .Lelse98
    movq    $0, %rax
    jmp     .Lret_vec_set
    jmp     .Lendif99
.Lelse98:
.Lendif99:
    movq    -8(%rbp), %rax
    movq    0(%rax), %rax
    movq    %rax, -32(%rbp)
    movq    -32(%rbp), %rax
    pushq   %rax
    movq    -16(%rbp), %rax
    pushq   %rax
    movq    -24(%rbp), %rax
    popq    %rbx
    popq    %rcx
    movq    %rax, (%rcx,%rbx,8)
    movq    $1, %rax
    jmp     .Lret_vec_set
    movq    $0, %rax
.Lret_vec_set:
    leave
    ret

aicfn_vec_push:
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
    movq    $0, -64(%rbp)
    movq    -8(%rbp), %rax
    movq    8(%rax), %rax
    movq    %rax, -48(%rbp)
    movq    -8(%rbp), %rax
    movq    16(%rax), %rax
    movq    %rax, -24(%rbp)
    movq    -8(%rbp), %rax
    movq    0(%rax), %rax
    movq    %rax, -32(%rbp)
    movq    -48(%rbp), %rax
    pushq   %rax
    movq    -24(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    setge    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse102
    movq    -24(%rbp), %rax
    pushq   %rax
    movq    $2, %rax
    movq    %rax, %rbx
    popq    %rax
    imulq   %rbx, %rax
    movq    %rax, -56(%rbp)
    movq    -56(%rbp), %rax
    pushq   %rax
    movq    $8, %rax
    movq    %rax, %rbx
    popq    %rax
    imulq   %rbx, %rax
    leaq    1(%rax), %rdi
    movq    $1, %rsi
    call    aic_calloc
    testq   %rax, %rax
    jne     .Lallocok104
    jmp     .Lruntimeerror
.Lallocok104:
    movq    %rax, -64(%rbp)
    movq    $0, -40(%rbp)
.Lmaptop105:
    movq    -40(%rbp), %rax
    pushq   %rax
    movq    -48(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    jge     .Lmapend106
    movq    -64(%rbp), %rax
    pushq   %rax
    movq    -40(%rbp), %rax
    pushq   %rax
    movq    -32(%rbp), %rax
    pushq   %rax
    movq    -40(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    movq    (%rax,%rbx,8), %rax
    popq    %rbx
    popq    %rcx
    movq    %rax, (%rcx,%rbx,8)
    incq    -40(%rbp)
    jmp     .Lmaptop105
.Lmapend106:
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    -64(%rbp), %rax
    popq    %rbx
    movq    %rax, 0(%rbx)
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    -56(%rbp), %rax
    popq    %rbx
    movq    %rax, 16(%rbx)
    movq    -64(%rbp), %rax
    movq    %rax, -32(%rbp)
    jmp     .Lendif103
.Lelse102:
.Lendif103:
    movq    -32(%rbp), %rax
    pushq   %rax
    movq    -48(%rbp), %rax
    pushq   %rax
    movq    -16(%rbp), %rax
    popq    %rbx
    popq    %rcx
    movq    %rax, (%rcx,%rbx,8)
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    -48(%rbp), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    popq    %rbx
    movq    %rax, 8(%rbx)
    movq    -48(%rbp), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    jmp     .Lret_vec_push
    movq    $0, %rax
.Lret_vec_push:
    leave
    ret

aicfn_vec_pop:
    pushq   %rbp
    movq    %rsp, %rbp
    subq    $48, %rsp
    movq    %rdi, -8(%rbp)
    movq    $0, -16(%rbp)
    movq    $0, -24(%rbp)
    movq    $0, -32(%rbp)
    movq    $0, -40(%rbp)
    movq    -8(%rbp), %rax
    movq    8(%rax), %rax
    movq    %rax, -24(%rbp)
    movq    -24(%rbp), %rax
    pushq   %rax
    movq    $0, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    setle    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse107
    movq    $0, %rax
    jmp     .Lret_vec_pop
    jmp     .Lendif108
.Lelse107:
.Lendif108:
    movq    -24(%rbp), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    subq    %rbx, %rax
    movq    %rax, -32(%rbp)
    movq    -8(%rbp), %rax
    movq    0(%rax), %rax
    movq    %rax, -16(%rbp)
    movq    -16(%rbp), %rax
    pushq   %rax
    movq    -32(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    movq    (%rax,%rbx,8), %rax
    movq    %rax, -40(%rbp)
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    -32(%rbp), %rax
    popq    %rbx
    movq    %rax, 8(%rbx)
    movq    -40(%rbp), %rax
    jmp     .Lret_vec_pop
    movq    $0, %rax
.Lret_vec_pop:
    leave
    ret

aicfn_str_len:
    pushq   %rbp
    movq    %rsp, %rbp
    subq    $16, %rsp
    movq    %rdi, -8(%rbp)

    movq    -8(%rbp), %rax
    movq    %rax, %rdi
    call    aic_strlen
    jmp     .Lret_str_len
    movq    $0, %rax
.Lret_str_len:
    leave
    ret

aicfn_str_char_at:
    pushq   %rbp
    movq    %rsp, %rbp
    subq    $32, %rsp
    movq    %rdi, -8(%rbp)
    movq    %rsi, -16(%rbp)
    movq    $0, -24(%rbp)
    movq    -8(%rbp), %rax
    movq    %rax, %rdi
    call    aic_strlen
    movq    %rax, -24(%rbp)
    movq    -16(%rbp), %rax
    pushq   %rax
    movq    $0, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    setl    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    jne      .Lscshort111
    movq    -16(%rbp), %rax
    pushq   %rax
    movq    -24(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    setge    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    setne   %al
    movzbq  %al, %rax
    jmp     .Lscend112
.Lscshort111:
    movq    $1, %rax
.Lscend112:
    testq   %rax, %rax
    je      .Lelse109
    movq    $0, %rax
    jmp     .Lret_str_char_at
    jmp     .Lendif110
.Lelse109:
.Lendif110:
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    -16(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    movzbq  (%rax,%rbx), %rax
    jmp     .Lret_str_char_at
    movq    $0, %rax
.Lret_str_char_at:
    leave
    ret

aicfn_str_eq:
    pushq   %rbp
    movq    %rsp, %rbp
    subq    $48, %rsp
    movq    %rdi, -8(%rbp)
    movq    %rsi, -16(%rbp)
    movq    $0, -24(%rbp)
    movq    $0, -32(%rbp)
    movq    $0, -40(%rbp)
    movq    $0, -48(%rbp)
    movq    -8(%rbp), %rax
    movq    %rax, %rdi
    call    aic_strlen
    movq    %rax, -40(%rbp)
    movq    -16(%rbp), %rax
    movq    %rax, %rdi
    call    aic_strlen
    movq    %rax, -48(%rbp)
    movq    -40(%rbp), %rax
    pushq   %rax
    movq    -48(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    setne    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse113
    movq    $0, %rax
    jmp     .Lret_str_eq
    jmp     .Lendif114
.Lelse113:
.Lendif114:
    movq    $0, %rax
    movq    %rax, -32(%rbp)
    movq    $0, %rax
    movq    %rax, -24(%rbp)
.Lwtop115:
    movq    -24(%rbp), %rax
    pushq   %rax
    movq    $0, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lscshort117
    movq    -32(%rbp), %rax
    pushq   %rax
    movq    -40(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    setl    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    setne   %al
    movzbq  %al, %rax
    jmp     .Lscend118
.Lscshort117:
    movq    $0, %rax
.Lscend118:
    testq   %rax, %rax
    je      .Lwend116
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    -32(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    movzbq  (%rax,%rbx), %rax
    pushq   %rax
    movq    -16(%rbp), %rax
    pushq   %rax
    movq    -32(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    movzbq  (%rax,%rbx), %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    setne    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse119
    movq    $1, %rax
    movq    %rax, -24(%rbp)
    jmp     .Lendif120
.Lelse119:
.Lendif120:
    movq    -32(%rbp), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, -32(%rbp)
    jmp     .Lwtop115
.Lwend116:
    movq    -24(%rbp), %rax
    pushq   %rax
    movq    $0, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lternelse121
    movq    $1, %rax
    jmp     .Lternend122
.Lternelse121:
    movq    $0, %rax
.Lternend122:
    jmp     .Lret_str_eq
    movq    $0, %rax
.Lret_str_eq:
    leave
    ret

aicfn_str_cmp:
    pushq   %rbp
    movq    %rsp, %rbp
    subq    $80, %rsp
    movq    %rdi, -8(%rbp)
    movq    %rsi, -16(%rbp)
    movq    $0, -24(%rbp)
    movq    $0, -32(%rbp)
    movq    $0, -40(%rbp)
    movq    $0, -48(%rbp)
    movq    $0, -56(%rbp)
    movq    $0, -64(%rbp)
    movq    $0, -72(%rbp)
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
    cmpq    %rbx, %rax
    setl    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lternelse123
    movq    -48(%rbp), %rax
    jmp     .Lternend124
.Lternelse123:
    movq    -56(%rbp), %rax
.Lternend124:
    movq    %rax, -64(%rbp)
    movq    $0, %rax
    movq    %rax, -40(%rbp)
    movq    $0, %rax
    movq    %rax, -72(%rbp)
.Lwtop125:
    movq    -72(%rbp), %rax
    pushq   %rax
    movq    $0, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lscshort127
    movq    -40(%rbp), %rax
    pushq   %rax
    movq    -64(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    setl    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    setne   %al
    movzbq  %al, %rax
    jmp     .Lscend128
.Lscshort127:
    movq    $0, %rax
.Lscend128:
    testq   %rax, %rax
    je      .Lwend126
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    -40(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    movzbq  (%rax,%rbx), %rax
    movq    %rax, -24(%rbp)
    movq    -16(%rbp), %rax
    pushq   %rax
    movq    -40(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    movzbq  (%rax,%rbx), %rax
    movq    %rax, -32(%rbp)
    movq    -24(%rbp), %rax
    pushq   %rax
    movq    -32(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    setne    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse129
    movq    -24(%rbp), %rax
    pushq   %rax
    movq    -32(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    subq    %rbx, %rax
    movq    %rax, -72(%rbp)
    jmp     .Lendif130
.Lelse129:
.Lendif130:
    movq    -40(%rbp), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, -40(%rbp)
    jmp     .Lwtop125
.Lwend126:
    movq    -72(%rbp), %rax
    pushq   %rax
    movq    $0, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    setne    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse131
    movq    -72(%rbp), %rax
    jmp     .Lret_str_cmp
    jmp     .Lendif132
.Lelse131:
.Lendif132:
    movq    -48(%rbp), %rax
    pushq   %rax
    movq    -56(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    subq    %rbx, %rax
    jmp     .Lret_str_cmp
    movq    $0, %rax
.Lret_str_cmp:
    leave
    ret

aicfn_str_cat:
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
    movq    $0, -64(%rbp)
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
    movq    %rax, -64(%rbp)
    movq    -64(%rbp), %rax
    leaq    1(%rax), %rdi
    movq    $1, %rsi
    call    aic_calloc
    testq   %rax, %rax
    jne     .Lallocok133
    jmp     .Lruntimeerror
.Lallocok133:
    movq    %rax, -24(%rbp)
    movq    $0, -32(%rbp)
.Lmaptop134:
    movq    -32(%rbp), %rax
    pushq   %rax
    movq    -48(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    jge     .Lmapend135
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
    incq    -32(%rbp)
    jmp     .Lmaptop134
.Lmapend135:
    movq    $0, -40(%rbp)
.Lmaptop136:
    movq    -40(%rbp), %rax
    pushq   %rax
    movq    -56(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    jge     .Lmapend137
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
    incq    -40(%rbp)
    jmp     .Lmaptop136
.Lmapend137:
    movq    -24(%rbp), %rax
    pushq   %rax
    movq    -64(%rbp), %rax
    pushq   %rax
    movq    $0, %rax
    popq    %rbx
    popq    %rcx
    movb    %al, (%rcx,%rbx)
    movq    -24(%rbp), %rax
    jmp     .Lret_str_cat
    movq    $0, %rax
.Lret_str_cat:
    leave
    ret

aicfn_str_find:
    pushq   %rbp
    movq    %rsp, %rbp
    subq    $48, %rsp
    movq    %rdi, -8(%rbp)
    movq    %rsi, -16(%rbp)
    movq    $0, -24(%rbp)
    movq    $0, -32(%rbp)
    movq    $0, -40(%rbp)
    movq    -8(%rbp), %rax
    movq    %rax, %rdi
    call    aic_strlen
    movq    %rax, -32(%rbp)
    movq    $0, %rax
    movq    %rax, -24(%rbp)
    movq    $-1, %rax
    movq    %rax, -40(%rbp)
.Lwtop138:
    movq    -40(%rbp), %rax
    pushq   %rax
    movq    $-1, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lscshort140
    movq    -24(%rbp), %rax
    pushq   %rax
    movq    -32(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    setl    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    setne   %al
    movzbq  %al, %rax
    jmp     .Lscend141
.Lscshort140:
    movq    $0, %rax
.Lscend141:
    testq   %rax, %rax
    je      .Lwend139
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    -24(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    movzbq  (%rax,%rbx), %rax
    pushq   %rax
    movq    -16(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse142
    movq    -24(%rbp), %rax
    movq    %rax, -40(%rbp)
    jmp     .Lendif143
.Lelse142:
.Lendif143:
    movq    -24(%rbp), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, -24(%rbp)
    jmp     .Lwtop138
.Lwend139:
    movq    -40(%rbp), %rax
    jmp     .Lret_str_find
    movq    $0, %rax
.Lret_str_find:
    leave
    ret

aicfn_str_starts_with:
    pushq   %rbp
    movq    %rsp, %rbp
    subq    $48, %rsp
    movq    %rdi, -8(%rbp)
    movq    %rsi, -16(%rbp)
    movq    $0, -24(%rbp)
    movq    $0, -32(%rbp)
    movq    $0, -40(%rbp)
    movq    $0, -48(%rbp)
    movq    -8(%rbp), %rax
    movq    %rax, %rdi
    call    aic_strlen
    movq    %rax, -48(%rbp)
    movq    -16(%rbp), %rax
    movq    %rax, %rdi
    call    aic_strlen
    movq    %rax, -40(%rbp)
    movq    -48(%rbp), %rax
    pushq   %rax
    movq    -40(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    setl    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse144
    movq    $0, %rax
    jmp     .Lret_str_starts_with
    jmp     .Lendif145
.Lelse144:
.Lendif145:
    movq    $0, %rax
    movq    %rax, -24(%rbp)
    movq    $1, %rax
    movq    %rax, -32(%rbp)
.Lwtop146:
    movq    -32(%rbp), %rax
    pushq   %rax
    movq    $0, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    setne    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lscshort148
    movq    -24(%rbp), %rax
    pushq   %rax
    movq    -40(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    setl    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    setne   %al
    movzbq  %al, %rax
    jmp     .Lscend149
.Lscshort148:
    movq    $0, %rax
.Lscend149:
    testq   %rax, %rax
    je      .Lwend147
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    -24(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    movzbq  (%rax,%rbx), %rax
    pushq   %rax
    movq    -16(%rbp), %rax
    pushq   %rax
    movq    -24(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    movzbq  (%rax,%rbx), %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    setne    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse150
    movq    $0, %rax
    movq    %rax, -32(%rbp)
    jmp     .Lendif151
.Lelse150:
.Lendif151:
    movq    -24(%rbp), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, -24(%rbp)
    jmp     .Lwtop146
.Lwend147:
    movq    -32(%rbp), %rax
    jmp     .Lret_str_starts_with
    movq    $0, %rax
.Lret_str_starts_with:
    leave
    ret

aicfn_str_ends_with:
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
    cmpq    %rbx, %rax
    setl    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse152
    movq    $0, %rax
    jmp     .Lret_str_ends_with
    jmp     .Lendif153
.Lelse152:
.Lendif153:
    movq    -48(%rbp), %rax
    pushq   %rax
    movq    -56(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    subq    %rbx, %rax
    movq    %rax, -32(%rbp)
    movq    $0, %rax
    movq    %rax, -24(%rbp)
    movq    $1, %rax
    movq    %rax, -40(%rbp)
.Lwtop154:
    movq    -40(%rbp), %rax
    pushq   %rax
    movq    $0, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    setne    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lscshort156
    movq    -24(%rbp), %rax
    pushq   %rax
    movq    -56(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    setl    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    setne   %al
    movzbq  %al, %rax
    jmp     .Lscend157
.Lscshort156:
    movq    $0, %rax
.Lscend157:
    testq   %rax, %rax
    je      .Lwend155
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    -32(%rbp), %rax
    pushq   %rax
    movq    -24(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, %rbx
    popq    %rax
    movzbq  (%rax,%rbx), %rax
    pushq   %rax
    movq    -16(%rbp), %rax
    pushq   %rax
    movq    -24(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    movzbq  (%rax,%rbx), %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    setne    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse158
    movq    $0, %rax
    movq    %rax, -40(%rbp)
    jmp     .Lendif159
.Lelse158:
.Lendif159:
    movq    -24(%rbp), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, -24(%rbp)
    jmp     .Lwtop154
.Lwend155:
    movq    -40(%rbp), %rax
    jmp     .Lret_str_ends_with
    movq    $0, %rax
.Lret_str_ends_with:
    leave
    ret

aicfn_str_from_int:
    pushq   %rbp
    movq    %rsp, %rbp
    subq    $16, %rsp
    movq    %rdi, -8(%rbp)

    movq    -8(%rbp), %rax
    movq    %rax, %r12
    movq    $24, %rdi
    call    aic_malloc
    testq   %rax, %rax
    jne     .Lallocok160
    jmp     .Lruntimeerror
.Lallocok160:
    movq    %rax, %r13
    movq    %r13, %rdi
    leaq    fmt_d(%rip), %rsi
    movq    %r12, %rdx
    xorl    %eax, %eax
    call    aic_sprintf
    movq    %r13, %rax
    jmp     .Lret_str_from_int
    movq    $0, %rax
.Lret_str_from_int:
    leave
    ret

aicfn_str_to_int:
    pushq   %rbp
    movq    %rsp, %rbp
    subq    $16, %rsp
    movq    %rdi, -8(%rbp)

    movq    -8(%rbp), %rax
    movq    %rax, %rdi
    xorl    %esi, %esi
    movq    $10, %rdx
    call    aic_strtol
    jmp     .Lret_str_to_int
    movq    $0, %rax
.Lret_str_to_int:
    leave
    ret

aicfn_hash_str:
    pushq   %rbp
    movq    %rsp, %rbp
    subq    $48, %rsp
    movq    %rdi, -8(%rbp)
    movq    $0, -16(%rbp)
    movq    $0, -24(%rbp)
    movq    $0, -32(%rbp)
    movq    $0, -40(%rbp)
    movq    -8(%rbp), %rax
    movq    %rax, %rdi
    call    aic_strlen
    movq    %rax, -40(%rbp)
    movq    $5381, %rax
    movq    %rax, -24(%rbp)
    movq    $0, -32(%rbp)
.Lmaptop161:
    movq    -32(%rbp), %rax
    pushq   %rax
    movq    -40(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    jge     .Lmapend162
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    -32(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    movzbq  (%rax,%rbx), %rax
    movq    %rax, -16(%rbp)
    movq    -24(%rbp), %rax
    pushq   %rax
    movq    $33, %rax
    movq    %rax, %rbx
    popq    %rax
    imulq   %rbx, %rax
    pushq   %rax
    movq    -16(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, -24(%rbp)
    incq    -32(%rbp)
    jmp     .Lmaptop161
.Lmapend162:
    movq    -24(%rbp), %rax
    pushq   %rax
    movq    $0, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    setl    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse163
    movq    $0, %rax
    pushq   %rax
    movq    -24(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    subq    %rbx, %rax
    movq    %rax, -24(%rbp)
    jmp     .Lendif164
.Lelse163:
.Lendif164:
    movq    -24(%rbp), %rax
    jmp     .Lret_hash_str
    movq    $0, %rax
.Lret_hash_str:
    leave
    ret

aicfn_map_new:
    pushq   %rbp
    movq    %rsp, %rbp
    subq    $48, %rsp
    movq    %rdi, -8(%rbp)
    movq    $0, -16(%rbp)
    movq    $0, -24(%rbp)
    movq    $0, -32(%rbp)
    movq    $0, -40(%rbp)
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    $0, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    setle    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lternelse165
    movq    $16, %rax
    jmp     .Lternend166
.Lternelse165:
    movq    -8(%rbp), %rax
.Lternend166:
    movq    %rax, -16(%rbp)
    movq    -16(%rbp), %rax
    pushq   %rax
    movq    $8, %rax
    movq    %rax, %rbx
    popq    %rax
    imulq   %rbx, %rax
    leaq    1(%rax), %rdi
    movq    $1, %rsi
    call    aic_calloc
    testq   %rax, %rax
    jne     .Lallocok167
    jmp     .Lruntimeerror
.Lallocok167:
    movq    %rax, -24(%rbp)
    movq    -16(%rbp), %rax
    pushq   %rax
    movq    $8, %rax
    movq    %rax, %rbx
    popq    %rax
    imulq   %rbx, %rax
    leaq    1(%rax), %rdi
    movq    $1, %rsi
    call    aic_calloc
    testq   %rax, %rax
    jne     .Lallocok168
    jmp     .Lruntimeerror
.Lallocok168:
    movq    %rax, -40(%rbp)
    movq    -24(%rbp), %rax
    pushq   %rax
    movq    -40(%rbp), %rax
    pushq   %rax
    movq    -16(%rbp), %rax
    pushq   %rax
    movq    $0, %rax
    pushq   %rax
    movq    $33, %rdi
    movq    $1, %rsi
    call    aic_calloc
    testq   %rax, %rax
    jne     .Lallocok169
    jmp     .Lruntimeerror
.Lallocok169:
    popq    %rbx
    movq    %rbx, 24(%rax)
    popq    %rbx
    movq    %rbx, 16(%rax)
    popq    %rbx
    movq    %rbx, 8(%rax)
    popq    %rbx
    movq    %rbx, 0(%rax)
    movq    %rax, -32(%rbp)
    movq    -32(%rbp), %rax
    jmp     .Lret_map_new
    movq    $0, %rax
.Lret_map_new:
    leave
    ret

aicfn_map_len:
    pushq   %rbp
    movq    %rsp, %rbp
    subq    $16, %rsp
    movq    %rdi, -8(%rbp)

    movq    -8(%rbp), %rax
    movq    24(%rax), %rax
    jmp     .Lret_map_len
    movq    $0, %rax
.Lret_map_len:
    leave
    ret

aicfn_map_get:
    pushq   %rbp
    movq    %rsp, %rbp
    subq    $96, %rsp
    movq    %rdi, -8(%rbp)
    movq    %rsi, -16(%rbp)
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
    movq    -8(%rbp), %rax
    movq    16(%rax), %rax
    movq    %rax, -24(%rbp)
    movq    -24(%rbp), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    subq    %rbx, %rax
    movq    %rax, -72(%rbp)
    movq    -16(%rbp), %rax
    pushq   %rax
    popq    %rdi
    call    aicfn_hash_str
    movq    %rax, -40(%rbp)
    movq    -40(%rbp), %rax
    pushq   %rax
    movq    -72(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    andq    %rbx, %rax
    movq    %rax, -48(%rbp)
    movq    -8(%rbp), %rax
    movq    0(%rax), %rax
    movq    %rax, -64(%rbp)
    movq    -8(%rbp), %rax
    movq    8(%rax), %rax
    movq    %rax, -96(%rbp)
    movq    $0, %rax
    movq    %rax, -88(%rbp)
    movq    $0, %rax
    movq    %rax, -80(%rbp)
    movq    $0, %rax
    movq    %rax, -32(%rbp)
.Lwtop170:
    movq    -32(%rbp), %rax
    pushq   %rax
    movq    $0, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lscshort172
    movq    -88(%rbp), %rax
    pushq   %rax
    movq    -24(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    setl    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    setne   %al
    movzbq  %al, %rax
    jmp     .Lscend173
.Lscshort172:
    movq    $0, %rax
.Lscend173:
    testq   %rax, %rax
    je      .Lwend171
    movq    -64(%rbp), %rax
    pushq   %rax
    movq    -48(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    movq    (%rax,%rbx,8), %rax
    movq    %rax, -56(%rbp)
    movq    -56(%rbp), %rax
    pushq   %rax
    movq    $0, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse174
    movq    $-1, %rax
    movq    %rax, -32(%rbp)
    jmp     .Lendif175
.Lelse174:
    movq    -56(%rbp), %rax
    pushq   %rax
    movq    -16(%rbp), %rax
    pushq   %rax
    popq    %rsi
    popq    %rdi
    call    aicfn_str_eq
    testq   %rax, %rax
    je      .Lelse176
    movq    -96(%rbp), %rax
    pushq   %rax
    movq    -48(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    movq    (%rax,%rbx,8), %rax
    movq    %rax, -80(%rbp)
    movq    $1, %rax
    movq    %rax, -32(%rbp)
    jmp     .Lendif177
.Lelse176:
    movq    -48(%rbp), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    pushq   %rax
    movq    -72(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    andq    %rbx, %rax
    movq    %rax, -48(%rbp)
    movq    -88(%rbp), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, -88(%rbp)
.Lendif177:
.Lendif175:
    jmp     .Lwtop170
.Lwend171:
    movq    -32(%rbp), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse178
    movq    -80(%rbp), %rax
    jmp     .Lret_map_get
    jmp     .Lendif179
.Lelse178:
    movq    $0, %rax
    jmp     .Lret_map_get
.Lendif179:
    movq    $0, %rax
.Lret_map_get:
    leave
    ret

aicfn_map_contains:
    pushq   %rbp
    movq    %rsp, %rbp
    subq    $80, %rsp
    movq    %rdi, -8(%rbp)
    movq    %rsi, -16(%rbp)
    movq    $0, -24(%rbp)
    movq    $0, -32(%rbp)
    movq    $0, -40(%rbp)
    movq    $0, -48(%rbp)
    movq    $0, -56(%rbp)
    movq    $0, -64(%rbp)
    movq    $0, -72(%rbp)
    movq    $0, -80(%rbp)
    movq    -8(%rbp), %rax
    movq    16(%rax), %rax
    movq    %rax, -24(%rbp)
    movq    -24(%rbp), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    subq    %rbx, %rax
    movq    %rax, -72(%rbp)
    movq    -16(%rbp), %rax
    pushq   %rax
    popq    %rdi
    call    aicfn_hash_str
    movq    %rax, -40(%rbp)
    movq    -40(%rbp), %rax
    pushq   %rax
    movq    -72(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    andq    %rbx, %rax
    movq    %rax, -48(%rbp)
    movq    -8(%rbp), %rax
    movq    0(%rax), %rax
    movq    %rax, -64(%rbp)
    movq    $0, %rax
    movq    %rax, -80(%rbp)
    movq    $0, %rax
    movq    %rax, -32(%rbp)
.Lwtop180:
    movq    -32(%rbp), %rax
    pushq   %rax
    movq    $0, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lscshort182
    movq    -80(%rbp), %rax
    pushq   %rax
    movq    -24(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    setl    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    setne   %al
    movzbq  %al, %rax
    jmp     .Lscend183
.Lscshort182:
    movq    $0, %rax
.Lscend183:
    testq   %rax, %rax
    je      .Lwend181
    movq    -64(%rbp), %rax
    pushq   %rax
    movq    -48(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    movq    (%rax,%rbx,8), %rax
    movq    %rax, -56(%rbp)
    movq    -56(%rbp), %rax
    pushq   %rax
    movq    $0, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse184
    movq    $-1, %rax
    movq    %rax, -32(%rbp)
    jmp     .Lendif185
.Lelse184:
    movq    -56(%rbp), %rax
    pushq   %rax
    movq    -16(%rbp), %rax
    pushq   %rax
    popq    %rsi
    popq    %rdi
    call    aicfn_str_eq
    testq   %rax, %rax
    je      .Lelse186
    movq    $1, %rax
    movq    %rax, -32(%rbp)
    jmp     .Lendif187
.Lelse186:
    movq    -48(%rbp), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    pushq   %rax
    movq    -72(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    andq    %rbx, %rax
    movq    %rax, -48(%rbp)
    movq    -80(%rbp), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, -80(%rbp)
.Lendif187:
.Lendif185:
    jmp     .Lwtop180
.Lwend181:
    movq    -32(%rbp), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lternelse188
    movq    $1, %rax
    jmp     .Lternend189
.Lternelse188:
    movq    $0, %rax
.Lternend189:
    jmp     .Lret_map_contains
    movq    $0, %rax
.Lret_map_contains:
    leave
    ret

aicfn_map_set:
    pushq   %rbp
    movq    %rsp, %rbp
    subq    $160, %rsp
    movq    %rdi, -8(%rbp)
    movq    %rsi, -16(%rbp)
    movq    %rdx, -24(%rbp)
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
    movq    -8(%rbp), %rax
    movq    24(%rax), %rax
    movq    %rax, -88(%rbp)
    movq    -8(%rbp), %rax
    movq    16(%rax), %rax
    movq    %rax, -32(%rbp)
    movq    -32(%rbp), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    subq    %rbx, %rax
    movq    %rax, -80(%rbp)
    movq    -8(%rbp), %rax
    movq    0(%rax), %rax
    movq    %rax, -72(%rbp)
    movq    -8(%rbp), %rax
    movq    8(%rax), %rax
    movq    %rax, -160(%rbp)
    movq    -88(%rbp), %rax
    pushq   %rax
    movq    $2, %rax
    movq    %rax, %rbx
    popq    %rax
    imulq   %rbx, %rax
    pushq   %rax
    movq    -32(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    setge    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse190
    movq    -32(%rbp), %rax
    pushq   %rax
    movq    $2, %rax
    movq    %rax, %rbx
    popq    %rax
    imulq   %rbx, %rax
    movq    %rax, -104(%rbp)
    movq    -104(%rbp), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    subq    %rbx, %rax
    movq    %rax, -120(%rbp)
    movq    -104(%rbp), %rax
    pushq   %rax
    movq    $8, %rax
    movq    %rax, %rbx
    popq    %rax
    imulq   %rbx, %rax
    leaq    1(%rax), %rdi
    movq    $1, %rsi
    call    aic_calloc
    testq   %rax, %rax
    jne     .Lallocok192
    jmp     .Lruntimeerror
.Lallocok192:
    movq    %rax, -112(%rbp)
    movq    -104(%rbp), %rax
    pushq   %rax
    movq    $8, %rax
    movq    %rax, %rbx
    popq    %rax
    imulq   %rbx, %rax
    leaq    1(%rax), %rdi
    movq    $1, %rsi
    call    aic_calloc
    testq   %rax, %rax
    jne     .Lallocok193
    jmp     .Lruntimeerror
.Lallocok193:
    movq    %rax, -128(%rbp)
    movq    $0, -48(%rbp)
.Lmaptop194:
    movq    -48(%rbp), %rax
    pushq   %rax
    movq    -32(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    jge     .Lmapend195
    movq    -72(%rbp), %rax
    pushq   %rax
    movq    -48(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    movq    (%rax,%rbx,8), %rax
    movq    %rax, -136(%rbp)
    movq    -136(%rbp), %rax
    pushq   %rax
    movq    $0, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    setne    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse196
    movq    -160(%rbp), %rax
    pushq   %rax
    movq    -48(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    movq    (%rax,%rbx,8), %rax
    movq    %rax, -144(%rbp)
    movq    -136(%rbp), %rax
    pushq   %rax
    popq    %rdi
    call    aicfn_hash_str
    movq    %rax, -40(%rbp)
    movq    -40(%rbp), %rax
    pushq   %rax
    movq    -120(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    andq    %rbx, %rax
    movq    %rax, -96(%rbp)
.Lwtop198:
    movq    -112(%rbp), %rax
    pushq   %rax
    movq    -96(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    movq    (%rax,%rbx,8), %rax
    pushq   %rax
    movq    $0, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    setne    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lwend199
    movq    -96(%rbp), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    pushq   %rax
    movq    -120(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    andq    %rbx, %rax
    movq    %rax, -96(%rbp)
    jmp     .Lwtop198
.Lwend199:
    movq    -112(%rbp), %rax
    pushq   %rax
    movq    -96(%rbp), %rax
    pushq   %rax
    movq    -136(%rbp), %rax
    popq    %rbx
    popq    %rcx
    movq    %rax, (%rcx,%rbx,8)
    movq    -128(%rbp), %rax
    pushq   %rax
    movq    -96(%rbp), %rax
    pushq   %rax
    movq    -144(%rbp), %rax
    popq    %rbx
    popq    %rcx
    movq    %rax, (%rcx,%rbx,8)
    jmp     .Lendif197
.Lelse196:
.Lendif197:
    incq    -48(%rbp)
    jmp     .Lmaptop194
.Lmapend195:
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    -112(%rbp), %rax
    popq    %rbx
    movq    %rax, 0(%rbx)
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    -128(%rbp), %rax
    popq    %rbx
    movq    %rax, 8(%rbx)
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    -104(%rbp), %rax
    popq    %rbx
    movq    %rax, 16(%rbx)
    movq    -104(%rbp), %rax
    movq    %rax, -32(%rbp)
    movq    -120(%rbp), %rax
    movq    %rax, -80(%rbp)
    movq    -112(%rbp), %rax
    movq    %rax, -72(%rbp)
    movq    -128(%rbp), %rax
    movq    %rax, -160(%rbp)
    jmp     .Lendif191
.Lelse190:
.Lendif191:
    movq    -16(%rbp), %rax
    pushq   %rax
    popq    %rdi
    call    aicfn_hash_str
    movq    %rax, -40(%rbp)
    movq    -40(%rbp), %rax
    pushq   %rax
    movq    -80(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    andq    %rbx, %rax
    movq    %rax, -56(%rbp)
    movq    $0, %rax
    movq    %rax, -152(%rbp)
.Lwtop200:
    movq    -152(%rbp), %rax
    pushq   %rax
    movq    $0, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lwend201
    movq    -72(%rbp), %rax
    pushq   %rax
    movq    -56(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    movq    (%rax,%rbx,8), %rax
    movq    %rax, -64(%rbp)
    movq    -64(%rbp), %rax
    pushq   %rax
    movq    $0, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse202
    movq    -72(%rbp), %rax
    pushq   %rax
    movq    -56(%rbp), %rax
    pushq   %rax
    movq    -16(%rbp), %rax
    popq    %rbx
    popq    %rcx
    movq    %rax, (%rcx,%rbx,8)
    movq    -160(%rbp), %rax
    pushq   %rax
    movq    -56(%rbp), %rax
    pushq   %rax
    movq    -24(%rbp), %rax
    popq    %rbx
    popq    %rcx
    movq    %rax, (%rcx,%rbx,8)
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    -88(%rbp), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    popq    %rbx
    movq    %rax, 24(%rbx)
    movq    $1, %rax
    movq    %rax, -152(%rbp)
    jmp     .Lendif203
.Lelse202:
    movq    -64(%rbp), %rax
    pushq   %rax
    movq    -16(%rbp), %rax
    pushq   %rax
    popq    %rsi
    popq    %rdi
    call    aicfn_str_eq
    testq   %rax, %rax
    je      .Lelse204
    movq    -160(%rbp), %rax
    pushq   %rax
    movq    -56(%rbp), %rax
    pushq   %rax
    movq    -24(%rbp), %rax
    popq    %rbx
    popq    %rcx
    movq    %rax, (%rcx,%rbx,8)
    movq    $1, %rax
    movq    %rax, -152(%rbp)
    jmp     .Lendif205
.Lelse204:
    movq    -56(%rbp), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    pushq   %rax
    movq    -80(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    andq    %rbx, %rax
    movq    %rax, -56(%rbp)
.Lendif205:
.Lendif203:
    jmp     .Lwtop200
.Lwend201:
    movq    $1, %rax
    jmp     .Lret_map_set
    movq    $0, %rax
.Lret_map_set:
    leave
    ret
