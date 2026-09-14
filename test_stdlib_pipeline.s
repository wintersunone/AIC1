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
    .string "Math:"
aicstr_1:
    .string "Hello, "
aicstr_2:
    .string "AIC!"
aicstr_3:
    .string "He"
aicstr_4:
    .string "IC!"
aicstr_5:
    .string "String:"
aicstr_6:
    .string "Vector:"
aicstr_7:
    .string "apple"
aicstr_8:
    .string "banana"
aicstr_9:
    .string "cherry"
aicstr_10:
    .string "date"
aicstr_11:
    .string "grape"
aicstr_12:
    .string "Map:"
aicstr_13:
    .string ""
divzero_msg:
    .string "[ERR :code 502 :kind RUNTIME :msg DIVISION_BY_ZERO]\n"
divzero_msg_end:
    .equ divzero_len, divzero_msg_end - divzero_msg - 1

runtimeerr_msg:
    .string "[ERR :code 501 :kind RUNTIME :msg IO_OR_ALLOC_FAILED]\n"
runtimeerr_msg_end:
    .equ runtimeerr_len, runtimeerr_msg_end - runtimeerr_msg - 1

    .text
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
    movq    -24(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    testq   %rbx, %rbx
    jne     .Ldivok26
    jmp     .Ldivzero
.Ldivok26:
    cqto
    idivq   %rbx
    pushq   %rax
    movq    -16(%rbp), %rax
    pushq   %rax
    popq    %rdi
    call    aicfn_math_abs
    movq    %rax, %rbx
    popq    %rax
    imulq   %rbx, %rax
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

aicfn_str_quote:
    pushq   %rbp
    movq    %rsp, %rbp
    subq    $16, %rsp

    movq    $0, -8(%rbp)
    movq    $1, %rax
    leaq    1(%rax), %rdi
    movq    $1, %rsi
    call    aic_calloc
    testq   %rax, %rax
    jne     .Lallocok90
    jmp     .Lruntimeerror
.Lallocok90:
    movq    %rax, -8(%rbp)
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    $0, %rax
    pushq   %rax
    movq    $34, %rax
    popq    %rbx
    popq    %rcx
    movb    %al, (%rcx,%rbx)
    movq    -8(%rbp), %rax
    jmp     .Lret_str_quote
    movq    $0, %rax
.Lret_str_quote:
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
    je      .Lternelse91
    movq    $4, %rax
    jmp     .Lternend92
.Lternelse91:
    movq    -8(%rbp), %rax
.Lternend92:
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
    jne     .Lallocok93
    jmp     .Lruntimeerror
.Lallocok93:
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
    jne     .Lallocok94
    jmp     .Lruntimeerror
.Lallocok94:
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
    jne      .Lscshort97
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
    jmp     .Lscend98
.Lscshort97:
    movq    $1, %rax
.Lscend98:
    testq   %rax, %rax
    je      .Lelse95
    movq    $0, %rax
    jmp     .Lret_vec_get
    jmp     .Lendif96
.Lelse95:
.Lendif96:
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
    jne      .Lscshort101
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
    jmp     .Lscend102
.Lscshort101:
    movq    $1, %rax
.Lscend102:
    testq   %rax, %rax
    je      .Lelse99
    movq    $0, %rax
    jmp     .Lret_vec_set
    jmp     .Lendif100
.Lelse99:
.Lendif100:
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
    je      .Lelse103
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
    jne     .Lallocok105
    jmp     .Lruntimeerror
.Lallocok105:
    movq    %rax, -64(%rbp)
    movq    $0, -40(%rbp)
.Lmaptop106:
    movq    -40(%rbp), %rax
    pushq   %rax
    movq    -48(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    jge     .Lmapend107
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
    jmp     .Lmaptop106
.Lmapend107:
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
    jmp     .Lendif104
.Lelse103:
.Lendif104:
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
    je      .Lelse108
    movq    $0, %rax
    jmp     .Lret_vec_pop
    jmp     .Lendif109
.Lelse108:
.Lendif109:
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

aicfn_vec_get_ptr:
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
    jne      .Lscshort112
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
    jmp     .Lscend113
.Lscshort112:
    movq    $1, %rax
.Lscend113:
    testq   %rax, %rax
    je      .Lelse110
    leaq    aicstr_13(%rip), %rax
    jmp     .Lret_vec_get_ptr
    jmp     .Lendif111
.Lelse110:
.Lendif111:
    movq    -8(%rbp), %rax
    movq    0(%rax), %rax
    movq    %rax, -24(%rbp)
    movq    -24(%rbp), %rax
    pushq   %rax
    movq    -16(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    movq    (%rax,%rbx,8), %rax
    jmp     .Lret_vec_get_ptr
    movq    $0, %rax
.Lret_vec_get_ptr:
    leave
    ret

aicfn_vec_set_ptr:
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
    jne      .Lscshort116
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
    jmp     .Lscend117
.Lscshort116:
    movq    $1, %rax
.Lscend117:
    testq   %rax, %rax
    je      .Lelse114
    movq    $0, %rax
    jmp     .Lret_vec_set_ptr
    jmp     .Lendif115
.Lelse114:
.Lendif115:
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
    jmp     .Lret_vec_set_ptr
    movq    $0, %rax
.Lret_vec_set_ptr:
    leave
    ret

aicfn_vec_push_ptr:
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
    je      .Lelse118
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
    jne     .Lallocok120
    jmp     .Lruntimeerror
.Lallocok120:
    movq    %rax, -64(%rbp)
    movq    $0, -40(%rbp)
.Lmaptop121:
    movq    -40(%rbp), %rax
    pushq   %rax
    movq    -48(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    jge     .Lmapend122
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
    jmp     .Lmaptop121
.Lmapend122:
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
    jmp     .Lendif119
.Lelse118:
.Lendif119:
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
    jmp     .Lret_vec_push_ptr
    movq    $0, %rax
.Lret_vec_push_ptr:
    leave
    ret

aicfn_vec_pop_ptr:
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
    je      .Lelse123
    leaq    aicstr_13(%rip), %rax
    jmp     .Lret_vec_pop_ptr
    jmp     .Lendif124
.Lelse123:
.Lendif124:
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
    jmp     .Lret_vec_pop_ptr
    movq    $0, %rax
.Lret_vec_pop_ptr:
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
    jne      .Lscshort127
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
    jmp     .Lscend128
.Lscshort127:
    movq    $1, %rax
.Lscend128:
    testq   %rax, %rax
    je      .Lelse125
    movq    $0, %rax
    jmp     .Lret_str_char_at
    jmp     .Lendif126
.Lelse125:
.Lendif126:
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
    je      .Lelse129
    movq    $0, %rax
    jmp     .Lret_str_eq
    jmp     .Lendif130
.Lelse129:
.Lendif130:
    movq    $0, %rax
    movq    %rax, -32(%rbp)
    movq    $0, %rax
    movq    %rax, -24(%rbp)
.Lwtop131:
    movq    -24(%rbp), %rax
    pushq   %rax
    movq    $0, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lscshort133
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
    jmp     .Lscend134
.Lscshort133:
    movq    $0, %rax
.Lscend134:
    testq   %rax, %rax
    je      .Lwend132
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
    je      .Lelse135
    movq    $1, %rax
    movq    %rax, -24(%rbp)
    jmp     .Lendif136
.Lelse135:
.Lendif136:
    movq    -32(%rbp), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, -32(%rbp)
    jmp     .Lwtop131
.Lwend132:
    movq    -24(%rbp), %rax
    pushq   %rax
    movq    $0, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lternelse137
    movq    $1, %rax
    jmp     .Lternend138
.Lternelse137:
    movq    $0, %rax
.Lternend138:
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
    je      .Lternelse139
    movq    -48(%rbp), %rax
    jmp     .Lternend140
.Lternelse139:
    movq    -56(%rbp), %rax
.Lternend140:
    movq    %rax, -64(%rbp)
    movq    $0, %rax
    movq    %rax, -40(%rbp)
    movq    $0, %rax
    movq    %rax, -72(%rbp)
.Lwtop141:
    movq    -72(%rbp), %rax
    pushq   %rax
    movq    $0, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lscshort143
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
    jmp     .Lscend144
.Lscshort143:
    movq    $0, %rax
.Lscend144:
    testq   %rax, %rax
    je      .Lwend142
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
    je      .Lelse145
    movq    -24(%rbp), %rax
    pushq   %rax
    movq    -32(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    subq    %rbx, %rax
    movq    %rax, -72(%rbp)
    jmp     .Lendif146
.Lelse145:
.Lendif146:
    movq    -40(%rbp), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, -40(%rbp)
    jmp     .Lwtop141
.Lwend142:
    movq    -72(%rbp), %rax
    pushq   %rax
    movq    $0, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    setne    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse147
    movq    -72(%rbp), %rax
    jmp     .Lret_str_cmp
    jmp     .Lendif148
.Lelse147:
.Lendif148:
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
    jne     .Lallocok149
    jmp     .Lruntimeerror
.Lallocok149:
    movq    %rax, -24(%rbp)
    movq    $0, -32(%rbp)
.Lmaptop150:
    movq    -32(%rbp), %rax
    pushq   %rax
    movq    -48(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    jge     .Lmapend151
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
    jmp     .Lmaptop150
.Lmapend151:
    movq    $0, -40(%rbp)
.Lmaptop152:
    movq    -40(%rbp), %rax
    pushq   %rax
    movq    -56(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    jge     .Lmapend153
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
    jmp     .Lmaptop152
.Lmapend153:
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
.Lwtop154:
    movq    -40(%rbp), %rax
    pushq   %rax
    movq    $-1, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lscshort156
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
    jmp     .Lscend157
.Lscshort156:
    movq    $0, %rax
.Lscend157:
    testq   %rax, %rax
    je      .Lwend155
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
    je      .Lelse158
    movq    -24(%rbp), %rax
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
    je      .Lelse160
    movq    $0, %rax
    jmp     .Lret_str_starts_with
    jmp     .Lendif161
.Lelse160:
.Lendif161:
    movq    $0, %rax
    movq    %rax, -24(%rbp)
    movq    $1, %rax
    movq    %rax, -32(%rbp)
.Lwtop162:
    movq    -32(%rbp), %rax
    pushq   %rax
    movq    $0, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    setne    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lscshort164
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
    jmp     .Lscend165
.Lscshort164:
    movq    $0, %rax
.Lscend165:
    testq   %rax, %rax
    je      .Lwend163
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
    je      .Lelse166
    movq    $0, %rax
    movq    %rax, -32(%rbp)
    jmp     .Lendif167
.Lelse166:
.Lendif167:
    movq    -24(%rbp), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, -24(%rbp)
    jmp     .Lwtop162
.Lwend163:
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
    je      .Lelse168
    movq    $0, %rax
    jmp     .Lret_str_ends_with
    jmp     .Lendif169
.Lelse168:
.Lendif169:
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
.Lwtop170:
    movq    -40(%rbp), %rax
    pushq   %rax
    movq    $0, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    setne    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lscshort172
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
    jmp     .Lscend173
.Lscshort172:
    movq    $0, %rax
.Lscend173:
    testq   %rax, %rax
    je      .Lwend171
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
    je      .Lelse174
    movq    $0, %rax
    movq    %rax, -40(%rbp)
    jmp     .Lendif175
.Lelse174:
.Lendif175:
    movq    -24(%rbp), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, -24(%rbp)
    jmp     .Lwtop170
.Lwend171:
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
    jne     .Lallocok176
    jmp     .Lruntimeerror
.Lallocok176:
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

aicfn_str_quote:
    pushq   %rbp
    movq    %rsp, %rbp
    subq    $16, %rsp

    movq    $0, -8(%rbp)
    movq    $1, %rax
    leaq    1(%rax), %rdi
    movq    $1, %rsi
    call    aic_calloc
    testq   %rax, %rax
    jne     .Lallocok177
    jmp     .Lruntimeerror
.Lallocok177:
    movq    %rax, -8(%rbp)
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    $0, %rax
    pushq   %rax
    movq    $34, %rax
    popq    %rbx
    popq    %rcx
    movb    %al, (%rcx,%rbx)
    movq    -8(%rbp), %rax
    jmp     .Lret_str_quote
    movq    $0, %rax
.Lret_str_quote:
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
    je      .Lternelse178
    movq    $4, %rax
    jmp     .Lternend179
.Lternelse178:
    movq    -8(%rbp), %rax
.Lternend179:
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
    jne     .Lallocok180
    jmp     .Lruntimeerror
.Lallocok180:
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
    jne     .Lallocok181
    jmp     .Lruntimeerror
.Lallocok181:
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
    jne      .Lscshort184
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
    jmp     .Lscend185
.Lscshort184:
    movq    $1, %rax
.Lscend185:
    testq   %rax, %rax
    je      .Lelse182
    movq    $0, %rax
    jmp     .Lret_vec_get
    jmp     .Lendif183
.Lelse182:
.Lendif183:
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
    jne      .Lscshort188
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
    jmp     .Lscend189
.Lscshort188:
    movq    $1, %rax
.Lscend189:
    testq   %rax, %rax
    je      .Lelse186
    movq    $0, %rax
    jmp     .Lret_vec_set
    jmp     .Lendif187
.Lelse186:
.Lendif187:
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
    je      .Lelse190
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
    jne     .Lallocok192
    jmp     .Lruntimeerror
.Lallocok192:
    movq    %rax, -64(%rbp)
    movq    $0, -40(%rbp)
.Lmaptop193:
    movq    -40(%rbp), %rax
    pushq   %rax
    movq    -48(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    jge     .Lmapend194
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
    jmp     .Lmaptop193
.Lmapend194:
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
    jmp     .Lendif191
.Lelse190:
.Lendif191:
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
    je      .Lelse195
    movq    $0, %rax
    jmp     .Lret_vec_pop
    jmp     .Lendif196
.Lelse195:
.Lendif196:
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

aicfn_vec_get_ptr:
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
    jne      .Lscshort199
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
    jmp     .Lscend200
.Lscshort199:
    movq    $1, %rax
.Lscend200:
    testq   %rax, %rax
    je      .Lelse197
    leaq    aicstr_13(%rip), %rax
    jmp     .Lret_vec_get_ptr
    jmp     .Lendif198
.Lelse197:
.Lendif198:
    movq    -8(%rbp), %rax
    movq    0(%rax), %rax
    movq    %rax, -24(%rbp)
    movq    -24(%rbp), %rax
    pushq   %rax
    movq    -16(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    movq    (%rax,%rbx,8), %rax
    jmp     .Lret_vec_get_ptr
    movq    $0, %rax
.Lret_vec_get_ptr:
    leave
    ret

aicfn_vec_set_ptr:
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
    jne      .Lscshort203
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
    jmp     .Lscend204
.Lscshort203:
    movq    $1, %rax
.Lscend204:
    testq   %rax, %rax
    je      .Lelse201
    movq    $0, %rax
    jmp     .Lret_vec_set_ptr
    jmp     .Lendif202
.Lelse201:
.Lendif202:
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
    jmp     .Lret_vec_set_ptr
    movq    $0, %rax
.Lret_vec_set_ptr:
    leave
    ret

aicfn_vec_push_ptr:
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
    je      .Lelse205
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
    jne     .Lallocok207
    jmp     .Lruntimeerror
.Lallocok207:
    movq    %rax, -64(%rbp)
    movq    $0, -40(%rbp)
.Lmaptop208:
    movq    -40(%rbp), %rax
    pushq   %rax
    movq    -48(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    jge     .Lmapend209
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
    jmp     .Lmaptop208
.Lmapend209:
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
    jmp     .Lendif206
.Lelse205:
.Lendif206:
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
    jmp     .Lret_vec_push_ptr
    movq    $0, %rax
.Lret_vec_push_ptr:
    leave
    ret

aicfn_vec_pop_ptr:
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
    je      .Lelse210
    leaq    aicstr_13(%rip), %rax
    jmp     .Lret_vec_pop_ptr
    jmp     .Lendif211
.Lelse210:
.Lendif211:
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
    jmp     .Lret_vec_pop_ptr
    movq    $0, %rax
.Lret_vec_pop_ptr:
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
.Lmaptop212:
    movq    -32(%rbp), %rax
    pushq   %rax
    movq    -40(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    jge     .Lmapend213
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
    jmp     .Lmaptop212
.Lmapend213:
    movq    -24(%rbp), %rax
    pushq   %rax
    movq    $0, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    setl    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse214
    movq    $0, %rax
    pushq   %rax
    movq    -24(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    subq    %rbx, %rax
    movq    %rax, -24(%rbp)
    jmp     .Lendif215
.Lelse214:
.Lendif215:
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
    movq    $0, -48(%rbp)
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    $0, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    setle    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lternelse216
    movq    $16, %rax
    jmp     .Lternend217
.Lternelse216:
    movq    -8(%rbp), %rax
.Lternend217:
    movq    %rax, -16(%rbp)
    movq    $16, %rax
    movq    %rax, -40(%rbp)
.Lwtop218:
    movq    -40(%rbp), %rax
    pushq   %rax
    movq    -16(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    setl    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lwend219
    movq    -40(%rbp), %rax
    pushq   %rax
    movq    $2, %rax
    movq    %rax, %rbx
    popq    %rax
    imulq   %rbx, %rax
    movq    %rax, -40(%rbp)
    jmp     .Lwtop218
.Lwend219:
    movq    -40(%rbp), %rax
    pushq   %rax
    movq    $8, %rax
    movq    %rax, %rbx
    popq    %rax
    imulq   %rbx, %rax
    leaq    1(%rax), %rdi
    movq    $1, %rsi
    call    aic_calloc
    testq   %rax, %rax
    jne     .Lallocok220
    jmp     .Lruntimeerror
.Lallocok220:
    movq    %rax, -24(%rbp)
    movq    -40(%rbp), %rax
    pushq   %rax
    movq    $8, %rax
    movq    %rax, %rbx
    popq    %rax
    imulq   %rbx, %rax
    leaq    1(%rax), %rdi
    movq    $1, %rsi
    call    aic_calloc
    testq   %rax, %rax
    jne     .Lallocok221
    jmp     .Lruntimeerror
.Lallocok221:
    movq    %rax, -48(%rbp)
    movq    -24(%rbp), %rax
    pushq   %rax
    movq    -48(%rbp), %rax
    pushq   %rax
    movq    -40(%rbp), %rax
    pushq   %rax
    movq    $0, %rax
    pushq   %rax
    movq    $33, %rdi
    movq    $1, %rsi
    call    aic_calloc
    testq   %rax, %rax
    jne     .Lallocok222
    jmp     .Lruntimeerror
.Lallocok222:
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
.Lwtop223:
    movq    -32(%rbp), %rax
    pushq   %rax
    movq    $0, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lscshort225
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
    jmp     .Lscend226
.Lscshort225:
    movq    $0, %rax
.Lscend226:
    testq   %rax, %rax
    je      .Lwend224
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
    je      .Lelse227
    movq    $-1, %rax
    movq    %rax, -32(%rbp)
    jmp     .Lendif228
.Lelse227:
    movq    -56(%rbp), %rax
    pushq   %rax
    movq    -16(%rbp), %rax
    pushq   %rax
    popq    %rsi
    popq    %rdi
    call    aicfn_str_eq
    testq   %rax, %rax
    je      .Lelse229
    movq    -96(%rbp), %rax
    pushq   %rax
    movq    -48(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    movq    (%rax,%rbx,8), %rax
    movq    %rax, -80(%rbp)
    movq    $1, %rax
    movq    %rax, -32(%rbp)
    jmp     .Lendif230
.Lelse229:
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
.Lendif230:
.Lendif228:
    jmp     .Lwtop223
.Lwend224:
    movq    -32(%rbp), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse231
    movq    -80(%rbp), %rax
    jmp     .Lret_map_get
    jmp     .Lendif232
.Lelse231:
    movq    $0, %rax
    jmp     .Lret_map_get
.Lendif232:
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
.Lwtop233:
    movq    -32(%rbp), %rax
    pushq   %rax
    movq    $0, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lscshort235
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
    jmp     .Lscend236
.Lscshort235:
    movq    $0, %rax
.Lscend236:
    testq   %rax, %rax
    je      .Lwend234
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
    je      .Lelse237
    movq    $-1, %rax
    movq    %rax, -32(%rbp)
    jmp     .Lendif238
.Lelse237:
    movq    -56(%rbp), %rax
    pushq   %rax
    movq    -16(%rbp), %rax
    pushq   %rax
    popq    %rsi
    popq    %rdi
    call    aicfn_str_eq
    testq   %rax, %rax
    je      .Lelse239
    movq    $1, %rax
    movq    %rax, -32(%rbp)
    jmp     .Lendif240
.Lelse239:
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
.Lendif240:
.Lendif238:
    jmp     .Lwtop233
.Lwend234:
    movq    -32(%rbp), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lternelse241
    movq    $1, %rax
    jmp     .Lternend242
.Lternelse241:
    movq    $0, %rax
.Lternend242:
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
    je      .Lelse243
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
    jne     .Lallocok245
    jmp     .Lruntimeerror
.Lallocok245:
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
    jne     .Lallocok246
    jmp     .Lruntimeerror
.Lallocok246:
    movq    %rax, -128(%rbp)
    movq    $0, -48(%rbp)
.Lmaptop247:
    movq    -48(%rbp), %rax
    pushq   %rax
    movq    -32(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    jge     .Lmapend248
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
    je      .Lelse249
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
.Lwtop251:
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
    je      .Lwend252
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
    jmp     .Lwtop251
.Lwend252:
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
    jmp     .Lendif250
.Lelse249:
.Lendif250:
    incq    -48(%rbp)
    jmp     .Lmaptop247
.Lmapend248:
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
    jmp     .Lendif244
.Lelse243:
.Lendif244:
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
.Lwtop253:
    movq    -152(%rbp), %rax
    pushq   %rax
    movq    $0, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lwend254
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
    je      .Lelse255
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
    jmp     .Lendif256
.Lelse255:
    movq    -64(%rbp), %rax
    pushq   %rax
    movq    -16(%rbp), %rax
    pushq   %rax
    popq    %rsi
    popq    %rdi
    call    aicfn_str_eq
    testq   %rax, %rax
    je      .Lelse257
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
    jmp     .Lendif258
.Lelse257:
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
.Lendif258:
.Lendif256:
    jmp     .Lwtop253
.Lwend254:
    movq    $1, %rax
    jmp     .Lret_map_set
    movq    $0, %rax
.Lret_map_set:
    leave
    ret

aicfn_map_keys:
    pushq   %rbp
    movq    %rsp, %rbp
    subq    $64, %rsp
    movq    %rdi, -8(%rbp)
    movq    $0, -16(%rbp)
    movq    $0, -24(%rbp)
    movq    $0, -32(%rbp)
    movq    $0, -40(%rbp)
    movq    $0, -48(%rbp)
    movq    $0, -56(%rbp)
    movq    -8(%rbp), %rax
    movq    24(%rax), %rax
    movq    %rax, -48(%rbp)
    movq    -8(%rbp), %rax
    movq    16(%rax), %rax
    movq    %rax, -16(%rbp)
    movq    -8(%rbp), %rax
    movq    0(%rax), %rax
    movq    %rax, -40(%rbp)
    movq    -48(%rbp), %rax
    pushq   %rax
    popq    %rdi
    call    aicfn_vec_new
    movq    %rax, -56(%rbp)
    movq    $0, -24(%rbp)
.Lmaptop259:
    movq    -24(%rbp), %rax
    pushq   %rax
    movq    -16(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    jge     .Lmapend260
    movq    -40(%rbp), %rax
    pushq   %rax
    movq    -24(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    movq    (%rax,%rbx,8), %rax
    movq    %rax, -32(%rbp)
    movq    -32(%rbp), %rax
    pushq   %rax
    movq    $0, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    setne    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse261
    movq    -56(%rbp), %rax
    pushq   %rax
    movq    -32(%rbp), %rax
    pushq   %rax
    popq    %rsi
    popq    %rdi
    call    aicfn_vec_push
    jmp     .Lendif262
.Lelse261:
.Lendif262:
    incq    -24(%rbp)
    jmp     .Lmaptop259
.Lmapend260:
    movq    -56(%rbp), %rax
    jmp     .Lret_map_keys
    movq    $0, %rax
.Lret_map_keys:
    leave
    ret

aicfn_map_values:
    pushq   %rbp
    movq    %rsp, %rbp
    subq    $64, %rsp
    movq    %rdi, -8(%rbp)
    movq    $0, -16(%rbp)
    movq    $0, -24(%rbp)
    movq    $0, -32(%rbp)
    movq    $0, -40(%rbp)
    movq    $0, -48(%rbp)
    movq    $0, -56(%rbp)
    movq    $0, -64(%rbp)
    movq    -8(%rbp), %rax
    movq    24(%rax), %rax
    movq    %rax, -48(%rbp)
    movq    -8(%rbp), %rax
    movq    16(%rax), %rax
    movq    %rax, -16(%rbp)
    movq    -8(%rbp), %rax
    movq    0(%rax), %rax
    movq    %rax, -40(%rbp)
    movq    -8(%rbp), %rax
    movq    8(%rax), %rax
    movq    %rax, -64(%rbp)
    movq    -48(%rbp), %rax
    pushq   %rax
    popq    %rdi
    call    aicfn_vec_new
    movq    %rax, -56(%rbp)
    movq    $0, -24(%rbp)
.Lmaptop263:
    movq    -24(%rbp), %rax
    pushq   %rax
    movq    -16(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    jge     .Lmapend264
    movq    -40(%rbp), %rax
    pushq   %rax
    movq    -24(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    movq    (%rax,%rbx,8), %rax
    movq    %rax, -32(%rbp)
    movq    -32(%rbp), %rax
    pushq   %rax
    movq    $0, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    setne    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse265
    movq    -56(%rbp), %rax
    pushq   %rax
    movq    -64(%rbp), %rax
    pushq   %rax
    movq    -24(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    movq    (%rax,%rbx,8), %rax
    pushq   %rax
    popq    %rsi
    popq    %rdi
    call    aicfn_vec_push
    jmp     .Lendif266
.Lelse265:
.Lendif266:
    incq    -24(%rbp)
    jmp     .Lmaptop263
.Lmapend264:
    movq    -56(%rbp), %rax
    jmp     .Lret_map_values
    movq    $0, %rax
.Lret_map_values:
    leave
    ret

aicfn_map_get_ptr:
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
.Lwtop267:
    movq    -32(%rbp), %rax
    pushq   %rax
    movq    $0, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lscshort269
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
    jmp     .Lscend270
.Lscshort269:
    movq    $0, %rax
.Lscend270:
    testq   %rax, %rax
    je      .Lwend268
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
    je      .Lelse271
    movq    $-1, %rax
    movq    %rax, -32(%rbp)
    jmp     .Lendif272
.Lelse271:
    movq    -56(%rbp), %rax
    pushq   %rax
    movq    -16(%rbp), %rax
    pushq   %rax
    popq    %rsi
    popq    %rdi
    call    aicfn_str_eq
    testq   %rax, %rax
    je      .Lelse273
    movq    -96(%rbp), %rax
    pushq   %rax
    movq    -48(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    movq    (%rax,%rbx,8), %rax
    movq    %rax, -80(%rbp)
    movq    $1, %rax
    movq    %rax, -32(%rbp)
    jmp     .Lendif274
.Lelse273:
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
.Lendif274:
.Lendif272:
    jmp     .Lwtop267
.Lwend268:
    movq    -32(%rbp), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse275
    movq    -80(%rbp), %rax
    jmp     .Lret_map_get_ptr
    jmp     .Lendif276
.Lelse275:
    leaq    aicstr_13(%rip), %rax
    jmp     .Lret_map_get_ptr
.Lendif276:
    movq    $0, %rax
.Lret_map_get_ptr:
    leave
    ret

aicfn_map_set_ptr:
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
    je      .Lelse277
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
    jne     .Lallocok279
    jmp     .Lruntimeerror
.Lallocok279:
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
    jne     .Lallocok280
    jmp     .Lruntimeerror
.Lallocok280:
    movq    %rax, -128(%rbp)
    movq    $0, -48(%rbp)
.Lmaptop281:
    movq    -48(%rbp), %rax
    pushq   %rax
    movq    -32(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    jge     .Lmapend282
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
    je      .Lelse283
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
.Lwtop285:
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
    je      .Lwend286
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
    jmp     .Lwtop285
.Lwend286:
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
    jmp     .Lendif284
.Lelse283:
.Lendif284:
    incq    -48(%rbp)
    jmp     .Lmaptop281
.Lmapend282:
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
    jmp     .Lendif278
.Lelse277:
.Lendif278:
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
.Lwtop287:
    movq    -152(%rbp), %rax
    pushq   %rax
    movq    $0, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lwend288
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
    je      .Lelse289
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
    jmp     .Lendif290
.Lelse289:
    movq    -64(%rbp), %rax
    pushq   %rax
    movq    -16(%rbp), %rax
    pushq   %rax
    popq    %rsi
    popq    %rdi
    call    aicfn_str_eq
    testq   %rax, %rax
    je      .Lelse291
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
    jmp     .Lendif292
.Lelse291:
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
.Lendif292:
.Lendif290:
    jmp     .Lwtop287
.Lwend288:
    movq    $1, %rax
    jmp     .Lret_map_set_ptr
    movq    $0, %rax
.Lret_map_set_ptr:
    leave
    ret


.Ldivzero:
    leaq    divzero_msg(%rip), %rsi
    movq    %rsi, %rdi
    call    aic_runtime_error


.Lruntimeerror:
    leaq    runtimeerr_msg(%rip), %rsi
    movq    %rsi, %rdi
    call    aic_runtime_error

    .section .rodata
aic_win_fmt_i_nl:
    .string "%lld\n"
aic_win_fmt_i_sp:
    .string "%lld "
aic_win_fmt_s_nl:
    .string "%s\n"
aic_win_fmt_s_sp:
    .string "%s "
aic_win_fmt_d:
    .string "%lld"
aic_win_fmt_err:
    .string "%s"
aic_empty_arg:
    .string ""

    .data
aic_argc:
    .quad 0
aic_argv:
    .quad 0

    .text
    .globl main
main:
    movslq  %ecx, %rax
    movq    %rax, aic_argc(%rip)
    movq    %rdx, aic_argv(%rip)
    subq    $40, %rsp
    call    aic_main
    addq    $40, %rsp
    ret

    .globl aic_arg
aic_arg:
    cmpq    $0, %rdi
    jl      .Laic_arg_empty
    cmpq    aic_argc(%rip), %rdi
    jge     .Laic_arg_empty
    movq    aic_argv(%rip), %rax
    movq    (%rax,%rdi,8), %rax
    ret
.Laic_arg_empty:
    leaq    aic_empty_arg(%rip), %rax
    ret

    .globl aic_calloc
aic_calloc:
    subq    $40, %rsp
    movq    %rdi, %rcx
    movq    %rsi, %rdx
    call    calloc
    addq    $40, %rsp
    ret

    .globl aic_malloc
aic_malloc:
    subq    $40, %rsp
    movq    %rdi, %rcx
    call    malloc
    addq    $40, %rsp
    ret

    .globl aic_strlen
aic_strlen:
    subq    $40, %rsp
    movq    %rdi, %rcx
    call    strlen
    addq    $40, %rsp
    ret

    .globl aic_strtol
aic_strtol:
    subq    $40, %rsp
    movq    %rdx, %r8
    movq    %rsi, %rdx
    movq    %rdi, %rcx
    call    strtoll
    addq    $40, %rsp
    ret

    .globl aic_fopen
aic_fopen:
    subq    $40, %rsp
    movq    %rdi, %rcx
    movq    %rsi, %rdx
    call    fopen
    addq    $40, %rsp
    ret

    .globl aic_ftell
aic_ftell:
    subq    $40, %rsp
    movq    %rdi, %rcx
    call    ftell
    addq    $40, %rsp
    ret

    .globl aic_fseek
aic_fseek:
    subq    $40, %rsp
    movq    %rdx, %r8
    movq    %rsi, %rdx
    movq    %rdi, %rcx
    call    fseek
    addq    $40, %rsp
    ret

    .globl aic_fread
aic_fread:
    subq    $40, %rsp
    movq    %rcx, %r9
    movq    %rdx, %r8
    movq    %rsi, %rdx
    movq    %rdi, %rcx
    call    fread
    addq    $40, %rsp
    ret

    .globl aic_fwrite
aic_fwrite:
    subq    $40, %rsp
    movq    %rcx, %r9
    movq    %rdx, %r8
    movq    %rsi, %rdx
    movq    %rdi, %rcx
    call    fwrite
    addq    $40, %rsp
    ret

    .globl aic_fclose
aic_fclose:
    subq    $40, %rsp
    movq    %rdi, %rcx
    call    fclose
    addq    $40, %rsp
    ret

    .globl aic_printf
aic_printf:
    subq    $40, %rsp
    movq    %rsi, %rdx
    cmpb    $115, 1(%rdi)
    je      .Laic_printf_str
    leaq    aic_win_fmt_i_nl(%rip), %rcx
    cmpb    $32, 3(%rdi)
    jne     .Laic_printf_call
    leaq    aic_win_fmt_i_sp(%rip), %rcx
    jmp     .Laic_printf_call
.Laic_printf_str:
    leaq    aic_win_fmt_s_nl(%rip), %rcx
    cmpb    $32, 2(%rdi)
    jne     .Laic_printf_call
    leaq    aic_win_fmt_s_sp(%rip), %rcx
.Laic_printf_call:
    call    printf
    addq    $40, %rsp
    ret

    .globl aic_sprintf
aic_sprintf:
    subq    $40, %rsp
    movq    %rdx, %r8
    leaq    aic_win_fmt_d(%rip), %rdx
    movq    %rdi, %rcx
    call    sprintf
    addq    $40, %rsp
    ret

    .globl aic_input
aic_input:
    subq    $40, %rsp
    movq    %rdi, %rdx
    leaq    aic_win_fmt_err(%rip), %rcx
    call    printf
    movq    $0, %rcx
    call    fflush
    movq    $64, %rcx
    call    malloc
    movq    %rax, %rdx
    movq    %rax, 32(%rsp)
    leaq    aic_win_fmt_err(%rip), %rcx
    call    scanf
    movq    32(%rsp), %rax
    addq    $40, %rsp
    ret

    .globl aic_free
aic_free:
    subq    $40, %rsp
    movq    %rdi, %rcx
    call    free
    xorl    %eax, %eax
    addq    $40, %rsp
    ret

    .globl aic_time
aic_time:
    subq    $40, %rsp
    call    clock
    addq    $40, %rsp
    ret

    .globl aic_runtime_error
aic_runtime_error:
    subq    $40, %rsp
    movq    %rdi, %rdx
    leaq    aic_win_fmt_err(%rip), %rcx
    call    printf
    movq    $1, %rcx
    call    exit
