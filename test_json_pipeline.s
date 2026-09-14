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
    call    aicfn_test_runner_init
    movq    %rax, -120(%rbp)
    leaq    aicstr_0(%rip), %rax
    pushq   %rax
    popq    %rdi
    call    aicfn_json_parse
    movq    %rax, -64(%rbp)
    movq    -120(%rbp), %rax
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
    movq    -120(%rbp), %rax
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
    movq    -120(%rbp), %rax
    pushq   %rax
    movq    -64(%rbp), %rax
    pushq   %rax
    popq    %rdi
    call    aicfn_json_stringify
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
    movq    -120(%rbp), %rax
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
    movq    %rax, -88(%rbp)
    movq    -120(%rbp), %rax
    pushq   %rax
    movq    -88(%rbp), %rax
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
    movq    -120(%rbp), %rax
    pushq   %rax
    movq    -88(%rbp), %rax
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
    movq    -120(%rbp), %rax
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
    movq    -120(%rbp), %rax
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
    movq    %rax, -80(%rbp)
    movq    -120(%rbp), %rax
    pushq   %rax
    movq    -80(%rbp), %rax
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
    movq    -120(%rbp), %rax
    pushq   %rax
    movq    -80(%rbp), %rax
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
    movq    -120(%rbp), %rax
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
    movq    -120(%rbp), %rax
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
    movq    -120(%rbp), %rax
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
    movq    -120(%rbp), %rax
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
    movq    %rax, -104(%rbp)
    movq    -104(%rbp), %rax
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
    movq    -104(%rbp), %rax
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
    movq    -104(%rbp), %rax
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
    movq    -104(%rbp), %rax
    pushq   %rax
    popq    %rdi
    call    aicfn_json_stringify
    movq    %rax, -96(%rbp)
    movq    -96(%rbp), %rax
    pushq   %rax
    popq    %rdi
    call    aicfn_json_parse
    movq    %rax, -72(%rbp)
    movq    -120(%rbp), %rax
    pushq   %rax
    movq    -72(%rbp), %rax
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
    movq    -120(%rbp), %rax
    pushq   %rax
    movq    -72(%rbp), %rax
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
    movq    -120(%rbp), %rax
    pushq   %rax
    movq    -72(%rbp), %rax
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
    movq    -72(%rbp), %rax
    pushq   %rax
    leaq    aicstr_21(%rip), %rax
    pushq   %rax
    popq    %rsi
    popq    %rdi
    call    aicfn_json_obj_get
    movq    %rax, -128(%rbp)
    movq    -120(%rbp), %rax
    pushq   %rax
    movq    -128(%rbp), %rax
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
    movq    -72(%rbp), %rax
    pushq   %rax
    leaq    aicstr_23(%rip), %rax
    pushq   %rax
    popq    %rsi
    popq    %rdi
    call    aicfn_json_obj_get
    movq    %rax, -136(%rbp)
    movq    -120(%rbp), %rax
    pushq   %rax
    movq    -136(%rbp), %rax
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
    movq    %rax, -112(%rbp)
    movq    -112(%rbp), %rax
    pushq   %rax
    popq    %rdi
    call    aicfn_json_parse
    movq    %rax, -32(%rbp)
    movq    -120(%rbp), %rax
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
    movq    -120(%rbp), %rax
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
    jne      .Lscshort90
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
    jmp     .Lscend91
.Lscshort90:
    movq    $1, %rax
.Lscend91:
    testq   %rax, %rax
    je      .Lelse88
    movq    $0, %rax
    jmp     .Lret_str_char_at
    jmp     .Lendif89
.Lelse88:
.Lendif89:
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
    je      .Lelse92
    movq    $0, %rax
    jmp     .Lret_str_eq
    jmp     .Lendif93
.Lelse92:
.Lendif93:
    movq    $0, %rax
    movq    %rax, -32(%rbp)
    movq    $0, %rax
    movq    %rax, -24(%rbp)
.Lwtop94:
    movq    -24(%rbp), %rax
    pushq   %rax
    movq    $0, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lscshort96
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
    jmp     .Lscend97
.Lscshort96:
    movq    $0, %rax
.Lscend97:
    testq   %rax, %rax
    je      .Lwend95
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
    je      .Lelse98
    movq    $1, %rax
    movq    %rax, -24(%rbp)
    jmp     .Lendif99
.Lelse98:
.Lendif99:
    movq    -32(%rbp), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, -32(%rbp)
    jmp     .Lwtop94
.Lwend95:
    movq    -24(%rbp), %rax
    pushq   %rax
    movq    $0, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lternelse100
    movq    $1, %rax
    jmp     .Lternend101
.Lternelse100:
    movq    $0, %rax
.Lternend101:
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
    je      .Lternelse102
    movq    -48(%rbp), %rax
    jmp     .Lternend103
.Lternelse102:
    movq    -56(%rbp), %rax
.Lternend103:
    movq    %rax, -64(%rbp)
    movq    $0, %rax
    movq    %rax, -40(%rbp)
    movq    $0, %rax
    movq    %rax, -72(%rbp)
.Lwtop104:
    movq    -72(%rbp), %rax
    pushq   %rax
    movq    $0, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lscshort106
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
    jmp     .Lscend107
.Lscshort106:
    movq    $0, %rax
.Lscend107:
    testq   %rax, %rax
    je      .Lwend105
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
    je      .Lelse108
    movq    -24(%rbp), %rax
    pushq   %rax
    movq    -32(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    subq    %rbx, %rax
    movq    %rax, -72(%rbp)
    jmp     .Lendif109
.Lelse108:
.Lendif109:
    movq    -40(%rbp), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, -40(%rbp)
    jmp     .Lwtop104
.Lwend105:
    movq    -72(%rbp), %rax
    pushq   %rax
    movq    $0, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    setne    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse110
    movq    -72(%rbp), %rax
    jmp     .Lret_str_cmp
    jmp     .Lendif111
.Lelse110:
.Lendif111:
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
    jne     .Lallocok112
    jmp     .Lruntimeerror
.Lallocok112:
    movq    %rax, -24(%rbp)
    movq    $0, -32(%rbp)
.Lmaptop113:
    movq    -32(%rbp), %rax
    pushq   %rax
    movq    -48(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    jge     .Lmapend114
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
    jmp     .Lmaptop113
.Lmapend114:
    movq    $0, -40(%rbp)
.Lmaptop115:
    movq    -40(%rbp), %rax
    pushq   %rax
    movq    -56(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    jge     .Lmapend116
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
    jmp     .Lmaptop115
.Lmapend116:
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
.Lwtop117:
    movq    -40(%rbp), %rax
    pushq   %rax
    movq    $-1, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lscshort119
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
    jmp     .Lscend120
.Lscshort119:
    movq    $0, %rax
.Lscend120:
    testq   %rax, %rax
    je      .Lwend118
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
    je      .Lelse121
    movq    -24(%rbp), %rax
    movq    %rax, -40(%rbp)
    jmp     .Lendif122
.Lelse121:
.Lendif122:
    movq    -24(%rbp), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, -24(%rbp)
    jmp     .Lwtop117
.Lwend118:
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
    je      .Lelse123
    movq    $0, %rax
    jmp     .Lret_str_starts_with
    jmp     .Lendif124
.Lelse123:
.Lendif124:
    movq    $0, %rax
    movq    %rax, -24(%rbp)
    movq    $1, %rax
    movq    %rax, -32(%rbp)
.Lwtop125:
    movq    -32(%rbp), %rax
    pushq   %rax
    movq    $0, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    setne    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lscshort127
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
    jmp     .Lscend128
.Lscshort127:
    movq    $0, %rax
.Lscend128:
    testq   %rax, %rax
    je      .Lwend126
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
    je      .Lelse129
    movq    $0, %rax
    movq    %rax, -32(%rbp)
    jmp     .Lendif130
.Lelse129:
.Lendif130:
    movq    -24(%rbp), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, -24(%rbp)
    jmp     .Lwtop125
.Lwend126:
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
    je      .Lelse131
    movq    $0, %rax
    jmp     .Lret_str_ends_with
    jmp     .Lendif132
.Lelse131:
.Lendif132:
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
.Lwtop133:
    movq    -40(%rbp), %rax
    pushq   %rax
    movq    $0, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    setne    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lscshort135
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
    jmp     .Lscend136
.Lscshort135:
    movq    $0, %rax
.Lscend136:
    testq   %rax, %rax
    je      .Lwend134
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
    je      .Lelse137
    movq    $0, %rax
    movq    %rax, -40(%rbp)
    jmp     .Lendif138
.Lelse137:
.Lendif138:
    movq    -24(%rbp), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, -24(%rbp)
    jmp     .Lwtop133
.Lwend134:
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
    jne     .Lallocok139
    jmp     .Lruntimeerror
.Lallocok139:
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
    jne     .Lallocok140
    jmp     .Lruntimeerror
.Lallocok140:
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
    je      .Lternelse141
    movq    $4, %rax
    jmp     .Lternend142
.Lternelse141:
    movq    -8(%rbp), %rax
.Lternend142:
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
    jne     .Lallocok143
    jmp     .Lruntimeerror
.Lallocok143:
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
    jne     .Lallocok144
    jmp     .Lruntimeerror
.Lallocok144:
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
    jne      .Lscshort147
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
    jmp     .Lscend148
.Lscshort147:
    movq    $1, %rax
.Lscend148:
    testq   %rax, %rax
    je      .Lelse145
    movq    $0, %rax
    jmp     .Lret_vec_get
    jmp     .Lendif146
.Lelse145:
.Lendif146:
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
    jne      .Lscshort151
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
    jmp     .Lscend152
.Lscshort151:
    movq    $1, %rax
.Lscend152:
    testq   %rax, %rax
    je      .Lelse149
    movq    $0, %rax
    jmp     .Lret_vec_set
    jmp     .Lendif150
.Lelse149:
.Lendif150:
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
    je      .Lelse153
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
    jne     .Lallocok155
    jmp     .Lruntimeerror
.Lallocok155:
    movq    %rax, -64(%rbp)
    movq    $0, -40(%rbp)
.Lmaptop156:
    movq    -40(%rbp), %rax
    pushq   %rax
    movq    -48(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    jge     .Lmapend157
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
    jmp     .Lmaptop156
.Lmapend157:
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
    jmp     .Lendif154
.Lelse153:
.Lendif154:
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
    je      .Lelse158
    movq    $0, %rax
    jmp     .Lret_vec_pop
    jmp     .Lendif159
.Lelse158:
.Lendif159:
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
    jne      .Lscshort162
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
    jmp     .Lscend163
.Lscshort162:
    movq    $1, %rax
.Lscend163:
    testq   %rax, %rax
    je      .Lelse160
    leaq    aicstr_31(%rip), %rax
    jmp     .Lret_vec_get_ptr
    jmp     .Lendif161
.Lelse160:
.Lendif161:
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
    jne      .Lscshort166
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
    jmp     .Lscend167
.Lscshort166:
    movq    $1, %rax
.Lscend167:
    testq   %rax, %rax
    je      .Lelse164
    movq    $0, %rax
    jmp     .Lret_vec_set_ptr
    jmp     .Lendif165
.Lelse164:
.Lendif165:
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
    je      .Lelse168
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
    jne     .Lallocok170
    jmp     .Lruntimeerror
.Lallocok170:
    movq    %rax, -64(%rbp)
    movq    $0, -40(%rbp)
.Lmaptop171:
    movq    -40(%rbp), %rax
    pushq   %rax
    movq    -48(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    jge     .Lmapend172
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
    jmp     .Lmaptop171
.Lmapend172:
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
    jmp     .Lendif169
.Lelse168:
.Lendif169:
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
    je      .Lelse173
    leaq    aicstr_31(%rip), %rax
    jmp     .Lret_vec_pop_ptr
    jmp     .Lendif174
.Lelse173:
.Lendif174:
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
.Lmaptop175:
    movq    -32(%rbp), %rax
    pushq   %rax
    movq    -40(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    jge     .Lmapend176
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
    jmp     .Lmaptop175
.Lmapend176:
    movq    -24(%rbp), %rax
    pushq   %rax
    movq    $0, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    setl    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse177
    movq    $0, %rax
    pushq   %rax
    movq    -24(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    subq    %rbx, %rax
    movq    %rax, -24(%rbp)
    jmp     .Lendif178
.Lelse177:
.Lendif178:
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
    je      .Lternelse179
    movq    $16, %rax
    jmp     .Lternend180
.Lternelse179:
    movq    -8(%rbp), %rax
.Lternend180:
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
    jne     .Lallocok181
    jmp     .Lruntimeerror
.Lallocok181:
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
    jne     .Lallocok182
    jmp     .Lruntimeerror
.Lallocok182:
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
    jne     .Lallocok183
    jmp     .Lruntimeerror
.Lallocok183:
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
.Lwtop184:
    movq    -32(%rbp), %rax
    pushq   %rax
    movq    $0, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lscshort186
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
    jmp     .Lscend187
.Lscshort186:
    movq    $0, %rax
.Lscend187:
    testq   %rax, %rax
    je      .Lwend185
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
    je      .Lelse188
    movq    $-1, %rax
    movq    %rax, -32(%rbp)
    jmp     .Lendif189
.Lelse188:
    movq    -56(%rbp), %rax
    pushq   %rax
    movq    -16(%rbp), %rax
    pushq   %rax
    popq    %rsi
    popq    %rdi
    call    aicfn_str_eq
    testq   %rax, %rax
    je      .Lelse190
    movq    -96(%rbp), %rax
    pushq   %rax
    movq    -48(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    movq    (%rax,%rbx,8), %rax
    movq    %rax, -80(%rbp)
    movq    $1, %rax
    movq    %rax, -32(%rbp)
    jmp     .Lendif191
.Lelse190:
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
.Lendif191:
.Lendif189:
    jmp     .Lwtop184
.Lwend185:
    movq    -32(%rbp), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse192
    movq    -80(%rbp), %rax
    jmp     .Lret_map_get
    jmp     .Lendif193
.Lelse192:
    movq    $0, %rax
    jmp     .Lret_map_get
.Lendif193:
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
.Lwtop194:
    movq    -32(%rbp), %rax
    pushq   %rax
    movq    $0, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lscshort196
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
    jmp     .Lscend197
.Lscshort196:
    movq    $0, %rax
.Lscend197:
    testq   %rax, %rax
    je      .Lwend195
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
    je      .Lelse198
    movq    $-1, %rax
    movq    %rax, -32(%rbp)
    jmp     .Lendif199
.Lelse198:
    movq    -56(%rbp), %rax
    pushq   %rax
    movq    -16(%rbp), %rax
    pushq   %rax
    popq    %rsi
    popq    %rdi
    call    aicfn_str_eq
    testq   %rax, %rax
    je      .Lelse200
    movq    $1, %rax
    movq    %rax, -32(%rbp)
    jmp     .Lendif201
.Lelse200:
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
.Lendif201:
.Lendif199:
    jmp     .Lwtop194
.Lwend195:
    movq    -32(%rbp), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lternelse202
    movq    $1, %rax
    jmp     .Lternend203
.Lternelse202:
    movq    $0, %rax
.Lternend203:
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
    je      .Lelse204
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
    jne     .Lallocok206
    jmp     .Lruntimeerror
.Lallocok206:
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
    jne     .Lallocok207
    jmp     .Lruntimeerror
.Lallocok207:
    movq    %rax, -128(%rbp)
    movq    $0, -48(%rbp)
.Lmaptop208:
    movq    -48(%rbp), %rax
    pushq   %rax
    movq    -32(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    jge     .Lmapend209
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
    je      .Lelse210
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
.Lwtop212:
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
    je      .Lwend213
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
    jmp     .Lwtop212
.Lwend213:
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
    jmp     .Lendif211
.Lelse210:
.Lendif211:
    incq    -48(%rbp)
    jmp     .Lmaptop208
.Lmapend209:
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
    jmp     .Lendif205
.Lelse204:
.Lendif205:
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
.Lwtop214:
    movq    -152(%rbp), %rax
    pushq   %rax
    movq    $0, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lwend215
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
    je      .Lelse216
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
    jmp     .Lendif217
.Lelse216:
    movq    -64(%rbp), %rax
    pushq   %rax
    movq    -16(%rbp), %rax
    pushq   %rax
    popq    %rsi
    popq    %rdi
    call    aicfn_str_eq
    testq   %rax, %rax
    je      .Lelse218
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
    jmp     .Lendif219
.Lelse218:
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
.Lendif219:
.Lendif217:
    jmp     .Lwtop214
.Lwend215:
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
.Lmaptop220:
    movq    -24(%rbp), %rax
    pushq   %rax
    movq    -16(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    jge     .Lmapend221
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
    je      .Lelse222
    movq    -56(%rbp), %rax
    pushq   %rax
    movq    -32(%rbp), %rax
    pushq   %rax
    popq    %rsi
    popq    %rdi
    call    aicfn_vec_push
    jmp     .Lendif223
.Lelse222:
.Lendif223:
    incq    -24(%rbp)
    jmp     .Lmaptop220
.Lmapend221:
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
.Lmaptop224:
    movq    -24(%rbp), %rax
    pushq   %rax
    movq    -16(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    jge     .Lmapend225
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
    je      .Lelse226
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
    jmp     .Lendif227
.Lelse226:
.Lendif227:
    incq    -24(%rbp)
    jmp     .Lmaptop224
.Lmapend225:
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
.Lwtop228:
    movq    -32(%rbp), %rax
    pushq   %rax
    movq    $0, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lscshort230
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
    jmp     .Lscend231
.Lscshort230:
    movq    $0, %rax
.Lscend231:
    testq   %rax, %rax
    je      .Lwend229
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
    je      .Lelse232
    movq    $-1, %rax
    movq    %rax, -32(%rbp)
    jmp     .Lendif233
.Lelse232:
    movq    -56(%rbp), %rax
    pushq   %rax
    movq    -16(%rbp), %rax
    pushq   %rax
    popq    %rsi
    popq    %rdi
    call    aicfn_str_eq
    testq   %rax, %rax
    je      .Lelse234
    movq    -96(%rbp), %rax
    pushq   %rax
    movq    -48(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    movq    (%rax,%rbx,8), %rax
    movq    %rax, -80(%rbp)
    movq    $1, %rax
    movq    %rax, -32(%rbp)
    jmp     .Lendif235
.Lelse234:
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
.Lendif235:
.Lendif233:
    jmp     .Lwtop228
.Lwend229:
    movq    -32(%rbp), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse236
    movq    -80(%rbp), %rax
    jmp     .Lret_map_get_ptr
    jmp     .Lendif237
.Lelse236:
    leaq    aicstr_31(%rip), %rax
    jmp     .Lret_map_get_ptr
.Lendif237:
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
    je      .Lelse238
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
    jne     .Lallocok240
    jmp     .Lruntimeerror
.Lallocok240:
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
    jne     .Lallocok241
    jmp     .Lruntimeerror
.Lallocok241:
    movq    %rax, -128(%rbp)
    movq    $0, -48(%rbp)
.Lmaptop242:
    movq    -48(%rbp), %rax
    pushq   %rax
    movq    -32(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    jge     .Lmapend243
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
    je      .Lelse244
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
.Lwtop246:
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
    je      .Lwend247
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
    jmp     .Lwtop246
.Lwend247:
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
    jmp     .Lendif245
.Lelse244:
.Lendif245:
    incq    -48(%rbp)
    jmp     .Lmaptop242
.Lmapend243:
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
    jmp     .Lendif239
.Lelse238:
.Lendif239:
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
.Lwtop248:
    movq    -152(%rbp), %rax
    pushq   %rax
    movq    $0, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lwend249
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
    je      .Lelse250
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
    jmp     .Lendif251
.Lelse250:
    movq    -64(%rbp), %rax
    pushq   %rax
    movq    -16(%rbp), %rax
    pushq   %rax
    popq    %rsi
    popq    %rdi
    call    aicfn_str_eq
    testq   %rax, %rax
    je      .Lelse252
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
    jmp     .Lendif253
.Lelse252:
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
.Lendif253:
.Lendif251:
    jmp     .Lwtop248
.Lwend249:
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
    jne     .Lallocok254
    jmp     .Lruntimeerror
.Lallocok254:
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
    je      .Lternelse255
    movq    $1, %rax
    jmp     .Lternend256
.Lternelse255:
    movq    $0, %rax
.Lternend256:
    pushq   %rax
    leaq    aicstr_31(%rip), %rax
    pushq   %rax
    movq    $0, %rax
    pushq   %rax
    movq    $33, %rdi
    movq    $1, %rsi
    call    aic_calloc
    testq   %rax, %rax
    jne     .Lallocok257
    jmp     .Lruntimeerror
.Lallocok257:
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
    jne     .Lallocok258
    jmp     .Lruntimeerror
.Lallocok258:
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
    jne     .Lallocok259
    jmp     .Lruntimeerror
.Lallocok259:
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
    jne     .Lallocok260
    jmp     .Lruntimeerror
.Lallocok260:
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
    jne     .Lallocok261
    jmp     .Lruntimeerror
.Lallocok261:
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
.Lwtop262:
    movq    -24(%rbp), %rax
    testq   %rax, %rax
    je      .Lscshort264
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
    jmp     .Lscend265
.Lscshort264:
    movq    $0, %rax
.Lscend265:
    testq   %rax, %rax
    je      .Lwend263
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
    jne      .Lscshort270
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
    jmp     .Lscend271
.Lscshort270:
    movq    $1, %rax
.Lscend271:
    testq   %rax, %rax
    jne      .Lscshort268
    movq    -16(%rbp), %rax
    pushq   %rax
    movq    $10, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    jne      .Lscshort272
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
    jmp     .Lscend273
.Lscshort272:
    movq    $1, %rax
.Lscend273:
    testq   %rax, %rax
    setne   %al
    movzbq  %al, %rax
    jmp     .Lscend269
.Lscshort268:
    movq    $1, %rax
.Lscend269:
    testq   %rax, %rax
    je      .Lelse266
    movq    -40(%rbp), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, -40(%rbp)
    jmp     .Lendif267
.Lelse266:
    movq    $0, %rax
    movq    %rax, -24(%rbp)
.Lendif267:
    jmp     .Lwtop262
.Lwend263:
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
    je      .Lelse274
    movq    $0, %rax
    jmp     .Lret_json_peek
    jmp     .Lendif275
.Lelse274:
.Lendif275:
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
    je      .Lelse276
    movq    $0, %rax
    jmp     .Lret_json_next
    jmp     .Lendif277
.Lelse276:
.Lendif277:
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
    jne     .Lallocok278
    jmp     .Lruntimeerror
.Lallocok278:
    movq    %rax, -16(%rbp)
    movq    $0, %rax
    movq    %rax, -72(%rbp)
    movq    $0, %rax
    movq    %rax, -40(%rbp)
.Lwtop279:
    movq    -40(%rbp), %rax
    pushq   %rax
    movq    $0, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lscshort281
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
    jmp     .Lscend282
.Lscshort281:
    movq    $0, %rax
.Lscend282:
    testq   %rax, %rax
    je      .Lwend280
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
    je      .Lelse283
    movq    $1, %rax
    movq    %rax, -40(%rbp)
    jmp     .Lendif284
.Lelse283:
    movq    -24(%rbp), %rax
    pushq   %rax
    movq    $92, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse285
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
    je      .Lelse287
    movq    $10, %rax
    movq    %rax, -32(%rbp)
    jmp     .Lendif288
.Lelse287:
.Lendif288:
    movq    -48(%rbp), %rax
    pushq   %rax
    movq    $116, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse289
    movq    $9, %rax
    movq    %rax, -32(%rbp)
    jmp     .Lendif290
.Lelse289:
.Lendif290:
    movq    -48(%rbp), %rax
    pushq   %rax
    movq    $114, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse291
    movq    $13, %rax
    movq    %rax, -32(%rbp)
    jmp     .Lendif292
.Lelse291:
.Lendif292:
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
    jmp     .Lendif286
.Lelse285:
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
.Lendif286:
.Lendif284:
    jmp     .Lwtop279
.Lwend280:
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
    jne     .Lallocok293
    jmp     .Lruntimeerror
.Lallocok293:
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
    je      .Lelse294
    movq    $-1, %rax
    movq    %rax, -40(%rbp)
    movq    -8(%rbp), %rax
    pushq   %rax
    popq    %rdi
    call    aicfn_json_next
    jmp     .Lendif295
.Lelse294:
.Lendif295:
    movq    $0, %rax
    movq    %rax, -56(%rbp)
    movq    $1, %rax
    movq    %rax, -32(%rbp)
.Lwtop296:
    movq    -32(%rbp), %rax
    testq   %rax, %rax
    je      .Lwend297
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
    je      .Lscshort300
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
    jmp     .Lscend301
.Lscshort300:
    movq    $0, %rax
.Lscend301:
    testq   %rax, %rax
    je      .Lelse298
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
    jmp     .Lendif299
.Lelse298:
    movq    $0, %rax
    movq    %rax, -32(%rbp)
.Lendif299:
    jmp     .Lwtop296
.Lwend297:
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
    je      .Lelse302
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
    jmp     .Lendif303
.Lelse302:
.Lendif303:
    movq    -16(%rbp), %rax
    pushq   %rax
    movq    $102, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse304
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
    jmp     .Lendif305
.Lelse304:
.Lendif305:
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
    je      .Lelse306
    movq    -8(%rbp), %rax
    pushq   %rax
    popq    %rdi
    call    aicfn_json_next
    movq    -16(%rbp), %rax
    jmp     .Lret_json_parse_arr
    jmp     .Lendif307
.Lelse306:
.Lendif307:
    movq    $1, %rax
    movq    %rax, -40(%rbp)
.Lwtop308:
    movq    -40(%rbp), %rax
    testq   %rax, %rax
    je      .Lwend309
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
    je      .Lelse310
    jmp     .Lendif311
.Lelse310:
    movq    -48(%rbp), %rax
    pushq   %rax
    movq    $93, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse312
    movq    $0, %rax
    movq    %rax, -40(%rbp)
    jmp     .Lendif313
.Lelse312:
    movq    $0, %rax
    movq    %rax, -40(%rbp)
.Lendif313:
.Lendif311:
    jmp     .Lwtop308
.Lwend309:
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
    je      .Lelse314
    movq    -8(%rbp), %rax
    pushq   %rax
    popq    %rdi
    call    aicfn_json_next
    movq    -56(%rbp), %rax
    jmp     .Lret_json_parse_obj
    jmp     .Lendif315
.Lelse314:
.Lendif315:
    movq    $1, %rax
    movq    %rax, -40(%rbp)
.Lwtop316:
    movq    -40(%rbp), %rax
    testq   %rax, %rax
    je      .Lwend317
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
    je      .Lelse318
    jmp     .Lendif319
.Lelse318:
    movq    -48(%rbp), %rax
    pushq   %rax
    movq    $125, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse320
    movq    $0, %rax
    movq    %rax, -40(%rbp)
    jmp     .Lendif321
.Lelse320:
    movq    $0, %rax
    movq    %rax, -40(%rbp)
.Lendif321:
.Lendif319:
    jmp     .Lwtop316
.Lwend317:
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
    je      .Lelse322
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
    jmp     .Lendif323
.Lelse322:
.Lendif323:
    movq    -16(%rbp), %rax
    pushq   %rax
    movq    $123, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse324
    movq    -8(%rbp), %rax
    pushq   %rax
    popq    %rdi
    call    aicfn_json_parse_obj
    jmp     .Lret_json_parse_val
    jmp     .Lendif325
.Lelse324:
.Lendif325:
    movq    -16(%rbp), %rax
    pushq   %rax
    movq    $91, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse326
    movq    -8(%rbp), %rax
    pushq   %rax
    popq    %rdi
    call    aicfn_json_parse_arr
    jmp     .Lret_json_parse_val
    jmp     .Lendif327
.Lelse326:
.Lendif327:
    movq    -16(%rbp), %rax
    pushq   %rax
    movq    $116, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    jne      .Lscshort330
    movq    -16(%rbp), %rax
    pushq   %rax
    movq    $102, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    jne      .Lscshort332
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
    jmp     .Lscend333
.Lscshort332:
    movq    $1, %rax
.Lscend333:
    testq   %rax, %rax
    setne   %al
    movzbq  %al, %rax
    jmp     .Lscend331
.Lscshort330:
    movq    $1, %rax
.Lscend331:
    testq   %rax, %rax
    je      .Lelse328
    movq    -8(%rbp), %rax
    pushq   %rax
    popq    %rdi
    call    aicfn_json_parse_bool_or_null
    jmp     .Lret_json_parse_val
    jmp     .Lendif329
.Lelse328:
.Lendif329:
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
    jne     .Lallocok334
    jmp     .Lruntimeerror
.Lallocok334:
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
    je      .Lelse335
    leaq    aicstr_11(%rip), %rax
    jmp     .Lret_json_stringify
    jmp     .Lendif336
.Lelse335:
.Lendif336:
    movq    -160(%rbp), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse337
    movq    -8(%rbp), %rax
    movq    8(%rax), %rax
    testq   %rax, %rax
    je      .Lternelse339
    leaq    aicstr_6(%rip), %rax
    jmp     .Lternend340
.Lternelse339:
    leaq    aicstr_9(%rip), %rax
.Lternend340:
    jmp     .Lret_json_stringify
    jmp     .Lendif338
.Lelse337:
.Lendif338:
    movq    -160(%rbp), %rax
    pushq   %rax
    movq    $2, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse341
    movq    -8(%rbp), %rax
    movq    8(%rax), %rax
    movq    %rax, %r12
    movq    $24, %rdi
    call    aic_malloc
    testq   %rax, %rax
    jne     .Lallocok343
    jmp     .Lruntimeerror
.Lallocok343:
    movq    %rax, %r13
    movq    %r13, %rdi
    leaq    fmt_d(%rip), %rsi
    movq    %r12, %rdx
    xorl    %eax, %eax
    call    aic_sprintf
    movq    %r13, %rax
    jmp     .Lret_json_stringify
    jmp     .Lendif342
.Lelse341:
.Lendif342:
    movq    -160(%rbp), %rax
    pushq   %rax
    movq    $3, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse344
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
    jmp     .Lendif345
.Lelse344:
.Lendif345:
    movq    -160(%rbp), %rax
    pushq   %rax
    movq    $4, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse346
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
.Lmaptop348:
    movq    -48(%rbp), %rax
    pushq   %rax
    movq    -88(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    jge     .Lmapend349
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
    je      .Lelse350
    movq    -96(%rbp), %rax
    pushq   %rax
    leaq    aicstr_33(%rip), %rax
    pushq   %rax
    popq    %rsi
    popq    %rdi
    call    aicfn_str_cat
    movq    %rax, -96(%rbp)
    jmp     .Lendif351
.Lelse350:
.Lendif351:
    incq    -48(%rbp)
    jmp     .Lmaptop348
.Lmapend349:
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
    jmp     .Lendif347
.Lelse346:
.Lendif347:
    movq    -160(%rbp), %rax
    pushq   %rax
    movq    $5, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse352
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
.Lmaptop354:
    movq    -48(%rbp), %rax
    pushq   %rax
    movq    -24(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    jge     .Lmapend355
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
    je      .Lelse356
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
    je      .Lelse358
    movq    -96(%rbp), %rax
    pushq   %rax
    leaq    aicstr_33(%rip), %rax
    pushq   %rax
    popq    %rsi
    popq    %rdi
    call    aicfn_str_cat
    movq    %rax, -96(%rbp)
    jmp     .Lendif359
.Lelse358:
    movq    $0, %rax
    movq    %rax, -40(%rbp)
.Lendif359:
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
    jmp     .Lendif357
.Lelse356:
.Lendif357:
    incq    -48(%rbp)
    jmp     .Lmaptop354
.Lmapend355:
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
    jmp     .Lendif353
.Lelse352:
.Lendif353:
    leaq    aicstr_11(%rip), %rax
    jmp     .Lret_json_stringify
    movq    $0, %rax
.Lret_json_stringify:
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
    jne      .Lscshort362
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
    jmp     .Lscend363
.Lscshort362:
    movq    $1, %rax
.Lscend363:
    testq   %rax, %rax
    je      .Lelse360
    movq    $0, %rax
    jmp     .Lret_str_char_at
    jmp     .Lendif361
.Lelse360:
.Lendif361:
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
    je      .Lelse364
    movq    $0, %rax
    jmp     .Lret_str_eq
    jmp     .Lendif365
.Lelse364:
.Lendif365:
    movq    $0, %rax
    movq    %rax, -32(%rbp)
    movq    $0, %rax
    movq    %rax, -24(%rbp)
.Lwtop366:
    movq    -24(%rbp), %rax
    pushq   %rax
    movq    $0, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lscshort368
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
    jmp     .Lscend369
.Lscshort368:
    movq    $0, %rax
.Lscend369:
    testq   %rax, %rax
    je      .Lwend367
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
    je      .Lelse370
    movq    $1, %rax
    movq    %rax, -24(%rbp)
    jmp     .Lendif371
.Lelse370:
.Lendif371:
    movq    -32(%rbp), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, -32(%rbp)
    jmp     .Lwtop366
.Lwend367:
    movq    -24(%rbp), %rax
    pushq   %rax
    movq    $0, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lternelse372
    movq    $1, %rax
    jmp     .Lternend373
.Lternelse372:
    movq    $0, %rax
.Lternend373:
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
    je      .Lternelse374
    movq    -48(%rbp), %rax
    jmp     .Lternend375
.Lternelse374:
    movq    -56(%rbp), %rax
.Lternend375:
    movq    %rax, -64(%rbp)
    movq    $0, %rax
    movq    %rax, -40(%rbp)
    movq    $0, %rax
    movq    %rax, -72(%rbp)
.Lwtop376:
    movq    -72(%rbp), %rax
    pushq   %rax
    movq    $0, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lscshort378
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
    jmp     .Lscend379
.Lscshort378:
    movq    $0, %rax
.Lscend379:
    testq   %rax, %rax
    je      .Lwend377
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
    je      .Lelse380
    movq    -24(%rbp), %rax
    pushq   %rax
    movq    -32(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    subq    %rbx, %rax
    movq    %rax, -72(%rbp)
    jmp     .Lendif381
.Lelse380:
.Lendif381:
    movq    -40(%rbp), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, -40(%rbp)
    jmp     .Lwtop376
.Lwend377:
    movq    -72(%rbp), %rax
    pushq   %rax
    movq    $0, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    setne    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lelse382
    movq    -72(%rbp), %rax
    jmp     .Lret_str_cmp
    jmp     .Lendif383
.Lelse382:
.Lendif383:
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
    jne     .Lallocok384
    jmp     .Lruntimeerror
.Lallocok384:
    movq    %rax, -24(%rbp)
    movq    $0, -32(%rbp)
.Lmaptop385:
    movq    -32(%rbp), %rax
    pushq   %rax
    movq    -48(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    jge     .Lmapend386
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
    jmp     .Lmaptop385
.Lmapend386:
    movq    $0, -40(%rbp)
.Lmaptop387:
    movq    -40(%rbp), %rax
    pushq   %rax
    movq    -56(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    jge     .Lmapend388
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
    jmp     .Lmaptop387
.Lmapend388:
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
.Lwtop389:
    movq    -40(%rbp), %rax
    pushq   %rax
    movq    $-1, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    sete    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lscshort391
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
    jmp     .Lscend392
.Lscshort391:
    movq    $0, %rax
.Lscend392:
    testq   %rax, %rax
    je      .Lwend390
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
    je      .Lelse393
    movq    -24(%rbp), %rax
    movq    %rax, -40(%rbp)
    jmp     .Lendif394
.Lelse393:
.Lendif394:
    movq    -24(%rbp), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, -24(%rbp)
    jmp     .Lwtop389
.Lwend390:
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
    je      .Lelse395
    movq    $0, %rax
    jmp     .Lret_str_starts_with
    jmp     .Lendif396
.Lelse395:
.Lendif396:
    movq    $0, %rax
    movq    %rax, -24(%rbp)
    movq    $1, %rax
    movq    %rax, -32(%rbp)
.Lwtop397:
    movq    -32(%rbp), %rax
    pushq   %rax
    movq    $0, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    setne    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lscshort399
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
    jmp     .Lscend400
.Lscshort399:
    movq    $0, %rax
.Lscend400:
    testq   %rax, %rax
    je      .Lwend398
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
    je      .Lelse401
    movq    $0, %rax
    movq    %rax, -32(%rbp)
    jmp     .Lendif402
.Lelse401:
.Lendif402:
    movq    -24(%rbp), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, -24(%rbp)
    jmp     .Lwtop397
.Lwend398:
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
    je      .Lelse403
    movq    $0, %rax
    jmp     .Lret_str_ends_with
    jmp     .Lendif404
.Lelse403:
.Lendif404:
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
.Lwtop405:
    movq    -40(%rbp), %rax
    pushq   %rax
    movq    $0, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    setne    %al
    movzbq  %al, %rax
    testq   %rax, %rax
    je      .Lscshort407
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
    jmp     .Lscend408
.Lscshort407:
    movq    $0, %rax
.Lscend408:
    testq   %rax, %rax
    je      .Lwend406
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
    je      .Lelse409
    movq    $0, %rax
    movq    %rax, -40(%rbp)
    jmp     .Lendif410
.Lelse409:
.Lendif410:
    movq    -24(%rbp), %rax
    pushq   %rax
    movq    $1, %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, -24(%rbp)
    jmp     .Lwtop405
.Lwend406:
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
    jne     .Lallocok411
    jmp     .Lruntimeerror
.Lallocok411:
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
    jne     .Lallocok412
    jmp     .Lruntimeerror
.Lallocok412:
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
    jne     .Lallocok413
    jmp     .Lruntimeerror
.Lallocok413:
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
    je      .Lelse414
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
    jmp     .Lendif415
.Lelse414:
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
.Lendif415:
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
    je      .Lelse416
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
    jmp     .Lendif417
.Lelse416:
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
.Lendif417:
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
    je      .Lternelse418
    movq    $1, %rax
    jmp     .Lternend419
.Lternelse418:
    movq    $0, %rax
.Lternend419:
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
    je      .Lelse420
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
    jmp     .Lendif421
.Lelse420:
    leaq    aicstr_53(%rip), %rax
    leaq    fmt_s_nl(%rip), %rdi
    movq    %rax, %rsi
    xorl    %eax, %eax
    call    aic_printf
.Lendif421:
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
    je      .Lternelse422
    movq    $0, %rax
    jmp     .Lternend423
.Lternelse422:
    movq    $1, %rax
.Lternend423:
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
