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
    .string "Direct ctor:"
aicstr_1:
    .string "Hash ctor:"
aicstr_2:
    .string "Spaced ctor:"
aicstr_3:
    .string "Array bulk:"
aicstr_4:
    .string "Single bulk:"
aicstr_5:
    .string "Hello, Antigravity AI Compiler!"
aicstr_6:
    .string "Slice 1:"
aicstr_7:
    .string "Slice 2:"
aicstr_8:
    .string "Slice 3:"
aicstr_9:
    .string "Sum 8:"
runtimeerr_msg:
    .string "[ERR :code 501 :kind RUNTIME :msg IO_OR_ALLOC_FAILED]\n"
runtimeerr_msg_end:
    .equ runtimeerr_len, runtimeerr_msg_end - runtimeerr_msg - 1


    .text
    .globl aic_main
aic_main:
    pushq   %rbp
    movq    %rsp, %rbp
    subq    $80, %rsp
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
    movq    $10, %rax
    pushq   %rax
    movq    $20, %rax
    pushq   %rax
    movq    $30, %rax
    pushq   %rax
    movq    $25, %rdi
    movq    $1, %rsi
    call    aic_calloc
    testq   %rax, %rax
    jne     .Lallocok1
    jmp     .Lruntimeerror
.Lallocok1:
    popq    %rbx
    movq    %rbx, 16(%rax)
    popq    %rbx
    movq    %rbx, 8(%rax)
    popq    %rbx
    movq    %rbx, 0(%rax)
    movq    %rax, -56(%rbp)
    leaq    aicstr_0(%rip), %rax
    leaq    fmt_s_sp(%rip), %rdi
    movq    %rax, %rsi
    xorl    %eax, %eax
    call    aic_printf
    movq    -56(%rbp), %rax
    movq    0(%rax), %rax
    leaq    fmt_sp(%rip), %rdi
    movq    %rax, %rsi
    xorl    %eax, %eax
    call    aic_printf
    movq    -56(%rbp), %rax
    movq    8(%rax), %rax
    leaq    fmt_sp(%rip), %rdi
    movq    %rax, %rsi
    xorl    %eax, %eax
    call    aic_printf
    movq    -56(%rbp), %rax
    movq    16(%rax), %rax
    leaq    fmt_nl(%rip), %rdi
    movq    %rax, %rsi
    xorl    %eax, %eax
    call    aic_printf
    movq    $40, %rax
    pushq   %rax
    movq    $50, %rax
    pushq   %rax
    movq    $60, %rax
    pushq   %rax
    movq    $25, %rdi
    movq    $1, %rsi
    call    aic_calloc
    testq   %rax, %rax
    jne     .Lallocok2
    jmp     .Lruntimeerror
.Lallocok2:
    popq    %rbx
    movq    %rbx, 16(%rax)
    popq    %rbx
    movq    %rbx, 8(%rax)
    popq    %rbx
    movq    %rbx, 0(%rax)
    movq    %rax, -64(%rbp)
    leaq    aicstr_1(%rip), %rax
    leaq    fmt_s_sp(%rip), %rdi
    movq    %rax, %rsi
    xorl    %eax, %eax
    call    aic_printf
    movq    -64(%rbp), %rax
    movq    0(%rax), %rax
    leaq    fmt_sp(%rip), %rdi
    movq    %rax, %rsi
    xorl    %eax, %eax
    call    aic_printf
    movq    -64(%rbp), %rax
    movq    8(%rax), %rax
    leaq    fmt_sp(%rip), %rdi
    movq    %rax, %rsi
    xorl    %eax, %eax
    call    aic_printf
    movq    -64(%rbp), %rax
    movq    16(%rax), %rax
    leaq    fmt_nl(%rip), %rdi
    movq    %rax, %rsi
    xorl    %eax, %eax
    call    aic_printf
    movq    $70, %rax
    pushq   %rax
    movq    $80, %rax
    pushq   %rax
    movq    $90, %rax
    pushq   %rax
    movq    $25, %rdi
    movq    $1, %rsi
    call    aic_calloc
    testq   %rax, %rax
    jne     .Lallocok3
    jmp     .Lruntimeerror
.Lallocok3:
    popq    %rbx
    movq    %rbx, 16(%rax)
    popq    %rbx
    movq    %rbx, 8(%rax)
    popq    %rbx
    movq    %rbx, 0(%rax)
    movq    %rax, -72(%rbp)
    leaq    aicstr_2(%rip), %rax
    leaq    fmt_s_sp(%rip), %rdi
    movq    %rax, %rsi
    xorl    %eax, %eax
    call    aic_printf
    movq    -72(%rbp), %rax
    movq    0(%rax), %rax
    leaq    fmt_sp(%rip), %rdi
    movq    %rax, %rsi
    xorl    %eax, %eax
    call    aic_printf
    movq    -72(%rbp), %rax
    movq    8(%rax), %rax
    leaq    fmt_sp(%rip), %rdi
    movq    %rax, %rsi
    xorl    %eax, %eax
    call    aic_printf
    movq    -72(%rbp), %rax
    movq    16(%rax), %rax
    leaq    fmt_nl(%rip), %rdi
    movq    %rax, %rsi
    xorl    %eax, %eax
    call    aic_printf
    movq    $72, %rax
    leaq    1(%rax), %rdi
    movq    $1, %rsi
    call    aic_calloc
    testq   %rax, %rax
    jne     .Lallocok4
    jmp     .Lruntimeerror
.Lallocok4:
    movq    %rax, -80(%rbp)
    movq    $111, %rax
    pushq   %rax
    movq    $222, %rax
    pushq   %rax
    movq    $333, %rax
    pushq   %rax
    movq    -80(%rbp), %rax
    pushq   %rax
    movq    $0, %rax
    popq    %rbx
    imulq   $24, %rax
    addq    %rbx, %rax
    popq    %rbx
    movq    %rbx, 16(%rax)
    popq    %rbx
    movq    %rbx, 8(%rax)
    popq    %rbx
    movq    %rbx, 0(%rax)
    movq    $444, %rax
    pushq   %rax
    movq    $555, %rax
    pushq   %rax
    movq    $666, %rax
    pushq   %rax
    movq    -80(%rbp), %rax
    pushq   %rax
    movq    $1, %rax
    popq    %rbx
    imulq   $24, %rax
    addq    %rbx, %rax
    popq    %rbx
    movq    %rbx, 16(%rax)
    popq    %rbx
    movq    %rbx, 8(%rax)
    popq    %rbx
    movq    %rbx, 0(%rax)
    movq    $777, %rax
    pushq   %rax
    movq    $888, %rax
    pushq   %rax
    movq    $999, %rax
    pushq   %rax
    movq    -80(%rbp), %rax
    pushq   %rax
    movq    $2, %rax
    popq    %rbx
    imulq   $24, %rax
    addq    %rbx, %rax
    popq    %rbx
    movq    %rbx, 16(%rax)
    popq    %rbx
    movq    %rbx, 8(%rax)
    popq    %rbx
    movq    %rbx, 0(%rax)
    leaq    aicstr_3(%rip), %rax
    leaq    fmt_s_sp(%rip), %rdi
    movq    %rax, %rsi
    xorl    %eax, %eax
    call    aic_printf
    movq    -80(%rbp), %rax
    movq    24(%rax), %rax
    leaq    fmt_sp(%rip), %rdi
    movq    %rax, %rsi
    xorl    %eax, %eax
    call    aic_printf
    movq    -80(%rbp), %rax
    movq    32(%rax), %rax
    leaq    fmt_sp(%rip), %rdi
    movq    %rax, %rsi
    xorl    %eax, %eax
    call    aic_printf
    movq    -80(%rbp), %rax
    movq    40(%rax), %rax
    leaq    fmt_nl(%rip), %rdi
    movq    %rax, %rsi
    xorl    %eax, %eax
    call    aic_printf
    movq    $24, %rax
    leaq    1(%rax), %rdi
    movq    $1, %rsi
    call    aic_calloc
    testq   %rax, %rax
    jne     .Lallocok5
    jmp     .Lruntimeerror
.Lallocok5:
    movq    %rax, -16(%rbp)
    movq    $987, %rax
    pushq   %rax
    movq    $654, %rax
    pushq   %rax
    movq    $321, %rax
    pushq   %rax
    movq    -16(%rbp), %rax
    popq    %rbx
    movq    %rbx, 16(%rax)
    popq    %rbx
    movq    %rbx, 8(%rax)
    popq    %rbx
    movq    %rbx, 0(%rax)
    leaq    aicstr_4(%rip), %rax
    leaq    fmt_s_sp(%rip), %rdi
    movq    %rax, %rsi
    xorl    %eax, %eax
    call    aic_printf
    movq    -16(%rbp), %rax
    movq    0(%rax), %rax
    leaq    fmt_sp(%rip), %rdi
    movq    %rax, %rsi
    xorl    %eax, %eax
    call    aic_printf
    movq    -16(%rbp), %rax
    movq    8(%rax), %rax
    leaq    fmt_sp(%rip), %rdi
    movq    %rax, %rsi
    xorl    %eax, %eax
    call    aic_printf
    movq    -16(%rbp), %rax
    movq    16(%rax), %rax
    leaq    fmt_nl(%rip), %rdi
    movq    %rax, %rsi
    xorl    %eax, %eax
    call    aic_printf
    leaq    aicstr_5(%rip), %rax
    movq    %rax, -8(%rbp)
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    $0, %rax
    pushq   %rax
    movq    $5, %rax
    pushq   %rax
    movq    %rax, %rdi
    incq    %rdi
    movq    $1, %rsi
    call    aic_calloc
    testq   %rax, %rax
    jne     .Lallocok6
    jmp     .Lruntimeerror
.Lallocok6:
    popq    %rcx
    popq    %rbx
    popq    %rsi
    addq    %rbx, %rsi
    movq    %rax, %rdi
    pushq   %rax
    rep movsb
    popq    %rax
    movq    %rax, -24(%rbp)
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    $7, %rax
    pushq   %rax
    movq    $11, %rax
    pushq   %rax
    movq    %rax, %rdi
    incq    %rdi
    movq    $1, %rsi
    call    aic_calloc
    testq   %rax, %rax
    jne     .Lallocok7
    jmp     .Lruntimeerror
.Lallocok7:
    popq    %rcx
    popq    %rbx
    popq    %rsi
    addq    %rbx, %rsi
    movq    %rax, %rdi
    pushq   %rax
    rep movsb
    popq    %rax
    movq    %rax, -32(%rbp)
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    $19, %rax
    pushq   %rax
    movq    $11, %rax
    pushq   %rax
    movq    %rax, %rdi
    incq    %rdi
    movq    $1, %rsi
    call    aic_calloc
    testq   %rax, %rax
    jne     .Lallocok8
    jmp     .Lruntimeerror
.Lallocok8:
    popq    %rcx
    popq    %rbx
    popq    %rsi
    addq    %rbx, %rsi
    movq    %rax, %rdi
    pushq   %rax
    rep movsb
    popq    %rax
    movq    %rax, -40(%rbp)
    leaq    aicstr_6(%rip), %rax
    leaq    fmt_s_sp(%rip), %rdi
    movq    %rax, %rsi
    xorl    %eax, %eax
    call    aic_printf
    movq    -24(%rbp), %rax
    leaq    fmt_s_nl(%rip), %rdi
    movq    %rax, %rsi
    xorl    %eax, %eax
    call    aic_printf
    leaq    aicstr_7(%rip), %rax
    leaq    fmt_s_sp(%rip), %rdi
    movq    %rax, %rsi
    xorl    %eax, %eax
    call    aic_printf
    movq    -32(%rbp), %rax
    leaq    fmt_s_nl(%rip), %rdi
    movq    %rax, %rsi
    xorl    %eax, %eax
    call    aic_printf
    leaq    aicstr_8(%rip), %rax
    leaq    fmt_s_sp(%rip), %rdi
    movq    %rax, %rsi
    xorl    %eax, %eax
    call    aic_printf
    movq    -40(%rbp), %rax
    leaq    fmt_s_nl(%rip), %rdi
    movq    %rax, %rsi
    xorl    %eax, %eax
    call    aic_printf
    movq    $8, %rax
    pushq   %rax
    movq    $7, %rax
    pushq   %rax
    movq    $1, %rax
    pushq   %rax
    movq    $2, %rax
    pushq   %rax
    movq    $3, %rax
    pushq   %rax
    movq    $4, %rax
    pushq   %rax
    movq    $5, %rax
    pushq   %rax
    movq    $6, %rax
    pushq   %rax
    popq    %r9
    popq    %r8
    popq    %rcx
    popq    %rdx
    popq    %rsi
    popq    %rdi
    call    aicfn_sum8
    addq    $16, %rsp
    movq    %rax, -48(%rbp)
    leaq    aicstr_9(%rip), %rax
    leaq    fmt_s_sp(%rip), %rdi
    movq    %rax, %rsi
    xorl    %eax, %eax
    call    aic_printf
    movq    -48(%rbp), %rax
    leaq    fmt_nl(%rip), %rdi
    movq    %rax, %rsi
    xorl    %eax, %eax
    call    aic_printf
    movq    $0, %rax
.Lmain_ret:
    leave
    ret

aicfn_sum8:
    pushq   %rbp
    movq    %rsp, %rbp
    subq    $64, %rsp
    movq    %rdi, -8(%rbp)
    movq    %rsi, -16(%rbp)
    movq    %rdx, -24(%rbp)
    movq    %rcx, -32(%rbp)
    movq    %r8, -40(%rbp)
    movq    %r9, -48(%rbp)
    movq    16(%rbp), %rax
    movq    %rax, -56(%rbp)
    movq    24(%rbp), %rax
    movq    %rax, -64(%rbp)

    movq    -8(%rbp), %rax
    pushq   %rax
    movq    -16(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    pushq   %rax
    movq    -24(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    pushq   %rax
    movq    -32(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    pushq   %rax
    movq    -40(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    pushq   %rax
    movq    -48(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    pushq   %rax
    movq    -56(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    pushq   %rax
    movq    -64(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    jmp     .Lret_sum8
    movq    $0, %rax
.Lret_sum8:
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
    movq    $1, %rdi                  # fflush(stdout)
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
