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
    .string "size="
aicstr_1:
    .string "bytes="
aicstr_2:
    .string "k="
runtimeerr_msg:
    .string "[ERR :code 501 :kind RUNTIME :msg IO_OR_ALLOC_FAILED]\n"
runtimeerr_msg_end:
    .equ runtimeerr_len, runtimeerr_msg_end - runtimeerr_msg - 1


    .text
    .globl aic_main
aic_main:
    pushq   %rbp
    movq    %rsp, %rbp
    subq    $32, %rsp
    movq    $0, -8(%rbp)
    movq    $0, -16(%rbp)
    movq    $0, -24(%rbp)
    movq    $240, %rax
    leaq    1(%rax), %rdi
    movq    $1, %rsi
    call    aic_calloc
    testq   %rax, %rax
    jne     .Lallocok1
    jmp     .Lruntimeerror
.Lallocok1:
    movq    %rax, -8(%rbp)
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    $101, %rax
    popq    %rbx
    movq    %rax, 0(%rbx)
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    $202, %rax
    popq    %rbx
    movq    %rax, 8(%rbx)
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    $303, %rax
    popq    %rbx
    movq    %rax, 16(%rbx)
    movq    -8(%rbp), %rax
    movq    0(%rax), %rax
    leaq    fmt_sp(%rip), %rdi
    movq    %rax, %rsi
    xorl    %eax, %eax
    call    aic_printf
    movq    -8(%rbp), %rax
    movq    8(%rax), %rax
    leaq    fmt_sp(%rip), %rdi
    movq    %rax, %rsi
    xorl    %eax, %eax
    call    aic_printf
    movq    -8(%rbp), %rax
    movq    16(%rax), %rax
    leaq    fmt_nl(%rip), %rdi
    movq    %rax, %rsi
    xorl    %eax, %eax
    call    aic_printf
    movq    $1, %rax
    movq    %rax, -16(%rbp)
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    -16(%rbp), %rax
    imulq   $24, %rax
    pushq   %rax
    movq    $404, %rax
    popq    %rcx
    popq    %rbx
    movq    %rax, 0(%rbx,%rcx)
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    -16(%rbp), %rax
    imulq   $24, %rax
    pushq   %rax
    movq    $505, %rax
    popq    %rcx
    popq    %rbx
    movq    %rax, 8(%rbx,%rcx)
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    -16(%rbp), %rax
    imulq   $24, %rax
    pushq   %rax
    movq    $606, %rax
    popq    %rcx
    popq    %rbx
    movq    %rax, 16(%rbx,%rcx)
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    -16(%rbp), %rax
    popq    %rbx
    imulq   $24, %rax
    movq    0(%rbx,%rax), %rax
    leaq    fmt_sp(%rip), %rdi
    movq    %rax, %rsi
    xorl    %eax, %eax
    call    aic_printf
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    -16(%rbp), %rax
    popq    %rbx
    imulq   $24, %rax
    movq    8(%rbx,%rax), %rax
    leaq    fmt_sp(%rip), %rdi
    movq    %rax, %rsi
    xorl    %eax, %eax
    call    aic_printf
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    -16(%rbp), %rax
    popq    %rbx
    imulq   $24, %rax
    movq    16(%rbx,%rax), %rax
    leaq    fmt_nl(%rip), %rdi
    movq    %rax, %rsi
    xorl    %eax, %eax
    call    aic_printf
    leaq    aicstr_0(%rip), %rax
    leaq    fmt_s_sp(%rip), %rdi
    movq    %rax, %rsi
    xorl    %eax, %eax
    call    aic_printf
    movq    $3, %rax
    leaq    fmt_sp(%rip), %rdi
    movq    %rax, %rsi
    xorl    %eax, %eax
    call    aic_printf
    leaq    aicstr_1(%rip), %rax
    leaq    fmt_s_sp(%rip), %rdi
    movq    %rax, %rsi
    xorl    %eax, %eax
    call    aic_printf
    movq    $24, %rax
    leaq    fmt_nl(%rip), %rdi
    movq    %rax, %rsi
    xorl    %eax, %eax
    call    aic_printf
    movq    $0, -24(%rbp)
.Lmaptop2:
    movq    -24(%rbp), %rax
    pushq   %rax
    movq    $3, %rax
    movq    %rax, %rbx
    popq    %rax
    cmpq    %rbx, %rax
    jge     .Lmapend3
    leaq    aicstr_2(%rip), %rax
    leaq    fmt_s_sp(%rip), %rdi
    movq    %rax, %rsi
    xorl    %eax, %eax
    call    aic_printf
    movq    -24(%rbp), %rax
    leaq    fmt_nl(%rip), %rdi
    movq    %rax, %rsi
    xorl    %eax, %eax
    call    aic_printf
    incq    -24(%rbp)
    jmp     .Lmaptop2
.Lmapend3:
    movq    $0, %rax
.Lmain_ret:
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
