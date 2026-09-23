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
    .string "main-total"
aicstr_1:
    .string "from-fn"


    .text
    .globl aic_main
aic_main:
    pushq   %rbp
    movq    %rsp, %rbp
    subq    $32, %rsp
    movq    $0, -8(%rbp)
    movq    $0, -16(%rbp)
    movq    $0, -24(%rbp)
    movq    $2, %rax
    movq    %rax, -16(%rbp)
    movq    $5, %rax
    movq    %rax, -24(%rbp)
    movq    -16(%rbp), %rax
    pushq   %rax
    movq    -24(%rbp), %rax
    pushq   %rax
    popq    %rsi
    popq    %rdi
    call    aicfn_add
    movq    %rax, -8(%rbp)
    leaq    aicstr_0(%rip), %rax
    leaq    fmt_s_sp(%rip), %rdi
    movq    %rax, %rsi
    xorl    %eax, %eax
    call    aic_printf
    movq    -8(%rbp), %rax
    leaq    fmt_nl(%rip), %rdi
    movq    %rax, %rsi
    xorl    %eax, %eax
    call    aic_printf
    call    aicfn_make_msg
    leaq    fmt_s_nl(%rip), %rdi
    movq    %rax, %rsi
    xorl    %eax, %eax
    call    aic_printf
    movq    $0, %rax
.Lmain_ret:
    leave
    ret

aicfn_add:
    pushq   %rbp
    movq    %rsp, %rbp
    subq    $32, %rsp
    movq    %rdi, -8(%rbp)
    movq    %rsi, -16(%rbp)
    movq    $0, -24(%rbp)
    movq    -8(%rbp), %rax
    pushq   %rax
    movq    -16(%rbp), %rax
    movq    %rax, %rbx
    popq    %rax
    addq    %rbx, %rax
    movq    %rax, -24(%rbp)
    movq    -24(%rbp), %rax
    jmp     .Lret_add
    movq    $0, %rax
.Lret_add:
    leave
    ret

aicfn_make_msg:
    pushq   %rbp
    movq    %rsp, %rbp
    subq    $16, %rsp


    leaq    aicstr_1(%rip), %rax
    jmp     .Lret_make_msg
    movq    $0, %rax
.Lret_make_msg:
    leave
    ret


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
