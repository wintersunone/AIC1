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
    .string "  [PASS] "
aicstr_1:
    .string "\n"
aicstr_2:
    .string "  [FAIL] "
aicstr_3:
    .string " (expected "
aicstr_4:
    .string ", got "
aicstr_5:
    .string ")\n"
aicstr_6:
    .string " (expected '"
aicstr_7:
    .string "', got '"
aicstr_8:
    .string "')\n"
aicstr_9:
    .string "==================================================\n"
aicstr_10:
    .string "Test Results: "
aicstr_11:
    .string "/"
aicstr_12:
    .string " passed"
aicstr_13:
    .string " ("
aicstr_14:
    .string " FAILED)\n"
aicstr_15:
    .string " (ALL PASSED)\n"
aicstr_16:
    .string "Tier 1: Stack Basics top == 42"
aicstr_17:
    .string "Tier 2: ALU Arithmetic top == 90"
aicstr_18:
    .string "Tier 3: Registers top == 800"
aicstr_19:
    .string "Tier 4: Loop Factorial(5) R1 == 120"
aicstr_20:
    .string "Tier 4: Loop Factorial(5) top == 120"
aicstr_21:
    .string "Tier 5: Subroutine CALL and RET == 225"
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
    subq    $16, %rsp
    call    aicfn_run_gradient_tests
    movq    $0, %rax
.Lmain_ret:
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
    jne      .Lscshort3
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
    jmp     .Lscend4
.Lscshort3:
    movq    $1, %rax
.Lscend4:
    testq   %rax, %rax
    je      .Lelse1
    movq    $0, %rax
    jmp     .Lret_str_char_at
    jmp     .Lendif2
.Lelse1:
.Lendif2:
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
    je      .Lelse5
    movq    $0, %rax
    jmp     .Lret_str_eq
    jmp     .Lendif6
.Lelse5:
.Lendif6:
    movq    $0, %rax
    movq    %rax, -32(%rbp)
    movq    $0, %rax
    movq    %rax, -24(%rbp)
.Lwtop7:
    movq    -24(%rbp), %rax
    pushq   %rax
    movq    $0, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lscshort9
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
    jmp     .Lscend10
.Lscshort9:
    movq    $0, %rax
.Lscend10:
    testq   %rax, %rax
    je      .Lwend8
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
    je      .Lelse11
    movq    $1, %rax
    movq    %rax, -24(%rbp)
    jmp     .Lendif12
.Lelse11:
.Lendif12:
    movq    -32(%rbp), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, -32(%rbp)
    jmp     .Lwtop7
.Lwend8:
    movq    -24(%rbp), %rax
    pushq   %rax
    movq    $0, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lternelse13
    movq    $1, %rax
    jmp     .Lternend14
.Lternelse13:
    movq    $0, %rax
.Lternend14:
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
    je      .Lternelse15
    movq    -48(%rbp), %rax
    jmp     .Lternend16
.Lternelse15:
    movq    -56(%rbp), %rax
.Lternend16:
    movq    %rax, -64(%rbp)
    movq    $0, %rax
    movq    %rax, -40(%rbp)
    movq    $0, %rax
    movq    %rax, -72(%rbp)
.Lwtop17:
    movq    -72(%rbp), %rax
    pushq   %rax
    movq    $0, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lscshort19
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
    jmp     .Lscend20
.Lscshort19:
    movq    $0, %rax
.Lscend20:
    testq   %rax, %rax
    je      .Lwend18
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
    je      .Lelse21
    movq    -24(%rbp), %rax
    pushq   %rax
    movq    -32(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    subq    %rbx, %rax
    movq    %rax, -72(%rbp)
    jmp     .Lendif22
.Lelse21:
.Lendif22:
    movq    -40(%rbp), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, -40(%rbp)
    jmp     .Lwtop17
.Lwend18:
    movq    -72(%rbp), %rax
    pushq   %rax
    movq    $0, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    setne    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse23
    movq    -72(%rbp), %rax
    jmp     .Lret_str_cmp
    jmp     .Lendif24
.Lelse23:
.Lendif24:
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
    jne     .Lallocok25
    jmp     .Lruntimeerror
.Lallocok25:
    movq    %rax, -24(%rbp)
    movq    $0, -32(%rbp)
.Lmaptop26:
    movq    -32(%rbp), %rax
    pushq   %rax
    movq    -48(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    jge     .Lmapend27
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
    jmp     .Lmaptop26
.Lmapend27:
    movq    $0, -40(%rbp)
.Lmaptop28:
    movq    -40(%rbp), %rax
    pushq   %rax
    movq    -56(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    jge     .Lmapend29
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
    jmp     .Lmaptop28
.Lmapend29:
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
.Lwtop30:
    movq    -40(%rbp), %rax
    pushq   %rax
    movq    $-1, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lscshort32
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
    jmp     .Lscend33
.Lscshort32:
    movq    $0, %rax
.Lscend33:
    testq   %rax, %rax
    je      .Lwend31
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
    je      .Lelse34
    movq    -24(%rbp), %rax
    movq    %rax, -40(%rbp)
    jmp     .Lendif35
.Lelse34:
.Lendif35:
    movq    -24(%rbp), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, -24(%rbp)
    jmp     .Lwtop30
.Lwend31:
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
    je      .Lelse36
    movq    $0, %rax
    jmp     .Lret_str_starts_with
    jmp     .Lendif37
.Lelse36:
.Lendif37:
    movq    $0, %rax
    movq    %rax, -24(%rbp)
    movq    $1, %rax
    movq    %rax, -32(%rbp)
.Lwtop38:
    movq    -32(%rbp), %rax
    pushq   %rax
    movq    $0, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    setne    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lscshort40
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
    jmp     .Lscend41
.Lscshort40:
    movq    $0, %rax
.Lscend41:
    testq   %rax, %rax
    je      .Lwend39
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
    je      .Lelse42
    movq    $0, %rax
    movq    %rax, -32(%rbp)
    jmp     .Lendif43
.Lelse42:
.Lendif43:
    movq    -24(%rbp), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, -24(%rbp)
    jmp     .Lwtop38
.Lwend39:
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
    je      .Lelse44
    movq    $0, %rax
    jmp     .Lret_str_ends_with
    jmp     .Lendif45
.Lelse44:
.Lendif45:
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
.Lwtop46:
    movq    -40(%rbp), %rax
    pushq   %rax
    movq    $0, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    setne    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lscshort48
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
    jmp     .Lscend49
.Lscshort48:
    movq    $0, %rax
.Lscend49:
    testq   %rax, %rax
    je      .Lwend47
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
    je      .Lelse50
    movq    $0, %rax
    movq    %rax, -40(%rbp)
    jmp     .Lendif51
.Lelse50:
.Lendif51:
    movq    -24(%rbp), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, -24(%rbp)
    jmp     .Lwtop46
.Lwend47:
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
    jne     .Lallocok52
    jmp     .Lruntimeerror
.Lallocok52:
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
    jne     .Lallocok53
    jmp     .Lruntimeerror
.Lallocok53:
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

aicfn_test_runner_init:
    pushq   %rbp
    movq    %rsp, %rbp
    subq    $16, %rsp

    movq    $0, -8(%rbp)
    movq    $0, %rax
    pushq   %rax
    movq    $0, %rax
    pushq   %rax
    movq    $0, %rax
    pushq   %rax
    movq    $25, %rdi
    movq    $1, %rsi
    call    aic_calloc
    testq   %rax, %rax
    jne     .Lallocok54
    jmp     .Lruntimeerror
.Lallocok54:
    popq    %rbx
    movq    %rbx, 16(%rax)
    popq    %rbx
    movq    %rbx, 8(%rax)
    popq    %rbx
    movq    %rbx, 0(%rax)
    movq    %rax, -8(%rbp)
    movq    -8(%rbp), %rax
    jmp     .Lret_test_runner_init
    movq    $0, %rax
.Lret_test_runner_init:
    leave
    ret

aicfn_test_assert_eq:
    pushq   %rbp
    movq    %rsp, %rbp
    subq    $32, %rsp
    movq    %rdi, -8(%rbp)
    movq    %rsi, -16(%rbp)
    movq    %rdx, -24(%rbp)
    movq    %rcx, -32(%rbp)

    movq    -8(%rbp), %rax
    pushq   %rax
    movq    -8(%rbp), %rax
    movq    0(%rax), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    popq    %rbx
    movq    %rax, 0(%rbx)
    movq    -16(%rbp), %rax
    pushq   %rax
    movq    -24(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse55
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    -8(%rbp), %rax
    movq    8(%rax), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    popq    %rbx
    movq    %rax, 8(%rbx)
    leaq    aicstr_0(%rip), %rax
    leaq    fmt_s_nl(%rip), %rdi
    movq    %rax, %rsi
    xorl    %eax, %eax
    call    aic_printf
    movq    -32(%rbp), %rax
    leaq    fmt_s_nl(%rip), %rdi
    movq    %rax, %rsi
    xorl    %eax, %eax
    call    aic_printf
    leaq    aicstr_1(%rip), %rax
    leaq    fmt_s_nl(%rip), %rdi
    movq    %rax, %rsi
    xorl    %eax, %eax
    call    aic_printf
    movq    $1, %rax
    jmp     .Lret_test_assert_eq
    jmp     .Lendif56
.Lelse55:
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    -8(%rbp), %rax
    movq    16(%rax), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    popq    %rbx
    movq    %rax, 16(%rbx)
    leaq    aicstr_2(%rip), %rax
    leaq    fmt_s_nl(%rip), %rdi
    movq    %rax, %rsi
    xorl    %eax, %eax
    call    aic_printf
    movq    -32(%rbp), %rax
    leaq    fmt_s_nl(%rip), %rdi
    movq    %rax, %rsi
    xorl    %eax, %eax
    call    aic_printf
    leaq    aicstr_3(%rip), %rax
    leaq    fmt_s_nl(%rip), %rdi
    movq    %rax, %rsi
    xorl    %eax, %eax
    call    aic_printf
    movq    -24(%rbp), %rax
    leaq    fmt_nl(%rip), %rdi
    movq    %rax, %rsi
    xorl    %eax, %eax
    call    aic_printf
    leaq    aicstr_4(%rip), %rax
    leaq    fmt_s_nl(%rip), %rdi
    movq    %rax, %rsi
    xorl    %eax, %eax
    call    aic_printf
    movq    -16(%rbp), %rax
    leaq    fmt_nl(%rip), %rdi
    movq    %rax, %rsi
    xorl    %eax, %eax
    call    aic_printf
    leaq    aicstr_5(%rip), %rax
    leaq    fmt_s_nl(%rip), %rdi
    movq    %rax, %rsi
    xorl    %eax, %eax
    call    aic_printf
    movq    $0, %rax
    jmp     .Lret_test_assert_eq
.Lendif56:
    movq    $0, %rax
.Lret_test_assert_eq:
    leave
    ret

aicfn_test_assert_str_eq:
    pushq   %rbp
    movq    %rsp, %rbp
    subq    $32, %rsp
    movq    %rdi, -8(%rbp)
    movq    %rsi, -16(%rbp)
    movq    %rdx, -24(%rbp)
    movq    %rcx, -32(%rbp)

    movq    -8(%rbp), %rax
    pushq   %rax
    movq    -8(%rbp), %rax
    movq    0(%rax), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    popq    %rbx
    movq    %rax, 0(%rbx)
    movq    -16(%rbp), %rax
    pushq   %rax
    movq    -24(%rbp), %rax
    pushq   %rax
    popq    %rsi
    popq    %rdi
    call    aicfn_str_eq
    testq   %rax, %rax
    je      .Lelse57
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    -8(%rbp), %rax
    movq    8(%rax), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    popq    %rbx
    movq    %rax, 8(%rbx)
    leaq    aicstr_0(%rip), %rax
    leaq    fmt_s_nl(%rip), %rdi
    movq    %rax, %rsi
    xorl    %eax, %eax
    call    aic_printf
    movq    -32(%rbp), %rax
    leaq    fmt_s_nl(%rip), %rdi
    movq    %rax, %rsi
    xorl    %eax, %eax
    call    aic_printf
    leaq    aicstr_1(%rip), %rax
    leaq    fmt_s_nl(%rip), %rdi
    movq    %rax, %rsi
    xorl    %eax, %eax
    call    aic_printf
    movq    $1, %rax
    jmp     .Lret_test_assert_str_eq
    jmp     .Lendif58
.Lelse57:
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    -8(%rbp), %rax
    movq    16(%rax), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    popq    %rbx
    movq    %rax, 16(%rbx)
    leaq    aicstr_2(%rip), %rax
    leaq    fmt_s_nl(%rip), %rdi
    movq    %rax, %rsi
    xorl    %eax, %eax
    call    aic_printf
    movq    -32(%rbp), %rax
    leaq    fmt_s_nl(%rip), %rdi
    movq    %rax, %rsi
    xorl    %eax, %eax
    call    aic_printf
    leaq    aicstr_6(%rip), %rax
    leaq    fmt_s_nl(%rip), %rdi
    movq    %rax, %rsi
    xorl    %eax, %eax
    call    aic_printf
    movq    -24(%rbp), %rax
    leaq    fmt_s_nl(%rip), %rdi
    movq    %rax, %rsi
    xorl    %eax, %eax
    call    aic_printf
    leaq    aicstr_7(%rip), %rax
    leaq    fmt_s_nl(%rip), %rdi
    movq    %rax, %rsi
    xorl    %eax, %eax
    call    aic_printf
    movq    -16(%rbp), %rax
    leaq    fmt_s_nl(%rip), %rdi
    movq    %rax, %rsi
    xorl    %eax, %eax
    call    aic_printf
    leaq    aicstr_8(%rip), %rax
    leaq    fmt_s_nl(%rip), %rdi
    movq    %rax, %rsi
    xorl    %eax, %eax
    call    aic_printf
    movq    $0, %rax
    jmp     .Lret_test_assert_str_eq
.Lendif58:
    movq    $0, %rax
.Lret_test_assert_str_eq:
    leave
    ret

aicfn_test_assert_true:
    pushq   %rbp
    movq    %rsp, %rbp
    subq    $32, %rsp
    movq    %rdi, -8(%rbp)
    movq    %rsi, -16(%rbp)
    movq    %rdx, -24(%rbp)

    movq    -8(%rbp), %rax
    pushq   %rax
    movq    -16(%rbp), %rax
    testq   %rax, %rax
    je      .Lternelse59
    movq    $1, %rax
    jmp     .Lternend60
.Lternelse59:
    movq    $0, %rax
.Lternend60:
    pushq   %rax
    movq    $1, %rax
    pushq   %rax
    movq    -24(%rbp), %rax
    pushq   %rax
    popq    %rcx
    popq    %rdx
    popq    %rsi
    popq    %rdi
    call    aicfn_test_assert_eq
    jmp     .Lret_test_assert_true
    movq    $0, %rax
.Lret_test_assert_true:
    leave
    ret

aicfn_test_summary:
    pushq   %rbp
    movq    %rsp, %rbp
    subq    $32, %rsp
    movq    %rdi, -8(%rbp)
    movq    $0, -16(%rbp)
    movq    $0, -24(%rbp)
    movq    $0, -32(%rbp)
    movq    -8(%rbp), %rax
    movq    0(%rax), %rax
    movq    %rax, -32(%rbp)
    movq    -8(%rbp), %rax
    movq    8(%rax), %rax
    movq    %rax, -24(%rbp)
    movq    -8(%rbp), %rax
    movq    16(%rax), %rax
    movq    %rax, -16(%rbp)
    leaq    aicstr_9(%rip), %rax
    leaq    fmt_s_nl(%rip), %rdi
    movq    %rax, %rsi
    xorl    %eax, %eax
    call    aic_printf
    leaq    aicstr_10(%rip), %rax
    leaq    fmt_s_nl(%rip), %rdi
    movq    %rax, %rsi
    xorl    %eax, %eax
    call    aic_printf
    movq    -24(%rbp), %rax
    leaq    fmt_nl(%rip), %rdi
    movq    %rax, %rsi
    xorl    %eax, %eax
    call    aic_printf
    leaq    aicstr_11(%rip), %rax
    leaq    fmt_s_nl(%rip), %rdi
    movq    %rax, %rsi
    xorl    %eax, %eax
    call    aic_printf
    movq    -32(%rbp), %rax
    leaq    fmt_nl(%rip), %rdi
    movq    %rax, %rsi
    xorl    %eax, %eax
    call    aic_printf
    leaq    aicstr_12(%rip), %rax
    leaq    fmt_s_nl(%rip), %rdi
    movq    %rax, %rsi
    xorl    %eax, %eax
    call    aic_printf
    movq    -16(%rbp), %rax
    pushq   %rax
    movq    $0, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    setg    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse61
    leaq    aicstr_13(%rip), %rax
    leaq    fmt_s_nl(%rip), %rdi
    movq    %rax, %rsi
    xorl    %eax, %eax
    call    aic_printf
    movq    -16(%rbp), %rax
    leaq    fmt_nl(%rip), %rdi
    movq    %rax, %rsi
    xorl    %eax, %eax
    call    aic_printf
    leaq    aicstr_14(%rip), %rax
    leaq    fmt_s_nl(%rip), %rdi
    movq    %rax, %rsi
    xorl    %eax, %eax
    call    aic_printf
    jmp     .Lendif62
.Lelse61:
    leaq    aicstr_15(%rip), %rax
    leaq    fmt_s_nl(%rip), %rdi
    movq    %rax, %rsi
    xorl    %eax, %eax
    call    aic_printf
.Lendif62:
    leaq    aicstr_9(%rip), %rax
    leaq    fmt_s_nl(%rip), %rdi
    movq    %rax, %rsi
    xorl    %eax, %eax
    call    aic_printf
    movq    -16(%rbp), %rax
    pushq   %rax
    movq    $0, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lternelse63
    movq    $0, %rax
    jmp     .Lternend64
.Lternelse63:
    movq    $1, %rax
.Lternend64:
    jmp     .Lret_test_summary
    movq    $0, %rax
.Lret_test_summary:
    leave
    ret

aicfn_vm_new:
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
    movq    $2048, %rax
    leaq    1(%rax), %rdi
    movq    $1, %rsi
    call    aic_calloc
    testq   %rax, %rax
    jne     .Lallocok65
    jmp     .Lruntimeerror
.Lallocok65:
    movq    %rax, -48(%rbp)
    movq    $512, %rax
    leaq    1(%rax), %rdi
    movq    $1, %rsi
    call    aic_calloc
    testq   %rax, %rax
    jne     .Lallocok66
    jmp     .Lruntimeerror
.Lallocok66:
    movq    %rax, -24(%rbp)
    movq    $64, %rax
    leaq    1(%rax), %rdi
    movq    $1, %rsi
    call    aic_calloc
    testq   %rax, %rax
    jne     .Lallocok67
    jmp     .Lruntimeerror
.Lallocok67:
    movq    %rax, -40(%rbp)
    movq    $0, %rax
    movq    %rax, -32(%rbp)
.Lwtop68:
    movq    -32(%rbp), %rax
    pushq   %rax
    movq    $8, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    setl    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lwend69
    movq    -40(%rbp), %rax
    pushq   %rax
    movq    -32(%rbp), %rax
    pushq   %rax
    movq    $0, %rax
    popq    %rbx
    popq    %rcx
    movq    %rax, (%rcx,%rbx,8)
    movq    -32(%rbp), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, -32(%rbp)
    jmp     .Lwtop68
.Lwend69:
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    -16(%rbp), %rax
    pushq   %rax
    movq    $0, %rax
    pushq   %rax
    movq    -48(%rbp), %rax
    pushq   %rax
    movq    $0, %rax
    pushq   %rax
    movq    -24(%rbp), %rax
    pushq   %rax
    movq    $0, %rax
    pushq   %rax
    movq    -40(%rbp), %rax
    pushq   %rax
    movq    $1, %rax
    pushq   %rax
    movq    $73, %rdi
    movq    $1, %rsi
    call    aic_calloc
    testq   %rax, %rax
    jne     .Lallocok70
    jmp     .Lruntimeerror
.Lallocok70:
    popq    %rbx
    movq    %rbx, 64(%rax)
    popq    %rbx
    movq    %rbx, 56(%rax)
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
    movq    %rax, -56(%rbp)
    movq    -56(%rbp), %rax
    jmp     .Lret_vm_new
    movq    $0, %rax
.Lret_vm_new:
    leave
    ret

aicfn_vm_push:
    pushq   %rbp
    movq    %rsp, %rbp
    subq    $32, %rsp
    movq    %rdi, -8(%rbp)
    movq    %rsi, -16(%rbp)
    movq    $0, -24(%rbp)
    movq    $0, -32(%rbp)
    movq    -8(%rbp), %rax
    movq    24(%rax), %rax
    movq    %rax, -32(%rbp)
    movq    -8(%rbp), %rax
    movq    32(%rax), %rax
    movq    %rax, -24(%rbp)
    movq    -32(%rbp), %rax
    pushq   %rax
    movq    -24(%rbp), %rax
    pushq   %rax
    movq    -16(%rbp), %rax
    popq    %rbx
    popq    %rcx
    movq    %rax, (%rcx,%rbx,8)
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    -24(%rbp), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    popq    %rbx
    movq    %rax, 32(%rbx)
    movq    $0, %rax
.Lret_vm_push:
    leave
    ret

aicfn_vm_pop:
    pushq   %rbp
    movq    %rsp, %rbp
    subq    $32, %rsp
    movq    %rdi, -8(%rbp)
    movq    $0, -16(%rbp)
    movq    $0, -24(%rbp)
    movq    -8(%rbp), %rax
    movq    24(%rax), %rax
    movq    %rax, -24(%rbp)
    movq    -8(%rbp), %rax
    movq    32(%rax), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    subq    %rbx, %rax
    movq    %rax, -16(%rbp)
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    -16(%rbp), %rax
    popq    %rbx
    movq    %rax, 32(%rbx)
    movq    -24(%rbp), %rax
    pushq   %rax
    movq    -16(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    movq    (%rax,%rbx,8), %rax
    jmp     .Lret_vm_pop
    movq    $0, %rax
.Lret_vm_pop:
    leave
    ret

aicfn_vm_step:
    pushq   %rbp
    movq    %rsp, %rbp
    subq    $128, %rsp
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
    movq    -8(%rbp), %rax
    movq    16(%rax), %rax
    movq    %rax, -88(%rbp)
    movq    -8(%rbp), %rax
    movq    8(%rax), %rax
    movq    %rax, -40(%rbp)
    movq    -88(%rbp), %rax
    pushq   %rax
    movq    -40(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    setge    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse71
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    $0, %rax
    popq    %rbx
    movq    %rax, 64(%rbx)
    movq    $0, %rax
    jmp     .Lret_vm_step
    jmp     .Lendif72
.Lelse71:
.Lendif72:
    movq    -8(%rbp), %rax
    movq    0(%rax), %rax
    movq    %rax, -32(%rbp)
    movq    -32(%rbp), %rax
    pushq   %rax
    movq    -88(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    movq    (%rax,%rbx,8), %rax
    movq    %rax, -80(%rbp)
    movq    -88(%rbp), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, -72(%rbp)
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    -72(%rbp), %rax
    popq    %rbx
    movq    %rax, 16(%rbx)
    movq    -80(%rbp), %rax
    pushq   %rax
    movq    $0, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse73
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    $0, %rax
    popq    %rbx
    movq    %rax, 64(%rbx)
    jmp     .Lendif74
.Lelse73:
.Lendif74:
    movq    -80(%rbp), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse75
    movq    -32(%rbp), %rax
    pushq   %rax
    movq    -72(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    movq    (%rax,%rbx,8), %rax
    movq    %rax, -128(%rbp)
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    -72(%rbp), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    popq    %rbx
    movq    %rax, 16(%rbx)
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    -128(%rbp), %rax
    pushq   %rax
    popq    %rsi
    popq    %rdi
    call    aicfn_vm_push
    jmp     .Lendif76
.Lelse75:
.Lendif76:
    movq    -80(%rbp), %rax
    pushq   %rax
    movq    $2, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse77
    movq    -8(%rbp), %rax
    pushq   %rax
    popq    %rdi
    call    aicfn_vm_pop
    jmp     .Lendif78
.Lelse77:
.Lendif78:
    movq    -80(%rbp), %rax
    pushq   %rax
    movq    $3, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse79
    movq    -8(%rbp), %rax
    pushq   %rax
    popq    %rdi
    call    aicfn_vm_pop
    movq    %rax, -24(%rbp)
    movq    -8(%rbp), %rax
    pushq   %rax
    popq    %rdi
    call    aicfn_vm_pop
    movq    %rax, -16(%rbp)
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    -16(%rbp), %rax
    pushq   %rax
    movq    -24(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    pushq   %rax
    popq    %rsi
    popq    %rdi
    call    aicfn_vm_push
    jmp     .Lendif80
.Lelse79:
.Lendif80:
    movq    -80(%rbp), %rax
    pushq   %rax
    movq    $4, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse81
    movq    -8(%rbp), %rax
    pushq   %rax
    popq    %rdi
    call    aicfn_vm_pop
    movq    %rax, -24(%rbp)
    movq    -8(%rbp), %rax
    pushq   %rax
    popq    %rdi
    call    aicfn_vm_pop
    movq    %rax, -16(%rbp)
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    -16(%rbp), %rax
    pushq   %rax
    movq    -24(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    subq    %rbx, %rax
    pushq   %rax
    popq    %rsi
    popq    %rdi
    call    aicfn_vm_push
    jmp     .Lendif82
.Lelse81:
.Lendif82:
    movq    -80(%rbp), %rax
    pushq   %rax
    movq    $5, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse83
    movq    -8(%rbp), %rax
    pushq   %rax
    popq    %rdi
    call    aicfn_vm_pop
    movq    %rax, -24(%rbp)
    movq    -8(%rbp), %rax
    pushq   %rax
    popq    %rdi
    call    aicfn_vm_pop
    movq    %rax, -16(%rbp)
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    -16(%rbp), %rax
    pushq   %rax
    movq    -24(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    imulq   %rbx, %rax
    pushq   %rax
    popq    %rsi
    popq    %rdi
    call    aicfn_vm_push
    jmp     .Lendif84
.Lelse83:
.Lendif84:
    movq    -80(%rbp), %rax
    pushq   %rax
    movq    $6, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse85
    movq    -8(%rbp), %rax
    pushq   %rax
    popq    %rdi
    call    aicfn_vm_pop
    movq    %rax, -24(%rbp)
    movq    -8(%rbp), %rax
    pushq   %rax
    popq    %rdi
    call    aicfn_vm_pop
    movq    %rax, -16(%rbp)
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    -16(%rbp), %rax
    pushq   %rax
    movq    -24(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    testq   %rbx, %rbx
    jne     .Ldivok87
    jmp     .Ldivzero
.Ldivok87:
    cqto
    idivq   %rbx
    pushq   %rax
    popq    %rsi
    popq    %rdi
    call    aicfn_vm_push
    jmp     .Lendif86
.Lelse85:
.Lendif86:
    movq    -80(%rbp), %rax
    pushq   %rax
    movq    $7, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse88
    movq    -8(%rbp), %rax
    pushq   %rax
    popq    %rdi
    call    aicfn_vm_pop
    movq    %rax, -24(%rbp)
    movq    -8(%rbp), %rax
    pushq   %rax
    popq    %rdi
    call    aicfn_vm_pop
    movq    %rax, -16(%rbp)
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    -16(%rbp), %rax
    pushq   %rax
    movq    -24(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lternelse90
    movq    $1, %rax
    jmp     .Lternend91
.Lternelse90:
    movq    $0, %rax
.Lternend91:
    pushq   %rax
    popq    %rsi
    popq    %rdi
    call    aicfn_vm_push
    jmp     .Lendif89
.Lelse88:
.Lendif89:
    movq    -80(%rbp), %rax
    pushq   %rax
    movq    $8, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse92
    movq    -32(%rbp), %rax
    pushq   %rax
    movq    -72(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    movq    (%rax,%rbx,8), %rax
    movq    %rax, -96(%rbp)
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    -72(%rbp), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    popq    %rbx
    movq    %rax, 16(%rbx)
    movq    -8(%rbp), %rax
    pushq   %rax
    popq    %rdi
    call    aicfn_vm_pop
    movq    %rax, -128(%rbp)
    movq    -8(%rbp), %rax
    movq    56(%rax), %rax
    movq    %rax, -104(%rbp)
    movq    -104(%rbp), %rax
    pushq   %rax
    movq    -96(%rbp), %rax
    pushq   %rax
    movq    -128(%rbp), %rax
    popq    %rbx
    popq    %rcx
    movq    %rax, (%rcx,%rbx,8)
    jmp     .Lendif93
.Lelse92:
.Lendif93:
    movq    -80(%rbp), %rax
    pushq   %rax
    movq    $9, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse94
    movq    -32(%rbp), %rax
    pushq   %rax
    movq    -72(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    movq    (%rax,%rbx,8), %rax
    movq    %rax, -96(%rbp)
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    -72(%rbp), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    popq    %rbx
    movq    %rax, 16(%rbx)
    movq    -8(%rbp), %rax
    movq    56(%rax), %rax
    movq    %rax, -104(%rbp)
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    -104(%rbp), %rax
    pushq   %rax
    movq    -96(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    movq    (%rax,%rbx,8), %rax
    pushq   %rax
    popq    %rsi
    popq    %rdi
    call    aicfn_vm_push
    jmp     .Lendif95
.Lelse94:
.Lendif95:
    movq    -80(%rbp), %rax
    pushq   %rax
    movq    $10, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse96
    movq    -32(%rbp), %rax
    pushq   %rax
    movq    -72(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    movq    (%rax,%rbx,8), %rax
    movq    %rax, -120(%rbp)
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    -120(%rbp), %rax
    popq    %rbx
    movq    %rax, 16(%rbx)
    jmp     .Lendif97
.Lelse96:
.Lendif97:
    movq    -80(%rbp), %rax
    pushq   %rax
    movq    $11, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse98
    movq    -32(%rbp), %rax
    pushq   %rax
    movq    -72(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    movq    (%rax,%rbx,8), %rax
    movq    %rax, -120(%rbp)
    movq    -8(%rbp), %rax
    pushq   %rax
    popq    %rdi
    call    aicfn_vm_pop
    movq    %rax, -48(%rbp)
    movq    -48(%rbp), %rax
    pushq   %rax
    movq    $0, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse100
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    -120(%rbp), %rax
    popq    %rbx
    movq    %rax, 16(%rbx)
    jmp     .Lendif101
.Lelse100:
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    -72(%rbp), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    popq    %rbx
    movq    %rax, 16(%rbx)
.Lendif101:
    jmp     .Lendif99
.Lelse98:
.Lendif99:
    movq    -80(%rbp), %rax
    pushq   %rax
    movq    $12, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse102
    movq    -32(%rbp), %rax
    pushq   %rax
    movq    -72(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    movq    (%rax,%rbx,8), %rax
    movq    %rax, -120(%rbp)
    movq    -8(%rbp), %rax
    pushq   %rax
    popq    %rdi
    call    aicfn_vm_pop
    movq    %rax, -48(%rbp)
    movq    -48(%rbp), %rax
    pushq   %rax
    movq    $0, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    setne    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse104
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    -120(%rbp), %rax
    popq    %rbx
    movq    %rax, 16(%rbx)
    jmp     .Lendif105
.Lelse104:
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    -72(%rbp), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    popq    %rbx
    movq    %rax, 16(%rbx)
.Lendif105:
    jmp     .Lendif103
.Lelse102:
.Lendif103:
    movq    -80(%rbp), %rax
    pushq   %rax
    movq    $13, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse106
    movq    -32(%rbp), %rax
    pushq   %rax
    movq    -72(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    movq    (%rax,%rbx,8), %rax
    movq    %rax, -120(%rbp)
    movq    -72(%rbp), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, -112(%rbp)
    movq    -8(%rbp), %rax
    movq    40(%rax), %rax
    movq    %rax, -64(%rbp)
    movq    -8(%rbp), %rax
    movq    48(%rax), %rax
    movq    %rax, -56(%rbp)
    movq    -64(%rbp), %rax
    pushq   %rax
    movq    -56(%rbp), %rax
    pushq   %rax
    movq    -112(%rbp), %rax
    popq    %rbx
    popq    %rcx
    movq    %rax, (%rcx,%rbx,8)
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    -56(%rbp), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    popq    %rbx
    movq    %rax, 48(%rbx)
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    -120(%rbp), %rax
    popq    %rbx
    movq    %rax, 16(%rbx)
    jmp     .Lendif107
.Lelse106:
.Lendif107:
    movq    -80(%rbp), %rax
    pushq   %rax
    movq    $14, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse108
    movq    -8(%rbp), %rax
    movq    40(%rax), %rax
    movq    %rax, -64(%rbp)
    movq    -8(%rbp), %rax
    movq    48(%rax), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    subq    %rbx, %rax
    movq    %rax, -56(%rbp)
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    -56(%rbp), %rax
    popq    %rbx
    movq    %rax, 48(%rbx)
    movq    -64(%rbp), %rax
    pushq   %rax
    movq    -56(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    movq    (%rax,%rbx,8), %rax
    movq    %rax, -112(%rbp)
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    -112(%rbp), %rax
    popq    %rbx
    movq    %rax, 16(%rbx)
    jmp     .Lendif109
.Lelse108:
.Lendif109:
    movq    $0, %rax
    jmp     .Lret_vm_step
    movq    $0, %rax
.Lret_vm_step:
    leave
    ret

aicfn_vm_run:
    pushq   %rbp
    movq    %rsp, %rbp
    subq    $32, %rsp
    movq    %rdi, -8(%rbp)
    movq    %rsi, -16(%rbp)
    movq    $0, -24(%rbp)
    movq    $0, -32(%rbp)
    movq    $0, %rax
    movq    %rax, -32(%rbp)
.Lwtop110:
    movq    -8(%rbp), %rax
    movq    64(%rax), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    pushq   %rax
    movq    -32(%rbp), %rax
    pushq   %rax
    movq    -16(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    setl    %al
    movzbq  %al, %rax
    movq    %rax, %rbx
    popq    %rax
    andq    %rbx, %rax
    testq   %rax, %rax
    je      .Lwend111
    movq    -8(%rbp), %rax
    pushq   %rax
    popq    %rdi
    call    aicfn_vm_step
    movq    -32(%rbp), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, -32(%rbp)
    jmp     .Lwtop110
.Lwend111:
    movq    -8(%rbp), %rax
    movq    32(%rax), %rax
    movq    %rax, -24(%rbp)
    movq    -24(%rbp), %rax
    pushq   %rax
    movq    $0, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    setg    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse112
    movq    -8(%rbp), %rax
    movq    24(%rax), %rax
    pushq   %rax
    movq    -24(%rbp), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    subq    %rbx, %rax
    movq    %rax, %rbx
    popq    %rax
    movq    (%rax,%rbx,8), %rax
    jmp     .Lret_vm_run
    jmp     .Lendif113
.Lelse112:
    movq    $0, %rax
    jmp     .Lret_vm_run
.Lendif113:
    movq    $0, %rax
.Lret_vm_run:
    leave
    ret

aicfn_run_gradient_tests:
    pushq   %rbp
    movq    %rsp, %rbp
    subq    $144, %rsp

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
    call    aicfn_test_runner_init
    movq    %rax, -96(%rbp)
    movq    $48, %rax
    leaq    1(%rax), %rdi
    movq    $1, %rsi
    call    aic_calloc
    testq   %rax, %rax
    jne     .Lallocok114
    jmp     .Lruntimeerror
.Lallocok114:
    movq    %rax, -8(%rbp)
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    $0, %rax
    pushq   %rax
    movq    $1, %rax
    popq    %rbx
    popq    %rcx
    movq    %rax, (%rcx,%rbx,8)
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    $1, %rax
    pushq   %rax
    movq    $42, %rax
    popq    %rbx
    popq    %rcx
    movq    %rax, (%rcx,%rbx,8)
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    $2, %rax
    pushq   %rax
    movq    $1, %rax
    popq    %rbx
    popq    %rcx
    movq    %rax, (%rcx,%rbx,8)
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    $3, %rax
    pushq   %rax
    movq    $58, %rax
    popq    %rbx
    popq    %rcx
    movq    %rax, (%rcx,%rbx,8)
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    $4, %rax
    pushq   %rax
    movq    $2, %rax
    popq    %rbx
    popq    %rcx
    movq    %rax, (%rcx,%rbx,8)
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    $5, %rax
    pushq   %rax
    movq    $0, %rax
    popq    %rbx
    popq    %rcx
    movq    %rax, (%rcx,%rbx,8)
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    $6, %rax
    pushq   %rax
    popq    %rsi
    popq    %rdi
    call    aicfn_vm_new
    movq    %rax, -104(%rbp)
    movq    -104(%rbp), %rax
    pushq   %rax
    movq    $1000, %rax
    pushq   %rax
    popq    %rsi
    popq    %rdi
    call    aicfn_vm_run
    movq    %rax, -48(%rbp)
    movq    -96(%rbp), %rax
    pushq   %rax
    movq    -48(%rbp), %rax
    pushq   %rax
    movq    $42, %rax
    pushq   %rax
    leaq    aicstr_16(%rip), %rax
    pushq   %rax
    popq    %rcx
    popq    %rdx
    popq    %rsi
    popq    %rdi
    call    aicfn_test_assert_eq
    movq    $96, %rax
    leaq    1(%rax), %rdi
    movq    $1, %rsi
    call    aic_calloc
    testq   %rax, %rax
    jne     .Lallocok115
    jmp     .Lruntimeerror
.Lallocok115:
    movq    %rax, -16(%rbp)
    movq    -16(%rbp), %rax
    pushq   %rax
    movq    $0, %rax
    pushq   %rax
    movq    $1, %rax
    popq    %rbx
    popq    %rcx
    movq    %rax, (%rcx,%rbx,8)
    movq    -16(%rbp), %rax
    pushq   %rax
    movq    $1, %rax
    pushq   %rax
    movq    $100, %rax
    popq    %rbx
    popq    %rcx
    movq    %rax, (%rcx,%rbx,8)
    movq    -16(%rbp), %rax
    pushq   %rax
    movq    $2, %rax
    pushq   %rax
    movq    $1, %rax
    popq    %rbx
    popq    %rcx
    movq    %rax, (%rcx,%rbx,8)
    movq    -16(%rbp), %rax
    pushq   %rax
    movq    $3, %rax
    pushq   %rax
    movq    $40, %rax
    popq    %rbx
    popq    %rcx
    movq    %rax, (%rcx,%rbx,8)
    movq    -16(%rbp), %rax
    pushq   %rax
    movq    $4, %rax
    pushq   %rax
    movq    $4, %rax
    popq    %rbx
    popq    %rcx
    movq    %rax, (%rcx,%rbx,8)
    movq    -16(%rbp), %rax
    pushq   %rax
    movq    $5, %rax
    pushq   %rax
    movq    $1, %rax
    popq    %rbx
    popq    %rcx
    movq    %rax, (%rcx,%rbx,8)
    movq    -16(%rbp), %rax
    pushq   %rax
    movq    $6, %rax
    pushq   %rax
    movq    $3, %rax
    popq    %rbx
    popq    %rcx
    movq    %rax, (%rcx,%rbx,8)
    movq    -16(%rbp), %rax
    pushq   %rax
    movq    $7, %rax
    pushq   %rax
    movq    $5, %rax
    popq    %rbx
    popq    %rcx
    movq    %rax, (%rcx,%rbx,8)
    movq    -16(%rbp), %rax
    pushq   %rax
    movq    $8, %rax
    pushq   %rax
    movq    $1, %rax
    popq    %rbx
    popq    %rcx
    movq    %rax, (%rcx,%rbx,8)
    movq    -16(%rbp), %rax
    pushq   %rax
    movq    $9, %rax
    pushq   %rax
    movq    $2, %rax
    popq    %rbx
    popq    %rcx
    movq    %rax, (%rcx,%rbx,8)
    movq    -16(%rbp), %rax
    pushq   %rax
    movq    $10, %rax
    pushq   %rax
    movq    $6, %rax
    popq    %rbx
    popq    %rcx
    movq    %rax, (%rcx,%rbx,8)
    movq    -16(%rbp), %rax
    pushq   %rax
    movq    $11, %rax
    pushq   %rax
    movq    $0, %rax
    popq    %rbx
    popq    %rcx
    movq    %rax, (%rcx,%rbx,8)
    movq    -16(%rbp), %rax
    pushq   %rax
    movq    $12, %rax
    pushq   %rax
    popq    %rsi
    popq    %rdi
    call    aicfn_vm_new
    movq    %rax, -112(%rbp)
    movq    -112(%rbp), %rax
    pushq   %rax
    movq    $1000, %rax
    pushq   %rax
    popq    %rsi
    popq    %rdi
    call    aicfn_vm_run
    movq    %rax, -64(%rbp)
    movq    -96(%rbp), %rax
    pushq   %rax
    movq    -64(%rbp), %rax
    pushq   %rax
    movq    $90, %rax
    pushq   %rax
    leaq    aicstr_17(%rip), %rax
    pushq   %rax
    popq    %rcx
    popq    %rdx
    popq    %rsi
    popq    %rdi
    call    aicfn_test_assert_eq
    movq    $80, %rax
    leaq    1(%rax), %rdi
    movq    $1, %rsi
    call    aic_calloc
    testq   %rax, %rax
    jne     .Lallocok116
    jmp     .Lruntimeerror
.Lallocok116:
    movq    %rax, -24(%rbp)
    movq    -24(%rbp), %rax
    pushq   %rax
    movq    $0, %rax
    pushq   %rax
    movq    $1, %rax
    popq    %rbx
    popq    %rcx
    movq    %rax, (%rcx,%rbx,8)
    movq    -24(%rbp), %rax
    pushq   %rax
    movq    $1, %rax
    pushq   %rax
    movq    $777, %rax
    popq    %rbx
    popq    %rcx
    movq    %rax, (%rcx,%rbx,8)
    movq    -24(%rbp), %rax
    pushq   %rax
    movq    $2, %rax
    pushq   %rax
    movq    $8, %rax
    popq    %rbx
    popq    %rcx
    movq    %rax, (%rcx,%rbx,8)
    movq    -24(%rbp), %rax
    pushq   %rax
    movq    $3, %rax
    pushq   %rax
    movq    $3, %rax
    popq    %rbx
    popq    %rcx
    movq    %rax, (%rcx,%rbx,8)
    movq    -24(%rbp), %rax
    pushq   %rax
    movq    $4, %rax
    pushq   %rax
    movq    $1, %rax
    popq    %rbx
    popq    %rcx
    movq    %rax, (%rcx,%rbx,8)
    movq    -24(%rbp), %rax
    pushq   %rax
    movq    $5, %rax
    pushq   %rax
    movq    $23, %rax
    popq    %rbx
    popq    %rcx
    movq    %rax, (%rcx,%rbx,8)
    movq    -24(%rbp), %rax
    pushq   %rax
    movq    $6, %rax
    pushq   %rax
    movq    $9, %rax
    popq    %rbx
    popq    %rcx
    movq    %rax, (%rcx,%rbx,8)
    movq    -24(%rbp), %rax
    pushq   %rax
    movq    $7, %rax
    pushq   %rax
    movq    $3, %rax
    popq    %rbx
    popq    %rcx
    movq    %rax, (%rcx,%rbx,8)
    movq    -24(%rbp), %rax
    pushq   %rax
    movq    $8, %rax
    pushq   %rax
    movq    $3, %rax
    popq    %rbx
    popq    %rcx
    movq    %rax, (%rcx,%rbx,8)
    movq    -24(%rbp), %rax
    pushq   %rax
    movq    $9, %rax
    pushq   %rax
    movq    $0, %rax
    popq    %rbx
    popq    %rcx
    movq    %rax, (%rcx,%rbx,8)
    movq    -24(%rbp), %rax
    pushq   %rax
    movq    $10, %rax
    pushq   %rax
    popq    %rsi
    popq    %rdi
    call    aicfn_vm_new
    movq    %rax, -120(%rbp)
    movq    -120(%rbp), %rax
    pushq   %rax
    movq    $1000, %rax
    pushq   %rax
    popq    %rsi
    popq    %rdi
    call    aicfn_vm_run
    movq    %rax, -72(%rbp)
    movq    -96(%rbp), %rax
    pushq   %rax
    movq    -72(%rbp), %rax
    pushq   %rax
    movq    $800, %rax
    pushq   %rax
    leaq    aicstr_18(%rip), %rax
    pushq   %rax
    popq    %rcx
    popq    %rdx
    popq    %rsi
    popq    %rdi
    call    aicfn_test_assert_eq
    movq    $272, %rax
    leaq    1(%rax), %rdi
    movq    $1, %rsi
    call    aic_calloc
    testq   %rax, %rax
    jne     .Lallocok117
    jmp     .Lruntimeerror
.Lallocok117:
    movq    %rax, -32(%rbp)
    movq    -32(%rbp), %rax
    pushq   %rax
    movq    $0, %rax
    pushq   %rax
    movq    $1, %rax
    popq    %rbx
    popq    %rcx
    movq    %rax, (%rcx,%rbx,8)
    movq    -32(%rbp), %rax
    pushq   %rax
    movq    $1, %rax
    pushq   %rax
    movq    $5, %rax
    popq    %rbx
    popq    %rcx
    movq    %rax, (%rcx,%rbx,8)
    movq    -32(%rbp), %rax
    pushq   %rax
    movq    $2, %rax
    pushq   %rax
    movq    $8, %rax
    popq    %rbx
    popq    %rcx
    movq    %rax, (%rcx,%rbx,8)
    movq    -32(%rbp), %rax
    pushq   %rax
    movq    $3, %rax
    pushq   %rax
    movq    $0, %rax
    popq    %rbx
    popq    %rcx
    movq    %rax, (%rcx,%rbx,8)
    movq    -32(%rbp), %rax
    pushq   %rax
    movq    $4, %rax
    pushq   %rax
    movq    $1, %rax
    popq    %rbx
    popq    %rcx
    movq    %rax, (%rcx,%rbx,8)
    movq    -32(%rbp), %rax
    pushq   %rax
    movq    $5, %rax
    pushq   %rax
    movq    $1, %rax
    popq    %rbx
    popq    %rcx
    movq    %rax, (%rcx,%rbx,8)
    movq    -32(%rbp), %rax
    pushq   %rax
    movq    $6, %rax
    pushq   %rax
    movq    $8, %rax
    popq    %rbx
    popq    %rcx
    movq    %rax, (%rcx,%rbx,8)
    movq    -32(%rbp), %rax
    pushq   %rax
    movq    $7, %rax
    pushq   %rax
    movq    $1, %rax
    popq    %rbx
    popq    %rcx
    movq    %rax, (%rcx,%rbx,8)
    movq    -32(%rbp), %rax
    pushq   %rax
    movq    $8, %rax
    pushq   %rax
    movq    $9, %rax
    popq    %rbx
    popq    %rcx
    movq    %rax, (%rcx,%rbx,8)
    movq    -32(%rbp), %rax
    pushq   %rax
    movq    $9, %rax
    pushq   %rax
    movq    $0, %rax
    popq    %rbx
    popq    %rcx
    movq    %rax, (%rcx,%rbx,8)
    movq    -32(%rbp), %rax
    pushq   %rax
    movq    $10, %rax
    pushq   %rax
    movq    $1, %rax
    popq    %rbx
    popq    %rcx
    movq    %rax, (%rcx,%rbx,8)
    movq    -32(%rbp), %rax
    pushq   %rax
    movq    $11, %rax
    pushq   %rax
    movq    $1, %rax
    popq    %rbx
    popq    %rcx
    movq    %rax, (%rcx,%rbx,8)
    movq    -32(%rbp), %rax
    pushq   %rax
    movq    $12, %rax
    pushq   %rax
    movq    $7, %rax
    popq    %rbx
    popq    %rcx
    movq    %rax, (%rcx,%rbx,8)
    movq    -32(%rbp), %rax
    pushq   %rax
    movq    $13, %rax
    pushq   %rax
    movq    $12, %rax
    popq    %rbx
    popq    %rcx
    movq    %rax, (%rcx,%rbx,8)
    movq    -32(%rbp), %rax
    pushq   %rax
    movq    $14, %rax
    pushq   %rax
    movq    $31, %rax
    popq    %rbx
    popq    %rcx
    movq    %rax, (%rcx,%rbx,8)
    movq    -32(%rbp), %rax
    pushq   %rax
    movq    $15, %rax
    pushq   %rax
    movq    $9, %rax
    popq    %rbx
    popq    %rcx
    movq    %rax, (%rcx,%rbx,8)
    movq    -32(%rbp), %rax
    pushq   %rax
    movq    $16, %rax
    pushq   %rax
    movq    $1, %rax
    popq    %rbx
    popq    %rcx
    movq    %rax, (%rcx,%rbx,8)
    movq    -32(%rbp), %rax
    pushq   %rax
    movq    $17, %rax
    pushq   %rax
    movq    $9, %rax
    popq    %rbx
    popq    %rcx
    movq    %rax, (%rcx,%rbx,8)
    movq    -32(%rbp), %rax
    pushq   %rax
    movq    $18, %rax
    pushq   %rax
    movq    $0, %rax
    popq    %rbx
    popq    %rcx
    movq    %rax, (%rcx,%rbx,8)
    movq    -32(%rbp), %rax
    pushq   %rax
    movq    $19, %rax
    pushq   %rax
    movq    $5, %rax
    popq    %rbx
    popq    %rcx
    movq    %rax, (%rcx,%rbx,8)
    movq    -32(%rbp), %rax
    pushq   %rax
    movq    $20, %rax
    pushq   %rax
    movq    $8, %rax
    popq    %rbx
    popq    %rcx
    movq    %rax, (%rcx,%rbx,8)
    movq    -32(%rbp), %rax
    pushq   %rax
    movq    $21, %rax
    pushq   %rax
    movq    $1, %rax
    popq    %rbx
    popq    %rcx
    movq    %rax, (%rcx,%rbx,8)
    movq    -32(%rbp), %rax
    pushq   %rax
    movq    $22, %rax
    pushq   %rax
    movq    $9, %rax
    popq    %rbx
    popq    %rcx
    movq    %rax, (%rcx,%rbx,8)
    movq    -32(%rbp), %rax
    pushq   %rax
    movq    $23, %rax
    pushq   %rax
    movq    $0, %rax
    popq    %rbx
    popq    %rcx
    movq    %rax, (%rcx,%rbx,8)
    movq    -32(%rbp), %rax
    pushq   %rax
    movq    $24, %rax
    pushq   %rax
    movq    $1, %rax
    popq    %rbx
    popq    %rcx
    movq    %rax, (%rcx,%rbx,8)
    movq    -32(%rbp), %rax
    pushq   %rax
    movq    $25, %rax
    pushq   %rax
    movq    $1, %rax
    popq    %rbx
    popq    %rcx
    movq    %rax, (%rcx,%rbx,8)
    movq    -32(%rbp), %rax
    pushq   %rax
    movq    $26, %rax
    pushq   %rax
    movq    $4, %rax
    popq    %rbx
    popq    %rcx
    movq    %rax, (%rcx,%rbx,8)
    movq    -32(%rbp), %rax
    pushq   %rax
    movq    $27, %rax
    pushq   %rax
    movq    $8, %rax
    popq    %rbx
    popq    %rcx
    movq    %rax, (%rcx,%rbx,8)
    movq    -32(%rbp), %rax
    pushq   %rax
    movq    $28, %rax
    pushq   %rax
    movq    $0, %rax
    popq    %rbx
    popq    %rcx
    movq    %rax, (%rcx,%rbx,8)
    movq    -32(%rbp), %rax
    pushq   %rax
    movq    $29, %rax
    pushq   %rax
    movq    $10, %rax
    popq    %rbx
    popq    %rcx
    movq    %rax, (%rcx,%rbx,8)
    movq    -32(%rbp), %rax
    pushq   %rax
    movq    $30, %rax
    pushq   %rax
    movq    $8, %rax
    popq    %rbx
    popq    %rcx
    movq    %rax, (%rcx,%rbx,8)
    movq    -32(%rbp), %rax
    pushq   %rax
    movq    $31, %rax
    pushq   %rax
    movq    $9, %rax
    popq    %rbx
    popq    %rcx
    movq    %rax, (%rcx,%rbx,8)
    movq    -32(%rbp), %rax
    pushq   %rax
    movq    $32, %rax
    pushq   %rax
    movq    $1, %rax
    popq    %rbx
    popq    %rcx
    movq    %rax, (%rcx,%rbx,8)
    movq    -32(%rbp), %rax
    pushq   %rax
    movq    $33, %rax
    pushq   %rax
    movq    $0, %rax
    popq    %rbx
    popq    %rcx
    movq    %rax, (%rcx,%rbx,8)
    movq    -32(%rbp), %rax
    pushq   %rax
    movq    $34, %rax
    pushq   %rax
    popq    %rsi
    popq    %rdi
    call    aicfn_vm_new
    movq    %rax, -128(%rbp)
    movq    -128(%rbp), %rax
    pushq   %rax
    movq    $10000, %rax
    pushq   %rax
    popq    %rsi
    popq    %rdi
    call    aicfn_vm_run
    movq    %rax, -80(%rbp)
    movq    -128(%rbp), %rax
    movq    56(%rax), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    movq    (%rax,%rbx,8), %rax
    movq    %rax, -56(%rbp)
    movq    -96(%rbp), %rax
    pushq   %rax
    movq    -56(%rbp), %rax
    pushq   %rax
    movq    $120, %rax
    pushq   %rax
    leaq    aicstr_19(%rip), %rax
    pushq   %rax
    popq    %rcx
    popq    %rdx
    popq    %rsi
    popq    %rdi
    call    aicfn_test_assert_eq
    movq    -96(%rbp), %rax
    pushq   %rax
    movq    -80(%rbp), %rax
    pushq   %rax
    movq    $120, %rax
    pushq   %rax
    leaq    aicstr_20(%rip), %rax
    pushq   %rax
    popq    %rcx
    popq    %rdx
    popq    %rsi
    popq    %rdi
    call    aicfn_test_assert_eq
    movq    $120, %rax
    leaq    1(%rax), %rdi
    movq    $1, %rsi
    call    aic_calloc
    testq   %rax, %rax
    jne     .Lallocok118
    jmp     .Lruntimeerror
.Lallocok118:
    movq    %rax, -40(%rbp)
    movq    -40(%rbp), %rax
    pushq   %rax
    movq    $0, %rax
    pushq   %rax
    movq    $1, %rax
    popq    %rbx
    popq    %rcx
    movq    %rax, (%rcx,%rbx,8)
    movq    -40(%rbp), %rax
    pushq   %rax
    movq    $1, %rax
    pushq   %rax
    movq    $15, %rax
    popq    %rbx
    popq    %rcx
    movq    %rax, (%rcx,%rbx,8)
    movq    -40(%rbp), %rax
    pushq   %rax
    movq    $2, %rax
    pushq   %rax
    movq    $13, %rax
    popq    %rbx
    popq    %rcx
    movq    %rax, (%rcx,%rbx,8)
    movq    -40(%rbp), %rax
    pushq   %rax
    movq    $3, %rax
    pushq   %rax
    movq    $7, %rax
    popq    %rbx
    popq    %rcx
    movq    %rax, (%rcx,%rbx,8)
    movq    -40(%rbp), %rax
    pushq   %rax
    movq    $4, %rax
    pushq   %rax
    movq    $0, %rax
    popq    %rbx
    popq    %rcx
    movq    %rax, (%rcx,%rbx,8)
    movq    -40(%rbp), %rax
    pushq   %rax
    movq    $5, %rax
    pushq   %rax
    movq    $0, %rax
    popq    %rbx
    popq    %rcx
    movq    %rax, (%rcx,%rbx,8)
    movq    -40(%rbp), %rax
    pushq   %rax
    movq    $6, %rax
    pushq   %rax
    movq    $0, %rax
    popq    %rbx
    popq    %rcx
    movq    %rax, (%rcx,%rbx,8)
    movq    -40(%rbp), %rax
    pushq   %rax
    movq    $7, %rax
    pushq   %rax
    movq    $8, %rax
    popq    %rbx
    popq    %rcx
    movq    %rax, (%rcx,%rbx,8)
    movq    -40(%rbp), %rax
    pushq   %rax
    movq    $8, %rax
    pushq   %rax
    movq    $0, %rax
    popq    %rbx
    popq    %rcx
    movq    %rax, (%rcx,%rbx,8)
    movq    -40(%rbp), %rax
    pushq   %rax
    movq    $9, %rax
    pushq   %rax
    movq    $9, %rax
    popq    %rbx
    popq    %rcx
    movq    %rax, (%rcx,%rbx,8)
    movq    -40(%rbp), %rax
    pushq   %rax
    movq    $10, %rax
    pushq   %rax
    movq    $0, %rax
    popq    %rbx
    popq    %rcx
    movq    %rax, (%rcx,%rbx,8)
    movq    -40(%rbp), %rax
    pushq   %rax
    movq    $11, %rax
    pushq   %rax
    movq    $9, %rax
    popq    %rbx
    popq    %rcx
    movq    %rax, (%rcx,%rbx,8)
    movq    -40(%rbp), %rax
    pushq   %rax
    movq    $12, %rax
    pushq   %rax
    movq    $0, %rax
    popq    %rbx
    popq    %rcx
    movq    %rax, (%rcx,%rbx,8)
    movq    -40(%rbp), %rax
    pushq   %rax
    movq    $13, %rax
    pushq   %rax
    movq    $5, %rax
    popq    %rbx
    popq    %rcx
    movq    %rax, (%rcx,%rbx,8)
    movq    -40(%rbp), %rax
    pushq   %rax
    movq    $14, %rax
    pushq   %rax
    movq    $14, %rax
    popq    %rbx
    popq    %rcx
    movq    %rax, (%rcx,%rbx,8)
    movq    -40(%rbp), %rax
    pushq   %rax
    movq    $15, %rax
    pushq   %rax
    popq    %rsi
    popq    %rdi
    call    aicfn_vm_new
    movq    %rax, -136(%rbp)
    movq    -136(%rbp), %rax
    pushq   %rax
    movq    $1000, %rax
    pushq   %rax
    popq    %rsi
    popq    %rdi
    call    aicfn_vm_run
    movq    %rax, -88(%rbp)
    movq    -96(%rbp), %rax
    pushq   %rax
    movq    -88(%rbp), %rax
    pushq   %rax
    movq    $225, %rax
    pushq   %rax
    leaq    aicstr_21(%rip), %rax
    pushq   %rax
    popq    %rcx
    popq    %rdx
    popq    %rsi
    popq    %rdi
    call    aicfn_test_assert_eq
    movq    -96(%rbp), %rax
    pushq   %rax
    popq    %rdi
    call    aicfn_test_summary
    movq    $0, %rax
    jmp     .Lret_run_gradient_tests
    movq    $0, %rax
.Lret_run_gradient_tests:
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
