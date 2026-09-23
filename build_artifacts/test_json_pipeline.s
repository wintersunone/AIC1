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
    .string "12345"
aicstr_1:
    .string "json_parse '12345' tag is INT"
aicstr_2:
    .string "json_parse '12345' value is 12345"
aicstr_3:
    .string "json_stringify int matches"
aicstr_4:
    .string "-999"
aicstr_5:
    .string "json_parse '-999' value is -999"
aicstr_6:
    .string "true"
aicstr_7:
    .string "json_parse 'true' tag is BOOL"
aicstr_8:
    .string "json_parse 'true' value is 1"
aicstr_9:
    .string "false"
aicstr_10:
    .string "json_parse 'false' value is 0"
aicstr_11:
    .string "null"
aicstr_12:
    .string "json_parse 'null' tag is NULL"
aicstr_13:
    .string "Hello AI!"
aicstr_14:
    .string "json_parse string tag is STR"
aicstr_15:
    .string "json_parse string value"
aicstr_16:
    .string "[10, 20, 30, 40]"
aicstr_17:
    .string "json_parse array tag is ARR"
aicstr_18:
    .string "json_parse array length is 4"
aicstr_19:
    .string "array elem 0 is 10"
aicstr_20:
    .string "array elem 2 is 30"
aicstr_21:
    .string "compiler"
aicstr_22:
    .string "AIC"
aicstr_23:
    .string "stage"
aicstr_24:
    .string "self_hosted"
aicstr_25:
    .string "json_parse object tag is OBJ"
aicstr_26:
    .string "obj contains 'compiler'"
aicstr_27:
    .string "obj contains 'stage'"
aicstr_28:
    .string "compiler field is 'AIC'"
aicstr_29:
    .string "stage field is 15"
aicstr_30:
    .string "reparsed array length matches"
aicstr_31:
    .string ""
aicstr_32:
    .string "["
aicstr_33:
    .string ", "
aicstr_34:
    .string "]"
aicstr_35:
    .string "{"
aicstr_36:
    .string ": "
aicstr_37:
    .string "}"
aicstr_38:
    .string "  [PASS] "
aicstr_39:
    .string "\n"
aicstr_40:
    .string "  [FAIL] "
aicstr_41:
    .string " (expected "
aicstr_42:
    .string ", got "
aicstr_43:
    .string ")\n"
aicstr_44:
    .string " (expected '"
aicstr_45:
    .string "', got '"
aicstr_46:
    .string "')\n"
aicstr_47:
    .string "==================================================\n"
aicstr_48:
    .string "Test Results: "
aicstr_49:
    .string "/"
aicstr_50:
    .string " passed"
aicstr_51:
    .string " ("
aicstr_52:
    .string " FAILED)\n"
aicstr_53:
    .string " (ALL PASSED)\n"
runtimeerr_msg:
    .string "[ERR :code 501 :kind RUNTIME :msg IO_OR_ALLOC_FAILED]\n"
runtimeerr_msg_end:
    .equ runtimeerr_len, runtimeerr_msg_end - runtimeerr_msg - 1


    .text
    .globl aic_main
aic_main:
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
    movq    $0, -144(%rbp)
    call    aicfn_test_runner_init
    movq    %rax, -128(%rbp)
    leaq    aicstr_0(%rip), %rax
    pushq   %rax
    popq    %rdi
    call    aicfn_json_parse
    movq    %rax, -64(%rbp)
    movq    -128(%rbp), %rax
    pushq   %rax
    movq    -64(%rbp), %rax
    pushq   %rax
    popq    %rdi
    call    aicfn_json_tag
    pushq   %rax
    movq    $2, %rax
    pushq   %rax
    leaq    aicstr_1(%rip), %rax
    pushq   %rax
    popq    %rcx
    popq    %rdx
    popq    %rsi
    popq    %rdi
    call    aicfn_test_assert_eq
    movq    -128(%rbp), %rax
    pushq   %rax
    movq    -64(%rbp), %rax
    pushq   %rax
    popq    %rdi
    call    aicfn_json_get_int
    pushq   %rax
    movq    $12345, %rax
    pushq   %rax
    leaq    aicstr_2(%rip), %rax
    pushq   %rax
    popq    %rcx
    popq    %rdx
    popq    %rsi
    popq    %rdi
    call    aicfn_test_assert_eq
    movq    -64(%rbp), %rax
    pushq   %rax
    popq    %rdi
    call    aicfn_json_stringify
    movq    %rax, -72(%rbp)
    movq    -128(%rbp), %rax
    pushq   %rax
    movq    -72(%rbp), %rax
    pushq   %rax
    leaq    aicstr_0(%rip), %rax
    pushq   %rax
    leaq    aicstr_3(%rip), %rax
    pushq   %rax
    popq    %rcx
    popq    %rdx
    popq    %rsi
    popq    %rdi
    call    aicfn_test_assert_str_eq
    leaq    aicstr_4(%rip), %rax
    pushq   %rax
    popq    %rdi
    call    aicfn_json_parse
    movq    %rax, -48(%rbp)
    movq    -128(%rbp), %rax
    pushq   %rax
    movq    -48(%rbp), %rax
    pushq   %rax
    popq    %rdi
    call    aicfn_json_get_int
    pushq   %rax
    movq    $-999, %rax
    pushq   %rax
    leaq    aicstr_5(%rip), %rax
    pushq   %rax
    popq    %rcx
    popq    %rdx
    popq    %rsi
    popq    %rdi
    call    aicfn_test_assert_eq
    leaq    aicstr_6(%rip), %rax
    pushq   %rax
    popq    %rdi
    call    aicfn_json_parse
    movq    %rax, -96(%rbp)
    movq    -128(%rbp), %rax
    pushq   %rax
    movq    -96(%rbp), %rax
    pushq   %rax
    popq    %rdi
    call    aicfn_json_tag
    pushq   %rax
    movq    $1, %rax
    pushq   %rax
    leaq    aicstr_7(%rip), %rax
    pushq   %rax
    popq    %rcx
    popq    %rdx
    popq    %rsi
    popq    %rdi
    call    aicfn_test_assert_eq
    movq    -128(%rbp), %rax
    pushq   %rax
    movq    -96(%rbp), %rax
    pushq   %rax
    popq    %rdi
    call    aicfn_json_get_int
    pushq   %rax
    movq    $1, %rax
    pushq   %rax
    leaq    aicstr_8(%rip), %rax
    pushq   %rax
    popq    %rcx
    popq    %rdx
    popq    %rsi
    popq    %rdi
    call    aicfn_test_assert_eq
    leaq    aicstr_9(%rip), %rax
    pushq   %rax
    popq    %rdi
    call    aicfn_json_parse
    movq    %rax, -40(%rbp)
    movq    -128(%rbp), %rax
    pushq   %rax
    movq    -40(%rbp), %rax
    pushq   %rax
    popq    %rdi
    call    aicfn_json_get_int
    pushq   %rax
    movq    $0, %rax
    pushq   %rax
    leaq    aicstr_10(%rip), %rax
    pushq   %rax
    popq    %rcx
    popq    %rdx
    popq    %rsi
    popq    %rdi
    call    aicfn_test_assert_eq
    leaq    aicstr_11(%rip), %rax
    pushq   %rax
    popq    %rdi
    call    aicfn_json_parse
    movq    %rax, -56(%rbp)
    movq    -128(%rbp), %rax
    pushq   %rax
    movq    -56(%rbp), %rax
    pushq   %rax
    popq    %rdi
    call    aicfn_json_tag
    pushq   %rax
    movq    $0, %rax
    pushq   %rax
    leaq    aicstr_12(%rip), %rax
    pushq   %rax
    popq    %rcx
    popq    %rdx
    popq    %rsi
    popq    %rdi
    call    aicfn_test_assert_eq
    leaq    aicstr_13(%rip), %rax
    pushq   %rax
    popq    %rdi
    call    aicfn_json_wrap_str
    pushq   %rax
    popq    %rdi
    call    aicfn_json_parse
    movq    %rax, -88(%rbp)
    movq    -128(%rbp), %rax
    pushq   %rax
    movq    -88(%rbp), %rax
    pushq   %rax
    popq    %rdi
    call    aicfn_json_tag
    pushq   %rax
    movq    $3, %rax
    pushq   %rax
    leaq    aicstr_14(%rip), %rax
    pushq   %rax
    popq    %rcx
    popq    %rdx
    popq    %rsi
    popq    %rdi
    call    aicfn_test_assert_eq
    movq    -128(%rbp), %rax
    pushq   %rax
    movq    -88(%rbp), %rax
    pushq   %rax
    popq    %rdi
    call    aicfn_json_get_str
    pushq   %rax
    leaq    aicstr_13(%rip), %rax
    pushq   %rax
    leaq    aicstr_15(%rip), %rax
    pushq   %rax
    popq    %rcx
    popq    %rdx
    popq    %rsi
    popq    %rdi
    call    aicfn_test_assert_str_eq
    leaq    aicstr_16(%rip), %rax
    pushq   %rax
    popq    %rdi
    call    aicfn_json_parse
    movq    %rax, -24(%rbp)
    movq    -128(%rbp), %rax
    pushq   %rax
    movq    -24(%rbp), %rax
    pushq   %rax
    popq    %rdi
    call    aicfn_json_tag
    pushq   %rax
    movq    $4, %rax
    pushq   %rax
    leaq    aicstr_17(%rip), %rax
    pushq   %rax
    popq    %rcx
    popq    %rdx
    popq    %rsi
    popq    %rdi
    call    aicfn_test_assert_eq
    movq    -128(%rbp), %rax
    pushq   %rax
    movq    -24(%rbp), %rax
    pushq   %rax
    popq    %rdi
    call    aicfn_json_arr_len
    pushq   %rax
    movq    $4, %rax
    pushq   %rax
    leaq    aicstr_18(%rip), %rax
    pushq   %rax
    popq    %rcx
    popq    %rdx
    popq    %rsi
    popq    %rdi
    call    aicfn_test_assert_eq
    movq    -24(%rbp), %rax
    pushq   %rax
    movq    $0, %rax
    pushq   %rax
    popq    %rsi
    popq    %rdi
    call    aicfn_json_arr_get
    movq    %rax, -8(%rbp)
    movq    -24(%rbp), %rax
    pushq   %rax
    movq    $2, %rax
    pushq   %rax
    popq    %rsi
    popq    %rdi
    call    aicfn_json_arr_get
    movq    %rax, -16(%rbp)
    movq    -128(%rbp), %rax
    pushq   %rax
    movq    -8(%rbp), %rax
    pushq   %rax
    popq    %rdi
    call    aicfn_json_get_int
    pushq   %rax
    movq    $10, %rax
    pushq   %rax
    leaq    aicstr_19(%rip), %rax
    pushq   %rax
    popq    %rcx
    popq    %rdx
    popq    %rsi
    popq    %rdi
    call    aicfn_test_assert_eq
    movq    -128(%rbp), %rax
    pushq   %rax
    movq    -16(%rbp), %rax
    pushq   %rax
    popq    %rdi
    call    aicfn_json_get_int
    pushq   %rax
    movq    $30, %rax
    pushq   %rax
    leaq    aicstr_20(%rip), %rax
    pushq   %rax
    popq    %rcx
    popq    %rdx
    popq    %rsi
    popq    %rdi
    call    aicfn_test_assert_eq
    call    aicfn_json_obj
    movq    %rax, -112(%rbp)
    movq    -112(%rbp), %rax
    pushq   %rax
    leaq    aicstr_21(%rip), %rax
    pushq   %rax
    leaq    aicstr_22(%rip), %rax
    pushq   %rax
    popq    %rdi
    call    aicfn_json_str
    pushq   %rax
    popq    %rdx
    popq    %rsi
    popq    %rdi
    call    aicfn_json_obj_set
    movq    -112(%rbp), %rax
    pushq   %rax
    leaq    aicstr_23(%rip), %rax
    pushq   %rax
    movq    $15, %rax
    pushq   %rax
    popq    %rdi
    call    aicfn_json_int
    pushq   %rax
    popq    %rdx
    popq    %rsi
    popq    %rdi
    call    aicfn_json_obj_set
    movq    -112(%rbp), %rax
    pushq   %rax
    leaq    aicstr_24(%rip), %rax
    pushq   %rax
    movq    $1, %rax
    pushq   %rax
    popq    %rdi
    call    aicfn_json_bool
    pushq   %rax
    popq    %rdx
    popq    %rsi
    popq    %rdi
    call    aicfn_json_obj_set
    movq    -112(%rbp), %rax
    pushq   %rax
    popq    %rdi
    call    aicfn_json_stringify
    movq    %rax, -104(%rbp)
    movq    -104(%rbp), %rax
    pushq   %rax
    popq    %rdi
    call    aicfn_json_parse
    movq    %rax, -80(%rbp)
    movq    -128(%rbp), %rax
    pushq   %rax
    movq    -80(%rbp), %rax
    pushq   %rax
    popq    %rdi
    call    aicfn_json_tag
    pushq   %rax
    movq    $5, %rax
    pushq   %rax
    leaq    aicstr_25(%rip), %rax
    pushq   %rax
    popq    %rcx
    popq    %rdx
    popq    %rsi
    popq    %rdi
    call    aicfn_test_assert_eq
    movq    -128(%rbp), %rax
    pushq   %rax
    movq    -80(%rbp), %rax
    pushq   %rax
    leaq    aicstr_21(%rip), %rax
    pushq   %rax
    popq    %rsi
    popq    %rdi
    call    aicfn_json_obj_contains
    pushq   %rax
    leaq    aicstr_26(%rip), %rax
    pushq   %rax
    popq    %rdx
    popq    %rsi
    popq    %rdi
    call    aicfn_test_assert_true
    movq    -128(%rbp), %rax
    pushq   %rax
    movq    -80(%rbp), %rax
    pushq   %rax
    leaq    aicstr_23(%rip), %rax
    pushq   %rax
    popq    %rsi
    popq    %rdi
    call    aicfn_json_obj_contains
    pushq   %rax
    leaq    aicstr_27(%rip), %rax
    pushq   %rax
    popq    %rdx
    popq    %rsi
    popq    %rdi
    call    aicfn_test_assert_true
    movq    -80(%rbp), %rax
    pushq   %rax
    leaq    aicstr_21(%rip), %rax
    pushq   %rax
    popq    %rsi
    popq    %rdi
    call    aicfn_json_obj_get
    movq    %rax, -136(%rbp)
    movq    -128(%rbp), %rax
    pushq   %rax
    movq    -136(%rbp), %rax
    pushq   %rax
    popq    %rdi
    call    aicfn_json_get_str
    pushq   %rax
    leaq    aicstr_22(%rip), %rax
    pushq   %rax
    leaq    aicstr_28(%rip), %rax
    pushq   %rax
    popq    %rcx
    popq    %rdx
    popq    %rsi
    popq    %rdi
    call    aicfn_test_assert_str_eq
    movq    -80(%rbp), %rax
    pushq   %rax
    leaq    aicstr_23(%rip), %rax
    pushq   %rax
    popq    %rsi
    popq    %rdi
    call    aicfn_json_obj_get
    movq    %rax, -144(%rbp)
    movq    -128(%rbp), %rax
    pushq   %rax
    movq    -144(%rbp), %rax
    pushq   %rax
    popq    %rdi
    call    aicfn_json_get_int
    pushq   %rax
    movq    $15, %rax
    pushq   %rax
    leaq    aicstr_29(%rip), %rax
    pushq   %rax
    popq    %rcx
    popq    %rdx
    popq    %rsi
    popq    %rdi
    call    aicfn_test_assert_eq
    movq    -24(%rbp), %rax
    pushq   %rax
    popq    %rdi
    call    aicfn_json_stringify
    movq    %rax, -120(%rbp)
    movq    -120(%rbp), %rax
    pushq   %rax
    popq    %rdi
    call    aicfn_json_parse
    movq    %rax, -32(%rbp)
    movq    -128(%rbp), %rax
    pushq   %rax
    movq    -32(%rbp), %rax
    pushq   %rax
    popq    %rdi
    call    aicfn_json_arr_len
    pushq   %rax
    movq    $4, %rax
    pushq   %rax
    leaq    aicstr_30(%rip), %rax
    pushq   %rax
    popq    %rcx
    popq    %rdx
    popq    %rsi
    popq    %rdi
    call    aicfn_test_assert_eq
    movq    -128(%rbp), %rax
    pushq   %rax
    popq    %rdi
    call    aicfn_test_summary
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
    je      .Lternelse54
    movq    $4, %rax
    jmp     .Lternend55
.Lternelse54:
    movq    -8(%rbp), %rax
.Lternend55:
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
    jne     .Lallocok56
    jmp     .Lruntimeerror
.Lallocok56:
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
    jne     .Lallocok57
    jmp     .Lruntimeerror
.Lallocok57:
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
    jne      .Lscshort60
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
    jmp     .Lscend61
.Lscshort60:
    movq    $1, %rax
.Lscend61:
    testq   %rax, %rax
    je      .Lelse58
    movq    $0, %rax
    jmp     .Lret_vec_get
    jmp     .Lendif59
.Lelse58:
.Lendif59:
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
    jne      .Lscshort64
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
    jmp     .Lscend65
.Lscshort64:
    movq    $1, %rax
.Lscend65:
    testq   %rax, %rax
    je      .Lelse62
    movq    $0, %rax
    jmp     .Lret_vec_set
    jmp     .Lendif63
.Lelse62:
.Lendif63:
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
    je      .Lelse66
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
    jne     .Lallocok68
    jmp     .Lruntimeerror
.Lallocok68:
    movq    %rax, -64(%rbp)
    movq    $0, -40(%rbp)
.Lmaptop69:
    movq    -40(%rbp), %rax
    pushq   %rax
    movq    -48(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    jge     .Lmapend70
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
    jmp     .Lmaptop69
.Lmapend70:
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
    jmp     .Lendif67
.Lelse66:
.Lendif67:
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
    je      .Lelse71
    movq    $0, %rax
    jmp     .Lret_vec_pop
    jmp     .Lendif72
.Lelse71:
.Lendif72:
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
    jne      .Lscshort75
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
    jmp     .Lscend76
.Lscshort75:
    movq    $1, %rax
.Lscend76:
    testq   %rax, %rax
    je      .Lelse73
    leaq    aicstr_31(%rip), %rax
    jmp     .Lret_vec_get_ptr
    jmp     .Lendif74
.Lelse73:
.Lendif74:
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
    jne      .Lscshort79
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
    jmp     .Lscend80
.Lscshort79:
    movq    $1, %rax
.Lscend80:
    testq   %rax, %rax
    je      .Lelse77
    movq    $0, %rax
    jmp     .Lret_vec_set_ptr
    jmp     .Lendif78
.Lelse77:
.Lendif78:
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
    je      .Lelse81
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
    jne     .Lallocok83
    jmp     .Lruntimeerror
.Lallocok83:
    movq    %rax, -64(%rbp)
    movq    $0, -40(%rbp)
.Lmaptop84:
    movq    -40(%rbp), %rax
    pushq   %rax
    movq    -48(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    jge     .Lmapend85
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
    jmp     .Lmaptop84
.Lmapend85:
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
    jmp     .Lendif82
.Lelse81:
.Lendif82:
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
    je      .Lelse86
    leaq    aicstr_31(%rip), %rax
    jmp     .Lret_vec_pop_ptr
    jmp     .Lendif87
.Lelse86:
.Lendif87:
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
.Lmaptop88:
    movq    -32(%rbp), %rax
    pushq   %rax
    movq    -40(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    jge     .Lmapend89
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
    jmp     .Lmaptop88
.Lmapend89:
    movq    -24(%rbp), %rax
    pushq   %rax
    movq    $0, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    setl    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse90
    movq    $0, %rax
    pushq   %rax
    movq    -24(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    subq    %rbx, %rax
    movq    %rax, -24(%rbp)
    jmp     .Lendif91
.Lelse90:
.Lendif91:
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
    je      .Lternelse92
    movq    $16, %rax
    jmp     .Lternend93
.Lternelse92:
    movq    -8(%rbp), %rax
.Lternend93:
    movq    %rax, -16(%rbp)
    movq    $16, %rax
    movq    %rax, -40(%rbp)
.Lwtop94:
    movq    -40(%rbp), %rax
    pushq   %rax
    movq    -16(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    setl    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lwend95
    movq    -40(%rbp), %rax
    pushq   %rax
    movq    $2, %rax
    movq    %rax, %rbx
    popq    %rax
    imulq   %rbx, %rax
    movq    %rax, -40(%rbp)
    jmp     .Lwtop94
.Lwend95:
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
    jne     .Lallocok96
    jmp     .Lruntimeerror
.Lallocok96:
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
    jne     .Lallocok97
    jmp     .Lruntimeerror
.Lallocok97:
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
    jne     .Lallocok98
    jmp     .Lruntimeerror
.Lallocok98:
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
.Lwtop99:
    movq    -32(%rbp), %rax
    pushq   %rax
    movq    $0, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lscshort101
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
    jmp     .Lscend102
.Lscshort101:
    movq    $0, %rax
.Lscend102:
    testq   %rax, %rax
    je      .Lwend100
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
    je      .Lelse103
    movq    $-1, %rax
    movq    %rax, -32(%rbp)
    jmp     .Lendif104
.Lelse103:
    movq    -56(%rbp), %rax
    pushq   %rax
    movq    -16(%rbp), %rax
    pushq   %rax
    popq    %rsi
    popq    %rdi
    call    aicfn_str_eq
    testq   %rax, %rax
    je      .Lelse105
    movq    -96(%rbp), %rax
    pushq   %rax
    movq    -48(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    movq    (%rax,%rbx,8), %rax
    movq    %rax, -80(%rbp)
    movq    $1, %rax
    movq    %rax, -32(%rbp)
    jmp     .Lendif106
.Lelse105:
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
.Lendif106:
.Lendif104:
    jmp     .Lwtop99
.Lwend100:
    movq    -32(%rbp), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse107
    movq    -80(%rbp), %rax
    jmp     .Lret_map_get
    jmp     .Lendif108
.Lelse107:
    movq    $0, %rax
    jmp     .Lret_map_get
.Lendif108:
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
.Lwtop109:
    movq    -32(%rbp), %rax
    pushq   %rax
    movq    $0, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lscshort111
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
    jmp     .Lscend112
.Lscshort111:
    movq    $0, %rax
.Lscend112:
    testq   %rax, %rax
    je      .Lwend110
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
    je      .Lelse113
    movq    $-1, %rax
    movq    %rax, -32(%rbp)
    jmp     .Lendif114
.Lelse113:
    movq    -56(%rbp), %rax
    pushq   %rax
    movq    -16(%rbp), %rax
    pushq   %rax
    popq    %rsi
    popq    %rdi
    call    aicfn_str_eq
    testq   %rax, %rax
    je      .Lelse115
    movq    $1, %rax
    movq    %rax, -32(%rbp)
    jmp     .Lendif116
.Lelse115:
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
.Lendif116:
.Lendif114:
    jmp     .Lwtop109
.Lwend110:
    movq    -32(%rbp), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lternelse117
    movq    $1, %rax
    jmp     .Lternend118
.Lternelse117:
    movq    $0, %rax
.Lternend118:
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
    je      .Lelse119
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
    jne     .Lallocok121
    jmp     .Lruntimeerror
.Lallocok121:
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
    jne     .Lallocok122
    jmp     .Lruntimeerror
.Lallocok122:
    movq    %rax, -128(%rbp)
    movq    $0, -48(%rbp)
.Lmaptop123:
    movq    -48(%rbp), %rax
    pushq   %rax
    movq    -32(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    jge     .Lmapend124
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
    je      .Lelse125
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
.Lwtop127:
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
    je      .Lwend128
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
    jmp     .Lwtop127
.Lwend128:
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
    jmp     .Lendif126
.Lelse125:
.Lendif126:
    incq    -48(%rbp)
    jmp     .Lmaptop123
.Lmapend124:
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
    jmp     .Lendif120
.Lelse119:
.Lendif120:
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
.Lwtop129:
    movq    -152(%rbp), %rax
    pushq   %rax
    movq    $0, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lwend130
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
    je      .Lelse131
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
    jmp     .Lendif132
.Lelse131:
    movq    -64(%rbp), %rax
    pushq   %rax
    movq    -16(%rbp), %rax
    pushq   %rax
    popq    %rsi
    popq    %rdi
    call    aicfn_str_eq
    testq   %rax, %rax
    je      .Lelse133
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
    jmp     .Lendif134
.Lelse133:
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
.Lendif134:
.Lendif132:
    jmp     .Lwtop129
.Lwend130:
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
.Lmaptop135:
    movq    -24(%rbp), %rax
    pushq   %rax
    movq    -16(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    jge     .Lmapend136
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
    je      .Lelse137
    movq    -56(%rbp), %rax
    pushq   %rax
    movq    -32(%rbp), %rax
    pushq   %rax
    popq    %rsi
    popq    %rdi
    call    aicfn_vec_push_ptr
    jmp     .Lendif138
.Lelse137:
.Lendif138:
    incq    -24(%rbp)
    jmp     .Lmaptop135
.Lmapend136:
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
.Lmaptop139:
    movq    -24(%rbp), %rax
    pushq   %rax
    movq    -16(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    jge     .Lmapend140
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
    je      .Lelse141
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
    jmp     .Lendif142
.Lelse141:
.Lendif142:
    incq    -24(%rbp)
    jmp     .Lmaptop139
.Lmapend140:
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
    leaq    aicstr_31(%rip), %rax
    movq    %rax, -80(%rbp)
    movq    $0, %rax
    movq    %rax, -32(%rbp)
.Lwtop143:
    movq    -32(%rbp), %rax
    pushq   %rax
    movq    $0, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lscshort145
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
    jmp     .Lscend146
.Lscshort145:
    movq    $0, %rax
.Lscend146:
    testq   %rax, %rax
    je      .Lwend144
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
    je      .Lelse147
    movq    $-1, %rax
    movq    %rax, -32(%rbp)
    jmp     .Lendif148
.Lelse147:
    movq    -56(%rbp), %rax
    pushq   %rax
    movq    -16(%rbp), %rax
    pushq   %rax
    popq    %rsi
    popq    %rdi
    call    aicfn_str_eq
    testq   %rax, %rax
    je      .Lelse149
    movq    -96(%rbp), %rax
    pushq   %rax
    movq    -48(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    movq    (%rax,%rbx,8), %rax
    movq    %rax, -80(%rbp)
    movq    $1, %rax
    movq    %rax, -32(%rbp)
    jmp     .Lendif150
.Lelse149:
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
.Lendif150:
.Lendif148:
    jmp     .Lwtop143
.Lwend144:
    movq    -32(%rbp), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse151
    movq    -80(%rbp), %rax
    jmp     .Lret_map_get_ptr
    jmp     .Lendif152
.Lelse151:
    leaq    aicstr_31(%rip), %rax
    jmp     .Lret_map_get_ptr
.Lendif152:
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
    je      .Lelse153
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
    jne     .Lallocok155
    jmp     .Lruntimeerror
.Lallocok155:
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
    jne     .Lallocok156
    jmp     .Lruntimeerror
.Lallocok156:
    movq    %rax, -128(%rbp)
    movq    $0, -48(%rbp)
.Lmaptop157:
    movq    -48(%rbp), %rax
    pushq   %rax
    movq    -32(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    jge     .Lmapend158
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
    je      .Lelse159
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
.Lwtop161:
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
    je      .Lwend162
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
    jmp     .Lwtop161
.Lwend162:
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
    jmp     .Lendif160
.Lelse159:
.Lendif160:
    incq    -48(%rbp)
    jmp     .Lmaptop157
.Lmapend158:
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
    jmp     .Lendif154
.Lelse153:
.Lendif154:
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
.Lwtop163:
    movq    -152(%rbp), %rax
    pushq   %rax
    movq    $0, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lwend164
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
    je      .Lelse165
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
    jmp     .Lendif166
.Lelse165:
    movq    -64(%rbp), %rax
    pushq   %rax
    movq    -16(%rbp), %rax
    pushq   %rax
    popq    %rsi
    popq    %rdi
    call    aicfn_str_eq
    testq   %rax, %rax
    je      .Lelse167
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
    jmp     .Lendif168
.Lelse167:
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
.Lendif168:
.Lendif166:
    jmp     .Lwtop163
.Lwend164:
    movq    $1, %rax
    jmp     .Lret_map_set_ptr
    movq    $0, %rax
.Lret_map_set_ptr:
    leave
    ret

aicfn_json_null:
    pushq   %rbp
    movq    %rsp, %rbp
    subq    $16, %rsp

    movq    $0, -8(%rbp)
    movq    $0, %rax
    pushq   %rax
    movq    $0, %rax
    pushq   %rax
    leaq    aicstr_31(%rip), %rax
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
    movq    %rax, -8(%rbp)
    movq    -8(%rbp), %rax
    jmp     .Lret_json_null
    movq    $0, %rax
.Lret_json_null:
    leave
    ret

aicfn_json_bool:
    pushq   %rbp
    movq    %rsp, %rbp
    subq    $16, %rsp
    movq    %rdi, -8(%rbp)
    movq    $0, -16(%rbp)
    movq    $1, %rax
    pushq   %rax
    movq    -8(%rbp), %rax
    testq   %rax, %rax
    je      .Lternelse170
    movq    $1, %rax
    jmp     .Lternend171
.Lternelse170:
    movq    $0, %rax
.Lternend171:
    pushq   %rax
    leaq    aicstr_31(%rip), %rax
    pushq   %rax
    movq    $0, %rax
    pushq   %rax
    movq    $33, %rdi
    movq    $1, %rsi
    call    aic_calloc
    testq   %rax, %rax
    jne     .Lallocok172
    jmp     .Lruntimeerror
.Lallocok172:
    popq    %rbx
    movq    %rbx, 24(%rax)
    popq    %rbx
    movq    %rbx, 16(%rax)
    popq    %rbx
    movq    %rbx, 8(%rax)
    popq    %rbx
    movq    %rbx, 0(%rax)
    movq    %rax, -16(%rbp)
    movq    -16(%rbp), %rax
    jmp     .Lret_json_bool
    movq    $0, %rax
.Lret_json_bool:
    leave
    ret

aicfn_json_int:
    pushq   %rbp
    movq    %rsp, %rbp
    subq    $16, %rsp
    movq    %rdi, -8(%rbp)
    movq    $0, -16(%rbp)
    movq    $2, %rax
    pushq   %rax
    movq    -8(%rbp), %rax
    pushq   %rax
    leaq    aicstr_31(%rip), %rax
    pushq   %rax
    movq    $0, %rax
    pushq   %rax
    movq    $33, %rdi
    movq    $1, %rsi
    call    aic_calloc
    testq   %rax, %rax
    jne     .Lallocok173
    jmp     .Lruntimeerror
.Lallocok173:
    popq    %rbx
    movq    %rbx, 24(%rax)
    popq    %rbx
    movq    %rbx, 16(%rax)
    popq    %rbx
    movq    %rbx, 8(%rax)
    popq    %rbx
    movq    %rbx, 0(%rax)
    movq    %rax, -16(%rbp)
    movq    -16(%rbp), %rax
    jmp     .Lret_json_int
    movq    $0, %rax
.Lret_json_int:
    leave
    ret

aicfn_json_str:
    pushq   %rbp
    movq    %rsp, %rbp
    subq    $16, %rsp
    movq    %rdi, -8(%rbp)
    movq    $0, -16(%rbp)
    movq    $3, %rax
    pushq   %rax
    movq    $0, %rax
    pushq   %rax
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    $0, %rax
    pushq   %rax
    movq    $33, %rdi
    movq    $1, %rsi
    call    aic_calloc
    testq   %rax, %rax
    jne     .Lallocok174
    jmp     .Lruntimeerror
.Lallocok174:
    popq    %rbx
    movq    %rbx, 24(%rax)
    popq    %rbx
    movq    %rbx, 16(%rax)
    popq    %rbx
    movq    %rbx, 8(%rax)
    popq    %rbx
    movq    %rbx, 0(%rax)
    movq    %rax, -16(%rbp)
    movq    -16(%rbp), %rax
    jmp     .Lret_json_str
    movq    $0, %rax
.Lret_json_str:
    leave
    ret

aicfn_json_arr:
    pushq   %rbp
    movq    %rsp, %rbp
    subq    $16, %rsp

    movq    $0, -8(%rbp)
    movq    $0, -16(%rbp)
    movq    $8, %rax
    pushq   %rax
    popq    %rdi
    call    aicfn_vec_new
    movq    %rax, -16(%rbp)
    movq    $4, %rax
    pushq   %rax
    movq    $0, %rax
    pushq   %rax
    leaq    aicstr_31(%rip), %rax
    pushq   %rax
    movq    -16(%rbp), %rax
    pushq   %rax
    movq    $33, %rdi
    movq    $1, %rsi
    call    aic_calloc
    testq   %rax, %rax
    jne     .Lallocok175
    jmp     .Lruntimeerror
.Lallocok175:
    popq    %rbx
    movq    %rbx, 24(%rax)
    popq    %rbx
    movq    %rbx, 16(%rax)
    popq    %rbx
    movq    %rbx, 8(%rax)
    popq    %rbx
    movq    %rbx, 0(%rax)
    movq    %rax, -8(%rbp)
    movq    -8(%rbp), %rax
    jmp     .Lret_json_arr
    movq    $0, %rax
.Lret_json_arr:
    leave
    ret

aicfn_json_obj:
    pushq   %rbp
    movq    %rsp, %rbp
    subq    $16, %rsp

    movq    $0, -8(%rbp)
    movq    $0, -16(%rbp)
    movq    $16, %rax
    pushq   %rax
    popq    %rdi
    call    aicfn_map_new
    movq    %rax, -8(%rbp)
    movq    $5, %rax
    pushq   %rax
    movq    $0, %rax
    pushq   %rax
    leaq    aicstr_31(%rip), %rax
    pushq   %rax
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    $33, %rdi
    movq    $1, %rsi
    call    aic_calloc
    testq   %rax, %rax
    jne     .Lallocok176
    jmp     .Lruntimeerror
.Lallocok176:
    popq    %rbx
    movq    %rbx, 24(%rax)
    popq    %rbx
    movq    %rbx, 16(%rax)
    popq    %rbx
    movq    %rbx, 8(%rax)
    popq    %rbx
    movq    %rbx, 0(%rax)
    movq    %rax, -16(%rbp)
    movq    -16(%rbp), %rax
    jmp     .Lret_json_obj
    movq    $0, %rax
.Lret_json_obj:
    leave
    ret

aicfn_json_tag:
    pushq   %rbp
    movq    %rsp, %rbp
    subq    $16, %rsp
    movq    %rdi, -8(%rbp)

    movq    -8(%rbp), %rax
    movq    0(%rax), %rax
    jmp     .Lret_json_tag
    movq    $0, %rax
.Lret_json_tag:
    leave
    ret

aicfn_json_get_int:
    pushq   %rbp
    movq    %rsp, %rbp
    subq    $16, %rsp
    movq    %rdi, -8(%rbp)

    movq    -8(%rbp), %rax
    movq    8(%rax), %rax
    jmp     .Lret_json_get_int
    movq    $0, %rax
.Lret_json_get_int:
    leave
    ret

aicfn_json_get_bool:
    pushq   %rbp
    movq    %rsp, %rbp
    subq    $16, %rsp
    movq    %rdi, -8(%rbp)

    movq    -8(%rbp), %rax
    movq    8(%rax), %rax
    jmp     .Lret_json_get_bool
    movq    $0, %rax
.Lret_json_get_bool:
    leave
    ret

aicfn_json_get_str:
    pushq   %rbp
    movq    %rsp, %rbp
    subq    $16, %rsp
    movq    %rdi, -8(%rbp)

    movq    -8(%rbp), %rax
    movq    16(%rax), %rax
    jmp     .Lret_json_get_str
    movq    $0, %rax
.Lret_json_get_str:
    leave
    ret

aicfn_json_arr_push:
    pushq   %rbp
    movq    %rsp, %rbp
    subq    $32, %rsp
    movq    %rdi, -8(%rbp)
    movq    %rsi, -16(%rbp)
    movq    $0, -24(%rbp)
    movq    -8(%rbp), %rax
    movq    24(%rax), %rax
    movq    %rax, -24(%rbp)
    movq    -24(%rbp), %rax
    pushq   %rax
    movq    -16(%rbp), %rax
    pushq   %rax
    popq    %rsi
    popq    %rdi
    call    aicfn_vec_push_ptr
    jmp     .Lret_json_arr_push
    movq    $0, %rax
.Lret_json_arr_push:
    leave
    ret

aicfn_json_arr_get:
    pushq   %rbp
    movq    %rsp, %rbp
    subq    $32, %rsp
    movq    %rdi, -8(%rbp)
    movq    %rsi, -16(%rbp)
    movq    $0, -24(%rbp)
    movq    -8(%rbp), %rax
    movq    24(%rax), %rax
    movq    %rax, -24(%rbp)
    movq    -24(%rbp), %rax
    pushq   %rax
    movq    -16(%rbp), %rax
    pushq   %rax
    popq    %rsi
    popq    %rdi
    call    aicfn_vec_get_ptr
    jmp     .Lret_json_arr_get
    movq    $0, %rax
.Lret_json_arr_get:
    leave
    ret

aicfn_json_arr_len:
    pushq   %rbp
    movq    %rsp, %rbp
    subq    $16, %rsp
    movq    %rdi, -8(%rbp)
    movq    $0, -16(%rbp)
    movq    -8(%rbp), %rax
    movq    24(%rax), %rax
    movq    %rax, -16(%rbp)
    movq    -16(%rbp), %rax
    pushq   %rax
    popq    %rdi
    call    aicfn_vec_len
    jmp     .Lret_json_arr_len
    movq    $0, %rax
.Lret_json_arr_len:
    leave
    ret

aicfn_json_obj_set:
    pushq   %rbp
    movq    %rsp, %rbp
    subq    $32, %rsp
    movq    %rdi, -8(%rbp)
    movq    %rsi, -16(%rbp)
    movq    %rdx, -24(%rbp)
    movq    $0, -32(%rbp)
    movq    -8(%rbp), %rax
    movq    24(%rax), %rax
    movq    %rax, -32(%rbp)
    movq    -32(%rbp), %rax
    pushq   %rax
    movq    -16(%rbp), %rax
    pushq   %rax
    movq    -24(%rbp), %rax
    pushq   %rax
    popq    %rdx
    popq    %rsi
    popq    %rdi
    call    aicfn_map_set_ptr
    jmp     .Lret_json_obj_set
    movq    $0, %rax
.Lret_json_obj_set:
    leave
    ret

aicfn_json_obj_get:
    pushq   %rbp
    movq    %rsp, %rbp
    subq    $32, %rsp
    movq    %rdi, -8(%rbp)
    movq    %rsi, -16(%rbp)
    movq    $0, -24(%rbp)
    movq    -8(%rbp), %rax
    movq    24(%rax), %rax
    movq    %rax, -24(%rbp)
    movq    -24(%rbp), %rax
    pushq   %rax
    movq    -16(%rbp), %rax
    pushq   %rax
    popq    %rsi
    popq    %rdi
    call    aicfn_map_get_ptr
    jmp     .Lret_json_obj_get
    movq    $0, %rax
.Lret_json_obj_get:
    leave
    ret

aicfn_json_obj_contains:
    pushq   %rbp
    movq    %rsp, %rbp
    subq    $32, %rsp
    movq    %rdi, -8(%rbp)
    movq    %rsi, -16(%rbp)
    movq    $0, -24(%rbp)
    movq    -8(%rbp), %rax
    movq    24(%rax), %rax
    movq    %rax, -24(%rbp)
    movq    -24(%rbp), %rax
    pushq   %rax
    movq    -16(%rbp), %rax
    pushq   %rax
    popq    %rsi
    popq    %rdi
    call    aicfn_map_contains
    jmp     .Lret_json_obj_contains
    movq    $0, %rax
.Lret_json_obj_contains:
    leave
    ret

aicfn_json_skip_ws:
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
    movq    0(%rax), %rax
    movq    %rax, -48(%rbp)
    movq    -8(%rbp), %rax
    movq    8(%rax), %rax
    movq    %rax, -32(%rbp)
    movq    -8(%rbp), %rax
    movq    16(%rax), %rax
    movq    %rax, -40(%rbp)
    movq    $1, %rax
    movq    %rax, -24(%rbp)
.Lwtop177:
    movq    -24(%rbp), %rax
    testq   %rax, %rax
    je      .Lscshort179
    movq    -40(%rbp), %rax
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
    jmp     .Lscend180
.Lscshort179:
    movq    $0, %rax
.Lscend180:
    testq   %rax, %rax
    je      .Lwend178
    movq    -48(%rbp), %rax
    pushq   %rax
    movq    -40(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    movzbq  (%rax,%rbx), %rax
    movq    %rax, -16(%rbp)
    movq    -16(%rbp), %rax
    pushq   %rax
    movq    $32, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    jne      .Lscshort185
    movq    -16(%rbp), %rax
    pushq   %rax
    movq    $9, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    setne   %al
    movzbq  %al, %rax
    jmp     .Lscend186
.Lscshort185:
    movq    $1, %rax
.Lscend186:
    testq   %rax, %rax
    jne      .Lscshort183
    movq    -16(%rbp), %rax
    pushq   %rax
    movq    $10, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    jne      .Lscshort187
    movq    -16(%rbp), %rax
    pushq   %rax
    movq    $13, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    setne   %al
    movzbq  %al, %rax
    jmp     .Lscend188
.Lscshort187:
    movq    $1, %rax
.Lscend188:
    testq   %rax, %rax
    setne   %al
    movzbq  %al, %rax
    jmp     .Lscend184
.Lscshort183:
    movq    $1, %rax
.Lscend184:
    testq   %rax, %rax
    je      .Lelse181
    movq    -40(%rbp), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, -40(%rbp)
    jmp     .Lendif182
.Lelse181:
    movq    $0, %rax
    movq    %rax, -24(%rbp)
.Lendif182:
    jmp     .Lwtop177
.Lwend178:
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    -40(%rbp), %rax
    popq    %rbx
    movq    %rax, 16(%rbx)
    movq    $0, %rax
    jmp     .Lret_json_skip_ws
    movq    $0, %rax
.Lret_json_skip_ws:
    leave
    ret

aicfn_json_peek:
    pushq   %rbp
    movq    %rsp, %rbp
    subq    $32, %rsp
    movq    %rdi, -8(%rbp)
    movq    $0, -16(%rbp)
    movq    $0, -24(%rbp)
    movq    $0, -32(%rbp)
    movq    -8(%rbp), %rax
    movq    16(%rax), %rax
    movq    %rax, -24(%rbp)
    movq    -8(%rbp), %rax
    movq    8(%rax), %rax
    movq    %rax, -16(%rbp)
    movq    -24(%rbp), %rax
    pushq   %rax
    movq    -16(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    setge    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse189
    movq    $0, %rax
    jmp     .Lret_json_peek
    jmp     .Lendif190
.Lelse189:
.Lendif190:
    movq    -8(%rbp), %rax
    movq    0(%rax), %rax
    movq    %rax, -32(%rbp)
    movq    -32(%rbp), %rax
    pushq   %rax
    movq    -24(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    movzbq  (%rax,%rbx), %rax
    jmp     .Lret_json_peek
    movq    $0, %rax
.Lret_json_peek:
    leave
    ret

aicfn_json_next:
    pushq   %rbp
    movq    %rsp, %rbp
    subq    $48, %rsp
    movq    %rdi, -8(%rbp)
    movq    $0, -16(%rbp)
    movq    $0, -24(%rbp)
    movq    $0, -32(%rbp)
    movq    $0, -40(%rbp)
    movq    -8(%rbp), %rax
    movq    16(%rax), %rax
    movq    %rax, -32(%rbp)
    movq    -8(%rbp), %rax
    movq    8(%rax), %rax
    movq    %rax, -24(%rbp)
    movq    -32(%rbp), %rax
    pushq   %rax
    movq    -24(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    setge    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse191
    movq    $0, %rax
    jmp     .Lret_json_next
    jmp     .Lendif192
.Lelse191:
.Lendif192:
    movq    -8(%rbp), %rax
    movq    0(%rax), %rax
    movq    %rax, -40(%rbp)
    movq    -40(%rbp), %rax
    pushq   %rax
    movq    -32(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    movzbq  (%rax,%rbx), %rax
    movq    %rax, -16(%rbp)
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    -32(%rbp), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    popq    %rbx
    movq    %rax, 16(%rbx)
    movq    -16(%rbp), %rax
    jmp     .Lret_json_next
    movq    $0, %rax
.Lret_json_next:
    leave
    ret

aicfn_json_parse_str_raw:
    pushq   %rbp
    movq    %rsp, %rbp
    subq    $112, %rsp
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
    movq    -8(%rbp), %rax
    movq    0(%rax), %rax
    movq    %rax, -104(%rbp)
    movq    -8(%rbp), %rax
    movq    8(%rax), %rax
    movq    %rax, -56(%rbp)
    movq    -8(%rbp), %rax
    pushq   %rax
    popq    %rdi
    call    aicfn_json_next
    movq    %rax, -88(%rbp)
    movq    -8(%rbp), %rax
    movq    16(%rax), %rax
    movq    %rax, -80(%rbp)
    movq    -56(%rbp), %rax
    pushq   %rax
    movq    -80(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    subq    %rbx, %rax
    movq    %rax, -64(%rbp)
    movq    -64(%rbp), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    leaq    1(%rax), %rdi
    movq    $1, %rsi
    call    aic_calloc
    testq   %rax, %rax
    jne     .Lallocok193
    jmp     .Lruntimeerror
.Lallocok193:
    movq    %rax, -16(%rbp)
    movq    $0, %rax
    movq    %rax, -72(%rbp)
    movq    $0, %rax
    movq    %rax, -40(%rbp)
.Lwtop194:
    movq    -40(%rbp), %rax
    pushq   %rax
    movq    $0, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lscshort196
    movq    -8(%rbp), %rax
    movq    16(%rax), %rax
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
    jmp     .Lscend197
.Lscshort196:
    movq    $0, %rax
.Lscend197:
    testq   %rax, %rax
    je      .Lwend195
    movq    -8(%rbp), %rax
    pushq   %rax
    popq    %rdi
    call    aicfn_json_next
    movq    %rax, -24(%rbp)
    movq    -24(%rbp), %rax
    pushq   %rax
    movq    $34, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse198
    movq    $1, %rax
    movq    %rax, -40(%rbp)
    jmp     .Lendif199
.Lelse198:
    movq    -24(%rbp), %rax
    pushq   %rax
    movq    $92, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse200
    movq    -8(%rbp), %rax
    pushq   %rax
    popq    %rdi
    call    aicfn_json_next
    movq    %rax, -48(%rbp)
    movq    -48(%rbp), %rax
    movq    %rax, -32(%rbp)
    movq    -48(%rbp), %rax
    pushq   %rax
    movq    $110, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse202
    movq    $10, %rax
    movq    %rax, -32(%rbp)
    jmp     .Lendif203
.Lelse202:
.Lendif203:
    movq    -48(%rbp), %rax
    pushq   %rax
    movq    $116, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse204
    movq    $9, %rax
    movq    %rax, -32(%rbp)
    jmp     .Lendif205
.Lelse204:
.Lendif205:
    movq    -48(%rbp), %rax
    pushq   %rax
    movq    $114, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse206
    movq    $13, %rax
    movq    %rax, -32(%rbp)
    jmp     .Lendif207
.Lelse206:
.Lendif207:
    movq    -16(%rbp), %rax
    pushq   %rax
    movq    -72(%rbp), %rax
    pushq   %rax
    movq    -32(%rbp), %rax
    popq    %rbx
    popq    %rcx
    movb    %al, (%rcx,%rbx)
    movq    -72(%rbp), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, -72(%rbp)
    jmp     .Lendif201
.Lelse200:
    movq    -16(%rbp), %rax
    pushq   %rax
    movq    -72(%rbp), %rax
    pushq   %rax
    movq    -24(%rbp), %rax
    popq    %rbx
    popq    %rcx
    movb    %al, (%rcx,%rbx)
    movq    -72(%rbp), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, -72(%rbp)
.Lendif201:
.Lendif199:
    jmp     .Lwtop194
.Lwend195:
    movq    -16(%rbp), %rax
    pushq   %rax
    movq    -72(%rbp), %rax
    pushq   %rax
    movq    $0, %rax
    popq    %rbx
    popq    %rcx
    movb    %al, (%rcx,%rbx)
    movq    -16(%rbp), %rax
    pushq   %rax
    movq    $0, %rax
    pushq   %rax
    movq    -72(%rbp), %rax
    pushq   %rax
    movq    %rax, %rdi
    incq    %rdi
    movq    $1, %rsi
    call    aic_calloc
    testq   %rax, %rax
    jne     .Lallocok208
    jmp     .Lruntimeerror
.Lallocok208:
    popq    %rcx
    popq    %rbx
    popq    %rsi
    addq    %rbx, %rsi
    movq    %rax, %rdi
    pushq   %rax
    rep movsb
    popq    %rax
    movq    %rax, -96(%rbp)
    movq    -96(%rbp), %rax
    jmp     .Lret_json_parse_str_raw
    movq    $0, %rax
.Lret_json_parse_str_raw:
    leave
    ret

aicfn_json_parse_num:
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
    movq    $1, %rax
    movq    %rax, -40(%rbp)
    movq    -8(%rbp), %rax
    pushq   %rax
    popq    %rdi
    call    aicfn_json_peek
    movq    %rax, -16(%rbp)
    movq    -16(%rbp), %rax
    pushq   %rax
    movq    $45, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse209
    movq    $-1, %rax
    movq    %rax, -40(%rbp)
    movq    -8(%rbp), %rax
    pushq   %rax
    popq    %rdi
    call    aicfn_json_next
    jmp     .Lendif210
.Lelse209:
.Lendif210:
    movq    $0, %rax
    movq    %rax, -56(%rbp)
    movq    $1, %rax
    movq    %rax, -32(%rbp)
.Lwtop211:
    movq    -32(%rbp), %rax
    testq   %rax, %rax
    je      .Lwend212
    movq    -8(%rbp), %rax
    pushq   %rax
    popq    %rdi
    call    aicfn_json_peek
    movq    %rax, -24(%rbp)
    movq    -24(%rbp), %rax
    pushq   %rax
    movq    $48, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    setge    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lscshort215
    movq    -24(%rbp), %rax
    pushq   %rax
    movq    $57, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    setle    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    setne   %al
    movzbq  %al, %rax
    jmp     .Lscend216
.Lscshort215:
    movq    $0, %rax
.Lscend216:
    testq   %rax, %rax
    je      .Lelse213
    movq    -8(%rbp), %rax
    pushq   %rax
    popq    %rdi
    call    aicfn_json_next
    movq    -56(%rbp), %rax
    pushq   %rax
    movq    $10, %rax
    movq    %rax, %rbx
    popq    %rax
    imulq   %rbx, %rax
    pushq   %rax
    movq    -24(%rbp), %rax
    pushq   %rax
    movq    $48, %rax
    movq    %rax, %rbx
    popq    %rax
    subq    %rbx, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, -56(%rbp)
    jmp     .Lendif214
.Lelse213:
    movq    $0, %rax
    movq    %rax, -32(%rbp)
.Lendif214:
    jmp     .Lwtop211
.Lwend212:
    movq    -56(%rbp), %rax
    pushq   %rax
    movq    -40(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    imulq   %rbx, %rax
    movq    %rax, -48(%rbp)
    movq    -48(%rbp), %rax
    pushq   %rax
    popq    %rdi
    call    aicfn_json_int
    jmp     .Lret_json_parse_num
    movq    $0, %rax
.Lret_json_parse_num:
    leave
    ret

aicfn_json_parse_bool_or_null:
    pushq   %rbp
    movq    %rsp, %rbp
    subq    $16, %rsp
    movq    %rdi, -8(%rbp)
    movq    $0, -16(%rbp)
    movq    -8(%rbp), %rax
    pushq   %rax
    popq    %rdi
    call    aicfn_json_peek
    movq    %rax, -16(%rbp)
    movq    -16(%rbp), %rax
    pushq   %rax
    movq    $116, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse217
    movq    -8(%rbp), %rax
    pushq   %rax
    popq    %rdi
    call    aicfn_json_next
    movq    -8(%rbp), %rax
    pushq   %rax
    popq    %rdi
    call    aicfn_json_next
    movq    -8(%rbp), %rax
    pushq   %rax
    popq    %rdi
    call    aicfn_json_next
    movq    -8(%rbp), %rax
    pushq   %rax
    popq    %rdi
    call    aicfn_json_next
    movq    $1, %rax
    pushq   %rax
    popq    %rdi
    call    aicfn_json_bool
    jmp     .Lret_json_parse_bool_or_null
    jmp     .Lendif218
.Lelse217:
.Lendif218:
    movq    -16(%rbp), %rax
    pushq   %rax
    movq    $102, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse219
    movq    -8(%rbp), %rax
    pushq   %rax
    popq    %rdi
    call    aicfn_json_next
    movq    -8(%rbp), %rax
    pushq   %rax
    popq    %rdi
    call    aicfn_json_next
    movq    -8(%rbp), %rax
    pushq   %rax
    popq    %rdi
    call    aicfn_json_next
    movq    -8(%rbp), %rax
    pushq   %rax
    popq    %rdi
    call    aicfn_json_next
    movq    -8(%rbp), %rax
    pushq   %rax
    popq    %rdi
    call    aicfn_json_next
    movq    $0, %rax
    pushq   %rax
    popq    %rdi
    call    aicfn_json_bool
    jmp     .Lret_json_parse_bool_or_null
    jmp     .Lendif220
.Lelse219:
.Lendif220:
    movq    -8(%rbp), %rax
    pushq   %rax
    popq    %rdi
    call    aicfn_json_next
    movq    -8(%rbp), %rax
    pushq   %rax
    popq    %rdi
    call    aicfn_json_next
    movq    -8(%rbp), %rax
    pushq   %rax
    popq    %rdi
    call    aicfn_json_next
    movq    -8(%rbp), %rax
    pushq   %rax
    popq    %rdi
    call    aicfn_json_next
    call    aicfn_json_null
    jmp     .Lret_json_parse_bool_or_null
    movq    $0, %rax
.Lret_json_parse_bool_or_null:
    leave
    ret

aicfn_json_parse_arr:
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
    popq    %rdi
    call    aicfn_json_next
    call    aicfn_json_arr
    movq    %rax, -16(%rbp)
    movq    -8(%rbp), %rax
    pushq   %rax
    popq    %rdi
    call    aicfn_json_skip_ws
    movq    -8(%rbp), %rax
    pushq   %rax
    popq    %rdi
    call    aicfn_json_peek
    movq    %rax, -24(%rbp)
    movq    -24(%rbp), %rax
    pushq   %rax
    movq    $93, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse221
    movq    -8(%rbp), %rax
    pushq   %rax
    popq    %rdi
    call    aicfn_json_next
    movq    -16(%rbp), %rax
    jmp     .Lret_json_parse_arr
    jmp     .Lendif222
.Lelse221:
.Lendif222:
    movq    $1, %rax
    movq    %rax, -40(%rbp)
.Lwtop223:
    movq    -40(%rbp), %rax
    testq   %rax, %rax
    je      .Lwend224
    movq    -8(%rbp), %rax
    pushq   %rax
    popq    %rdi
    call    aicfn_json_parse_val
    movq    %rax, -32(%rbp)
    movq    -16(%rbp), %rax
    pushq   %rax
    movq    -32(%rbp), %rax
    pushq   %rax
    popq    %rsi
    popq    %rdi
    call    aicfn_json_arr_push
    movq    -8(%rbp), %rax
    pushq   %rax
    popq    %rdi
    call    aicfn_json_skip_ws
    movq    -8(%rbp), %rax
    pushq   %rax
    popq    %rdi
    call    aicfn_json_next
    movq    %rax, -48(%rbp)
    movq    -48(%rbp), %rax
    pushq   %rax
    movq    $44, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse225
    jmp     .Lendif226
.Lelse225:
    movq    -48(%rbp), %rax
    pushq   %rax
    movq    $93, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse227
    movq    $0, %rax
    movq    %rax, -40(%rbp)
    jmp     .Lendif228
.Lelse227:
    movq    $0, %rax
    movq    %rax, -40(%rbp)
.Lendif228:
.Lendif226:
    jmp     .Lwtop223
.Lwend224:
    movq    -16(%rbp), %rax
    jmp     .Lret_json_parse_arr
    movq    $0, %rax
.Lret_json_parse_arr:
    leave
    ret

aicfn_json_parse_obj:
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
    pushq   %rax
    popq    %rdi
    call    aicfn_json_next
    call    aicfn_json_obj
    movq    %rax, -56(%rbp)
    movq    -8(%rbp), %rax
    pushq   %rax
    popq    %rdi
    call    aicfn_json_skip_ws
    movq    -8(%rbp), %rax
    pushq   %rax
    popq    %rdi
    call    aicfn_json_peek
    movq    %rax, -16(%rbp)
    movq    -16(%rbp), %rax
    pushq   %rax
    movq    $125, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse229
    movq    -8(%rbp), %rax
    pushq   %rax
    popq    %rdi
    call    aicfn_json_next
    movq    -56(%rbp), %rax
    jmp     .Lret_json_parse_obj
    jmp     .Lendif230
.Lelse229:
.Lendif230:
    movq    $1, %rax
    movq    %rax, -40(%rbp)
.Lwtop231:
    movq    -40(%rbp), %rax
    testq   %rax, %rax
    je      .Lwend232
    movq    -8(%rbp), %rax
    pushq   %rax
    popq    %rdi
    call    aicfn_json_skip_ws
    movq    -8(%rbp), %rax
    pushq   %rax
    popq    %rdi
    call    aicfn_json_parse_str_raw
    movq    %rax, -32(%rbp)
    movq    -8(%rbp), %rax
    pushq   %rax
    popq    %rdi
    call    aicfn_json_skip_ws
    movq    -8(%rbp), %rax
    pushq   %rax
    popq    %rdi
    call    aicfn_json_next
    movq    %rax, -24(%rbp)
    movq    -8(%rbp), %rax
    pushq   %rax
    popq    %rdi
    call    aicfn_json_skip_ws
    movq    -8(%rbp), %rax
    pushq   %rax
    popq    %rdi
    call    aicfn_json_parse_val
    movq    %rax, -64(%rbp)
    movq    -56(%rbp), %rax
    pushq   %rax
    movq    -32(%rbp), %rax
    pushq   %rax
    movq    -64(%rbp), %rax
    pushq   %rax
    popq    %rdx
    popq    %rsi
    popq    %rdi
    call    aicfn_json_obj_set
    movq    -8(%rbp), %rax
    pushq   %rax
    popq    %rdi
    call    aicfn_json_skip_ws
    movq    -8(%rbp), %rax
    pushq   %rax
    popq    %rdi
    call    aicfn_json_next
    movq    %rax, -48(%rbp)
    movq    -48(%rbp), %rax
    pushq   %rax
    movq    $44, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse233
    jmp     .Lendif234
.Lelse233:
    movq    -48(%rbp), %rax
    pushq   %rax
    movq    $125, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse235
    movq    $0, %rax
    movq    %rax, -40(%rbp)
    jmp     .Lendif236
.Lelse235:
    movq    $0, %rax
    movq    %rax, -40(%rbp)
.Lendif236:
.Lendif234:
    jmp     .Lwtop231
.Lwend232:
    movq    -56(%rbp), %rax
    jmp     .Lret_json_parse_obj
    movq    $0, %rax
.Lret_json_parse_obj:
    leave
    ret

aicfn_json_parse_val:
    pushq   %rbp
    movq    %rsp, %rbp
    subq    $32, %rsp
    movq    %rdi, -8(%rbp)
    movq    $0, -16(%rbp)
    movq    $0, -24(%rbp)
    movq    -8(%rbp), %rax
    pushq   %rax
    popq    %rdi
    call    aicfn_json_skip_ws
    movq    -8(%rbp), %rax
    pushq   %rax
    popq    %rdi
    call    aicfn_json_peek
    movq    %rax, -16(%rbp)
    movq    -16(%rbp), %rax
    pushq   %rax
    movq    $34, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse237
    movq    -8(%rbp), %rax
    pushq   %rax
    popq    %rdi
    call    aicfn_json_parse_str_raw
    movq    %rax, -24(%rbp)
    movq    -24(%rbp), %rax
    pushq   %rax
    popq    %rdi
    call    aicfn_json_str
    jmp     .Lret_json_parse_val
    jmp     .Lendif238
.Lelse237:
.Lendif238:
    movq    -16(%rbp), %rax
    pushq   %rax
    movq    $123, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse239
    movq    -8(%rbp), %rax
    pushq   %rax
    popq    %rdi
    call    aicfn_json_parse_obj
    jmp     .Lret_json_parse_val
    jmp     .Lendif240
.Lelse239:
.Lendif240:
    movq    -16(%rbp), %rax
    pushq   %rax
    movq    $91, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse241
    movq    -8(%rbp), %rax
    pushq   %rax
    popq    %rdi
    call    aicfn_json_parse_arr
    jmp     .Lret_json_parse_val
    jmp     .Lendif242
.Lelse241:
.Lendif242:
    movq    -16(%rbp), %rax
    pushq   %rax
    movq    $116, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    jne      .Lscshort245
    movq    -16(%rbp), %rax
    pushq   %rax
    movq    $102, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    jne      .Lscshort247
    movq    -16(%rbp), %rax
    pushq   %rax
    movq    $110, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    setne   %al
    movzbq  %al, %rax
    jmp     .Lscend248
.Lscshort247:
    movq    $1, %rax
.Lscend248:
    testq   %rax, %rax
    setne   %al
    movzbq  %al, %rax
    jmp     .Lscend246
.Lscshort245:
    movq    $1, %rax
.Lscend246:
    testq   %rax, %rax
    je      .Lelse243
    movq    -8(%rbp), %rax
    pushq   %rax
    popq    %rdi
    call    aicfn_json_parse_bool_or_null
    jmp     .Lret_json_parse_val
    jmp     .Lendif244
.Lelse243:
.Lendif244:
    movq    -8(%rbp), %rax
    pushq   %rax
    popq    %rdi
    call    aicfn_json_parse_num
    jmp     .Lret_json_parse_val
    movq    $0, %rax
.Lret_json_parse_val:
    leave
    ret

aicfn_json_parse:
    pushq   %rbp
    movq    %rsp, %rbp
    subq    $32, %rsp
    movq    %rdi, -8(%rbp)
    movq    $0, -16(%rbp)
    movq    $0, -24(%rbp)
    movq    -8(%rbp), %rax
    movq    %rax, %rdi
    call    aic_strlen
    movq    %rax, -16(%rbp)
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    -16(%rbp), %rax
    pushq   %rax
    movq    $0, %rax
    pushq   %rax
    movq    $25, %rdi
    movq    $1, %rsi
    call    aic_calloc
    testq   %rax, %rax
    jne     .Lallocok249
    jmp     .Lruntimeerror
.Lallocok249:
    popq    %rbx
    movq    %rbx, 16(%rax)
    popq    %rbx
    movq    %rbx, 8(%rax)
    popq    %rbx
    movq    %rbx, 0(%rax)
    movq    %rax, -24(%rbp)
    movq    -24(%rbp), %rax
    pushq   %rax
    popq    %rdi
    call    aicfn_json_parse_val
    jmp     .Lret_json_parse
    movq    $0, %rax
.Lret_json_parse:
    leave
    ret

aicfn_json_stringify:
    pushq   %rbp
    movq    %rsp, %rbp
    subq    $176, %rsp
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
    movq    -8(%rbp), %rax
    movq    0(%rax), %rax
    movq    %rax, -160(%rbp)
    movq    -160(%rbp), %rax
    pushq   %rax
    movq    $0, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse250
    leaq    aicstr_11(%rip), %rax
    jmp     .Lret_json_stringify
    jmp     .Lendif251
.Lelse250:
.Lendif251:
    movq    -160(%rbp), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse252
    movq    -8(%rbp), %rax
    movq    8(%rax), %rax
    testq   %rax, %rax
    je      .Lternelse254
    leaq    aicstr_6(%rip), %rax
    jmp     .Lternend255
.Lternelse254:
    leaq    aicstr_9(%rip), %rax
.Lternend255:
    jmp     .Lret_json_stringify
    jmp     .Lendif253
.Lelse252:
.Lendif253:
    movq    -160(%rbp), %rax
    pushq   %rax
    movq    $2, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse256
    movq    -8(%rbp), %rax
    movq    8(%rax), %rax
    movq    %rax, %r12
    movq    $24, %rdi
    call    aic_malloc
    testq   %rax, %rax
    jne     .Lallocok258
    jmp     .Lruntimeerror
.Lallocok258:
    movq    %rax, %r13
    movq    %r13, %rdi
    leaq    fmt_d(%rip), %rsi
    movq    %r12, %rdx
    xorl    %eax, %eax
    call    aic_sprintf
    movq    %r13, %rax
    jmp     .Lret_json_stringify
    jmp     .Lendif257
.Lelse256:
.Lendif257:
    movq    -160(%rbp), %rax
    pushq   %rax
    movq    $3, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse259
    movq    -8(%rbp), %rax
    movq    16(%rax), %rax
    movq    %rax, -136(%rbp)
    call    aicfn_str_quote
    movq    %rax, -104(%rbp)
    movq    -104(%rbp), %rax
    pushq   %rax
    movq    -136(%rbp), %rax
    pushq   %rax
    popq    %rsi
    popq    %rdi
    call    aicfn_str_cat
    movq    %rax, -112(%rbp)
    movq    -112(%rbp), %rax
    pushq   %rax
    movq    -104(%rbp), %rax
    pushq   %rax
    popq    %rsi
    popq    %rdi
    call    aicfn_str_cat
    movq    %rax, -120(%rbp)
    movq    -120(%rbp), %rax
    jmp     .Lret_json_stringify
    jmp     .Lendif260
.Lelse259:
.Lendif260:
    movq    -160(%rbp), %rax
    pushq   %rax
    movq    $4, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse261
    movq    -8(%rbp), %rax
    movq    24(%rax), %rax
    movq    %rax, -16(%rbp)
    movq    -16(%rbp), %rax
    pushq   %rax
    popq    %rdi
    call    aicfn_vec_len
    movq    %rax, -88(%rbp)
    leaq    aicstr_32(%rip), %rax
    movq    %rax, -96(%rbp)
    movq    $0, -48(%rbp)
.Lmaptop263:
    movq    -48(%rbp), %rax
    pushq   %rax
    movq    -88(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    jge     .Lmapend264
    movq    -16(%rbp), %rax
    pushq   %rax
    movq    -48(%rbp), %rax
    pushq   %rax
    popq    %rsi
    popq    %rdi
    call    aicfn_vec_get_ptr
    movq    %rax, -32(%rbp)
    movq    -32(%rbp), %rax
    pushq   %rax
    popq    %rdi
    call    aicfn_json_stringify
    movq    %rax, -144(%rbp)
    movq    -96(%rbp), %rax
    pushq   %rax
    movq    -144(%rbp), %rax
    pushq   %rax
    popq    %rsi
    popq    %rdi
    call    aicfn_str_cat
    movq    %rax, -96(%rbp)
    movq    -48(%rbp), %rax
    pushq   %rax
    movq    -88(%rbp), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    subq    %rbx, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    setl    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse265
    movq    -96(%rbp), %rax
    pushq   %rax
    leaq    aicstr_33(%rip), %rax
    pushq   %rax
    popq    %rsi
    popq    %rdi
    call    aicfn_str_cat
    movq    %rax, -96(%rbp)
    jmp     .Lendif266
.Lelse265:
.Lendif266:
    incq    -48(%rbp)
    jmp     .Lmaptop263
.Lmapend264:
    movq    -96(%rbp), %rax
    pushq   %rax
    leaq    aicstr_34(%rip), %rax
    pushq   %rax
    popq    %rsi
    popq    %rdi
    call    aicfn_str_cat
    movq    %rax, -96(%rbp)
    movq    -96(%rbp), %rax
    jmp     .Lret_json_stringify
    jmp     .Lendif262
.Lelse261:
.Lendif262:
    movq    -160(%rbp), %rax
    pushq   %rax
    movq    $5, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse267
    movq    -8(%rbp), %rax
    movq    24(%rax), %rax
    movq    %rax, -80(%rbp)
    movq    -80(%rbp), %rax
    movq    16(%rax), %rax
    movq    %rax, -24(%rbp)
    movq    -80(%rbp), %rax
    movq    0(%rax), %rax
    movq    %rax, -72(%rbp)
    movq    -80(%rbp), %rax
    movq    8(%rax), %rax
    movq    %rax, -176(%rbp)
    leaq    aicstr_35(%rip), %rax
    movq    %rax, -96(%rbp)
    movq    $1, %rax
    movq    %rax, -40(%rbp)
    movq    $0, -48(%rbp)
.Lmaptop269:
    movq    -48(%rbp), %rax
    pushq   %rax
    movq    -24(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    jge     .Lmapend270
    movq    -72(%rbp), %rax
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
    setne    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse271
    movq    -176(%rbp), %rax
    pushq   %rax
    movq    -48(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    movq    (%rax,%rbx,8), %rax
    movq    %rax, -168(%rbp)
    movq    -40(%rbp), %rax
    pushq   %rax
    movq    $0, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse273
    movq    -96(%rbp), %rax
    pushq   %rax
    leaq    aicstr_33(%rip), %rax
    pushq   %rax
    popq    %rsi
    popq    %rdi
    call    aicfn_str_cat
    movq    %rax, -96(%rbp)
    jmp     .Lendif274
.Lelse273:
    movq    $0, %rax
    movq    %rax, -40(%rbp)
.Lendif274:
    call    aicfn_str_quote
    movq    %rax, -104(%rbp)
    movq    -56(%rbp), %rax
    pushq   %rax
    movq    -104(%rbp), %rax
    pushq   %rax
    leaq    aicstr_36(%rip), %rax
    pushq   %rax
    popq    %rsi
    popq    %rdi
    call    aicfn_str_cat
    pushq   %rax
    popq    %rsi
    popq    %rdi
    call    aicfn_str_cat
    movq    %rax, -64(%rbp)
    movq    -104(%rbp), %rax
    pushq   %rax
    movq    -64(%rbp), %rax
    pushq   %rax
    popq    %rsi
    popq    %rdi
    call    aicfn_str_cat
    movq    %rax, -128(%rbp)
    movq    -168(%rbp), %rax
    pushq   %rax
    popq    %rdi
    call    aicfn_json_stringify
    movq    %rax, -152(%rbp)
    movq    -96(%rbp), %rax
    pushq   %rax
    movq    -128(%rbp), %rax
    pushq   %rax
    movq    -152(%rbp), %rax
    pushq   %rax
    popq    %rsi
    popq    %rdi
    call    aicfn_str_cat
    pushq   %rax
    popq    %rsi
    popq    %rdi
    call    aicfn_str_cat
    movq    %rax, -96(%rbp)
    jmp     .Lendif272
.Lelse271:
.Lendif272:
    incq    -48(%rbp)
    jmp     .Lmaptop269
.Lmapend270:
    movq    -96(%rbp), %rax
    pushq   %rax
    leaq    aicstr_37(%rip), %rax
    pushq   %rax
    popq    %rsi
    popq    %rdi
    call    aicfn_str_cat
    movq    %rax, -96(%rbp)
    movq    -96(%rbp), %rax
    jmp     .Lret_json_stringify
    jmp     .Lendif268
.Lelse267:
.Lendif268:
    leaq    aicstr_11(%rip), %rax
    jmp     .Lret_json_stringify
    movq    $0, %rax
.Lret_json_stringify:
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
    jne     .Lallocok275
    jmp     .Lruntimeerror
.Lallocok275:
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
    je      .Lelse276
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
    leaq    aicstr_38(%rip), %rax
    leaq    fmt_s_nl(%rip), %rdi
    movq    %rax, %rsi
    xorl    %eax, %eax
    call    aic_printf
    movq    -32(%rbp), %rax
    leaq    fmt_s_nl(%rip), %rdi
    movq    %rax, %rsi
    xorl    %eax, %eax
    call    aic_printf
    leaq    aicstr_39(%rip), %rax
    leaq    fmt_s_nl(%rip), %rdi
    movq    %rax, %rsi
    xorl    %eax, %eax
    call    aic_printf
    movq    $1, %rax
    jmp     .Lret_test_assert_eq
    jmp     .Lendif277
.Lelse276:
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
    leaq    aicstr_40(%rip), %rax
    leaq    fmt_s_nl(%rip), %rdi
    movq    %rax, %rsi
    xorl    %eax, %eax
    call    aic_printf
    movq    -32(%rbp), %rax
    leaq    fmt_s_nl(%rip), %rdi
    movq    %rax, %rsi
    xorl    %eax, %eax
    call    aic_printf
    leaq    aicstr_41(%rip), %rax
    leaq    fmt_s_nl(%rip), %rdi
    movq    %rax, %rsi
    xorl    %eax, %eax
    call    aic_printf
    movq    -24(%rbp), %rax
    leaq    fmt_nl(%rip), %rdi
    movq    %rax, %rsi
    xorl    %eax, %eax
    call    aic_printf
    leaq    aicstr_42(%rip), %rax
    leaq    fmt_s_nl(%rip), %rdi
    movq    %rax, %rsi
    xorl    %eax, %eax
    call    aic_printf
    movq    -16(%rbp), %rax
    leaq    fmt_nl(%rip), %rdi
    movq    %rax, %rsi
    xorl    %eax, %eax
    call    aic_printf
    leaq    aicstr_43(%rip), %rax
    leaq    fmt_s_nl(%rip), %rdi
    movq    %rax, %rsi
    xorl    %eax, %eax
    call    aic_printf
    movq    $0, %rax
    jmp     .Lret_test_assert_eq
.Lendif277:
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
    je      .Lelse278
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
    leaq    aicstr_38(%rip), %rax
    leaq    fmt_s_nl(%rip), %rdi
    movq    %rax, %rsi
    xorl    %eax, %eax
    call    aic_printf
    movq    -32(%rbp), %rax
    leaq    fmt_s_nl(%rip), %rdi
    movq    %rax, %rsi
    xorl    %eax, %eax
    call    aic_printf
    leaq    aicstr_39(%rip), %rax
    leaq    fmt_s_nl(%rip), %rdi
    movq    %rax, %rsi
    xorl    %eax, %eax
    call    aic_printf
    movq    $1, %rax
    jmp     .Lret_test_assert_str_eq
    jmp     .Lendif279
.Lelse278:
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
    leaq    aicstr_40(%rip), %rax
    leaq    fmt_s_nl(%rip), %rdi
    movq    %rax, %rsi
    xorl    %eax, %eax
    call    aic_printf
    movq    -32(%rbp), %rax
    leaq    fmt_s_nl(%rip), %rdi
    movq    %rax, %rsi
    xorl    %eax, %eax
    call    aic_printf
    leaq    aicstr_44(%rip), %rax
    leaq    fmt_s_nl(%rip), %rdi
    movq    %rax, %rsi
    xorl    %eax, %eax
    call    aic_printf
    movq    -24(%rbp), %rax
    leaq    fmt_s_nl(%rip), %rdi
    movq    %rax, %rsi
    xorl    %eax, %eax
    call    aic_printf
    leaq    aicstr_45(%rip), %rax
    leaq    fmt_s_nl(%rip), %rdi
    movq    %rax, %rsi
    xorl    %eax, %eax
    call    aic_printf
    movq    -16(%rbp), %rax
    leaq    fmt_s_nl(%rip), %rdi
    movq    %rax, %rsi
    xorl    %eax, %eax
    call    aic_printf
    leaq    aicstr_46(%rip), %rax
    leaq    fmt_s_nl(%rip), %rdi
    movq    %rax, %rsi
    xorl    %eax, %eax
    call    aic_printf
    movq    $0, %rax
    jmp     .Lret_test_assert_str_eq
.Lendif279:
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
    je      .Lternelse280
    movq    $1, %rax
    jmp     .Lternend281
.Lternelse280:
    movq    $0, %rax
.Lternend281:
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
    leaq    aicstr_47(%rip), %rax
    leaq    fmt_s_nl(%rip), %rdi
    movq    %rax, %rsi
    xorl    %eax, %eax
    call    aic_printf
    leaq    aicstr_48(%rip), %rax
    leaq    fmt_s_nl(%rip), %rdi
    movq    %rax, %rsi
    xorl    %eax, %eax
    call    aic_printf
    movq    -24(%rbp), %rax
    leaq    fmt_nl(%rip), %rdi
    movq    %rax, %rsi
    xorl    %eax, %eax
    call    aic_printf
    leaq    aicstr_49(%rip), %rax
    leaq    fmt_s_nl(%rip), %rdi
    movq    %rax, %rsi
    xorl    %eax, %eax
    call    aic_printf
    movq    -32(%rbp), %rax
    leaq    fmt_nl(%rip), %rdi
    movq    %rax, %rsi
    xorl    %eax, %eax
    call    aic_printf
    leaq    aicstr_50(%rip), %rax
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
    je      .Lelse282
    leaq    aicstr_51(%rip), %rax
    leaq    fmt_s_nl(%rip), %rdi
    movq    %rax, %rsi
    xorl    %eax, %eax
    call    aic_printf
    movq    -16(%rbp), %rax
    leaq    fmt_nl(%rip), %rdi
    movq    %rax, %rsi
    xorl    %eax, %eax
    call    aic_printf
    leaq    aicstr_52(%rip), %rax
    leaq    fmt_s_nl(%rip), %rdi
    movq    %rax, %rsi
    xorl    %eax, %eax
    call    aic_printf
    jmp     .Lendif283
.Lelse282:
    leaq    aicstr_53(%rip), %rax
    leaq    fmt_s_nl(%rip), %rdi
    movq    %rax, %rsi
    xorl    %eax, %eax
    call    aic_printf
.Lendif283:
    leaq    aicstr_47(%rip), %rax
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
    je      .Lternelse284
    movq    $0, %rax
    jmp     .Lternend285
.Lternelse284:
    movq    $1, %rax
.Lternend285:
    jmp     .Lret_test_summary
    movq    $0, %rax
.Lret_test_summary:
    leave
    ret

aicfn_json_wrap_str:
    pushq   %rbp
    movq    %rsp, %rbp
    subq    $16, %rsp
    movq    %rdi, -8(%rbp)
    movq    $0, -16(%rbp)
    call    aicfn_str_quote
    movq    %rax, -16(%rbp)
    movq    -16(%rbp), %rax
    pushq   %rax
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    -16(%rbp), %rax
    pushq   %rax
    popq    %rsi
    popq    %rdi
    call    aicfn_str_cat
    pushq   %rax
    popq    %rsi
    popq    %rdi
    call    aicfn_str_cat
    jmp     .Lret_json_wrap_str
    movq    $0, %rax
.Lret_json_wrap_str:
    leave
    ret


.Lruntimeerror:
    leaq    runtimeerr_msg(%rip), %rsi
    movq    %rsi, %rdi
    call    aic_runtime_error

# tools/aic_linux_bridge.s - SysV/glibc C-runtime bridge for AIC native Linux builds
#
# AIC codegen (aic_codegen.py) loads libc call arguments in Windows x64
# order (arg1->rdi, arg2->rsi, arg3->rdx, arg4->rcx) and calls a aic_*
# shim. This bridge translates that into SysV/glibc order before the
# real libc call.
#
# CRITICAL: every shim keeps the Windows bridge's `subq $40, %rsp` /
# `addq $40, %rsp` guards. They are NOT a Windows convention - they are
# the 16-byte stack-alignment guard glibc's optimized routines (printf,
# strlen, malloc, ...) require. AIC's aic_main frame leaves the stack
# misaligned (rsp % 16 == 8) before each `call aic_*`; dropping the
# guards makes every libc call segfault. Verified by control test.
#
# Label names (aic_win_fmt_*, fmt_*, aic_argc, aic_argv, ...) are
# identical to the Windows bridge, so the generated .s is unchanged;
# only this file is selected on non-Windows platforms (aic_codegen.build).
#
# Reference: aic_wincrt_bridge.s (the known-good Windows CRT bridge).

    .section .rodata
aic_win_fmt_i_nl:
    .string "%s\n"
aic_win_fmt_i_sp:
    .string "%s "
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
    movq    %rdi, aic_argc(%rip)
    movq    %rsi, aic_argv(%rip)
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

    # codegen passes (rdi=nmemb, rsi=size) == SysV (rdi,rsi). Guard only.
    .globl aic_calloc
aic_calloc:
    subq    $40, %rsp
    call    calloc
    addq    $40, %rsp
    ret

    # codegen passes (rdi=n) == SysV. Guard only.
    .globl aic_malloc
aic_malloc:
    subq    $40, %rsp
    call    malloc
    addq    $40, %rsp
    ret

    # codegen passes (rdi=s) == SysV. Guard only.
    .globl aic_strlen
aic_strlen:
    subq    $40, %rsp
    call    strlen
    addq    $40, %rsp
    ret

    # codegen passes (rdi=s, rsi=endptr, rdx=base) == SysV (rdi,rsi,rdx).
    .globl aic_strtol
aic_strtol:
    subq    $40, %rsp
    call    strtoll
    addq    $40, %rsp
    ret

    # codegen passes (rdi=path, rsi=mode) == SysV.
    .globl aic_fopen
aic_fopen:
    subq    $40, %rsp
    call    fopen
    addq    $40, %rsp
    ret

    # codegen passes (rdi=fp) == SysV.
    .globl aic_ftell
aic_ftell:
    subq    $40, %rsp
    call    ftell
    addq    $40, %rsp
    ret

    # codegen passes (rdi=fp, rsi=off, rdx=whence) == SysV.
    .globl aic_fseek
aic_fseek:
    subq    $40, %rsp
    call    fseek
    addq    $40, %rsp
    ret

    # codegen passes (rdi=ptr, rsi=1, rdx=nmemb, rcx=stream); SysV fread
    # wants (rdi,rsi,rdx,r8). Only the 4th arg (stream) differs.
    .globl aic_fread
aic_fread:
    subq    $40, %rsp
    movq    %rcx, %r8
    call    fread
    addq    $40, %rsp
    ret

    # codegen passes (rdi=ptr, rsi=1, rdx=nmemb, rcx=stream); SysV fwrite
    # wants (rdi,rsi,rdx,r8).
    .globl aic_fwrite
aic_fwrite:
    subq    $40, %rsp
    movq    %rcx, %r8
    call    fwrite
    addq    $40, %rsp
    ret

    # codegen passes (rdi=fp) == SysV.
    .globl aic_fclose
aic_fclose:
    subq    $40, %rsp
    call    fclose
    addq    $40, %rsp
    ret

    # codegen passes (rdi=fmt, rsi=value) == SysV printf (rdi=fmt, rsi=value).
    .globl aic_printf
aic_printf:
    subq    $40, %rsp
    call    printf
    addq    $40, %rsp
    ret

    # codegen passes (rdi=buf, rsi=fmt, rdx=value) - already SysV sprintf
    # order (leaq fmt_d->rsi, value->rdx). Pure passthrough + alignment
    # guard. (Windows bridge instead remapped to rcx/rdx/r8.)
    .globl aic_sprintf
aic_sprintf:
    subq    $40, %rsp
    call    sprintf
    addq    $40, %rsp
    ret

    # codegen passes (rdi=prompt). Print prompt, flush, malloc 64,
    # scanf "%s" into it, return the pointer (caller owns it).
    # SysV: printf(fmt=prompt is NOT fmt; prompt is the arg) -> use fmt_err
    # as the format string to print the prompt, like the Windows bridge.
    .globl aic_input
aic_input:
    subq    $40, %rsp
    movq    %rdi, %rsi                # prompt -> printf arg2
    leaq    aic_win_fmt_err(%rip), %rdi  # fmt "%s" -> printf arg1
    call    printf
    movq    stdout(%rip), %rdi        # fflush(stdout FILE*) — literal 1 is the fd, not the FILE*; static glibc dereferences it and faults
    call    fflush
    movq    $64, %rdi                 # malloc(64)
    call    malloc
    movq    %rax, %rsi                # buffer -> scanf arg2
    movq    %rax, 32(%rsp)
    leaq    aic_input_fmt(%rip), %rdi  # fmt "%s" -> scanf arg1
    call    scanf
    movq    32(%rsp), %rax            # return buffer
    addq    $40, %rsp
    ret
aic_input_fmt:
    .string "%s"

    # codegen passes (rdi=p) == SysV.
    .globl aic_free
aic_free:
    subq    $40, %rsp
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

    # codegen passes (rdi=msg). SysV printf(fmt, msg): arg1=fmt, arg2=msg.
    .globl aic_runtime_error
aic_runtime_error:
    subq    $40, %rsp
    movq    %rdi, %rsi                # msg -> printf arg2
    leaq    aic_win_fmt_err(%rip), %rdi  # fmt "%s" -> printf arg1
    call    printf
    movq    $1, %rdi                  # exit(1)
    call    exit
    addq    $40, %rsp
    ret
