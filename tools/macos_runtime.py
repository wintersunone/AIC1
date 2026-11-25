"""Darwin (macOS arm64) libSystem runtime bridge.

Reuses the AIC ARM64 calling convention (x0..x7 args, x0 return) but routes
every external call through a `__DATA` GOT slot that dyld binds to a
`libSystem.B.dylib` symbol, so no `as`/`ld64`/libc link step is needed.

ponytail: x18 is never touched (Darwin reserves it). No printf/snprintf
variadic shim is emitted because aic_codegen_arm64.py only calls
aic_print_str / aic_print_int — add one if the codegen starts emitting
`%ld`-style format strings.
"""

LIB_SYMS = [
    "malloc", "calloc", "free", "strlen",
    "fopen", "fclose", "fread", "fwrite", "fseek", "ftell",
    "time", "exit", "write", "read",
]


def _call(sym):
    """Load the bound pointer from __DATA and branch to it."""
    return (f"    adrp x16, sym_{sym}\n"
            f"    add x16, x16, :lo12:sym_{sym}\n"
            f"    ldr x16, [x16]\n"
            f"    blr x16\n")


def _itoa_atoi():
    return r"""
aic_itoa:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    stp x19, x20, [sp, #-16]!
    stp x21, x22, [sp, #-16]!
    sub sp, sp, #32
    mov x19, sp
    mov x20, x0
    mov x0, #32
    mov x1, #1
    bl aic_calloc
    mov x21, x0
    mov x22, x0
    mov x2, x20
    cmp x2, #0
    b.ge .Litoa_abs
    mov x3, #45
    strb w3, [x22]
    add x22, x22, #1
    mov x3, #0
    sub x3, x3, x2
    mov x2, x3
.Litoa_abs:
    mov x4, #0
    mov x5, #10
    mov x6, x2
    cmp x6, #0
    b.ne .Litoa_div
    mov x7, #48
    strb w7, [x22]
    add x22, x22, #1
    b .Litoa_done
.Litoa_div:
    mov x0, x6
    mov x1, x5
    bl .Ldivmod
    mov x6, x0
    mov x7, x1
    add x7, x7, #48
    mov x8, x19
    add x8, x8, x4
    strb w7, [x8]
    add x4, x4, #1
    cmp x6, #0
    b.ne .Litoa_div
.Litoa_emit:
    cmp x4, #0
    b.eq .Litoa_done
    sub x4, x4, #1
    mov x8, x19
    add x8, x8, x4
    ldrb w7, [x8]
    strb w7, [x22]
    add x22, x22, #1
    b .Litoa_emit
.Litoa_done:
    mov x8, #0
    strb w8, [x22]
    mov x0, x21
    add sp, sp, #32
    ldp x21, x22, [sp], #16
    ldp x19, x20, [sp], #16
    ldp x29, x30, [sp], #16
    ret

.Ldivmod:
    sdiv x2, x0, x1
    msub x1, x2, x1, x0
    mov x0, x2
    ret

aic_atoi:
    mov x2, #0
    mov x3, #0
    mov x4, #0
    mov x5, #10
    cmp x0, #0
    b.eq .Latoi_done
.Latoi_loop:
    add x7, x0, x2
    ldrb w6, [x7]
    cmp w6, #0
    b.eq .Latoi_done
    cmp w6, #45
    b.ne .Latoi_plus
    mov x3, #1
    add x2, x2, #1
    b .Latoi_loop
.Latoi_plus:
    cmp w6, #43
    b.ne .Latoi_digit
    add x2, x2, #1
    b .Latoi_loop
.Latoi_digit:
    cmp w6, #48
    b.lt .Latoi_done
    cmp w6, #57
    b.gt .Latoi_done
    sub w6, w6, #48
    mul x4, x4, x5
    add x4, x4, x6
    add x2, x2, #1
    b .Latoi_loop
.Latoi_done:
    mov x0, x4
    cmp x3, #0
    b.eq .Latoi_ret
    mov x1, #0
    sub x0, x1, x0
.Latoi_ret:
    ret

aic_strtol:
    b aic_atoi
"""


MACOS_RUNTIME_ASM = f"""
    .text
_start_macho:
    mov x9, x0
    mov x10, x1
    adrp x11, aic_argc
    add x11, x11, :lo12:aic_argc
    str x9, [x11]
    adrp x11, aic_argv
    add x11, x11, :lo12:aic_argv
    str x10, [x11]
    bl aic_init_arena
    adrp x11, aic_argc
    add x11, x11, :lo12:aic_argc
    ldr x0, [x11]
    adrp x11, aic_argv
    add x11, x11, :lo12:aic_argv
    ldr x1, [x11]
    bl aic_main
    mov x0, #0
{_call("exit")}

aic_init_arena:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    stp x19, x20, [sp, #-16]!
    adrp x10, aic_arena_ptr
    add x10, x10, :lo12:aic_arena_ptr
    ldr x19, [x10]
    cmp x19, #0
    b.ne .Larena_done
    mov x0, #16777216
{_call("malloc")}
    mov x19, x0
    adrp x10, aic_arena_ptr
    add x10, x10, :lo12:aic_arena_ptr
    str x19, [x10]
.Larena_done:
    ldp x19, x20, [sp], #16
    ldp x29, x30, [sp], #16
    ret

aic_calloc:
    mul x0, x0, x1
    b .Lalloc_common

aic_malloc:
.Lalloc_common:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    stp x19, x20, [sp, #-16]!
    mov x20, x0
    bl aic_init_arena
    mov x0, x20
    mov x1, #1
{_call("calloc")}
    ldp x19, x20, [sp], #16
    ldp x29, x30, [sp], #16
    ret

aic_free:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
{_call("free")}
    ldp x29, x30, [sp], #16
    ret

aic_strlen:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
{_call("strlen")}
    ldp x29, x30, [sp], #16
    ret

aic_print_str:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    stp x19, x20, [sp, #-16]!
    mov x19, x0
    cmp x19, #0
    b.eq .Lps_done
{_call("strlen")}
    mov x2, x0
    mov x0, #1
    mov x1, x19
{_call("write")}
    mov x0, x19
.Lps_done:
    ldp x19, x20, [sp], #16
    ldp x29, x30, [sp], #16
    ret

aic_printf:
    b aic_print_str

{_itoa_atoi()}

aic_print_int:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    bl aic_itoa
    bl aic_print_str
    ldp x29, x30, [sp], #16
    ret

aic_arg:
    cmp x0, #0
    b.lt .Larg_empty
    adrp x10, aic_argc
    add x10, x10, :lo12:aic_argc
    ldr x1, [x10]
    cmp x0, x1
    b.ge .Larg_empty
    adrp x10, aic_argv
    add x10, x10, :lo12:aic_argv
    ldr x1, [x10]
    add x1, x1, x0, lsl #3
    ldr x0, [x1]
    ret
.Larg_empty:
    adrp x0, aic_empty_arg
    add x0, x0, :lo12:aic_empty_arg
    ret

aic_input:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    stp x19, x20, [sp, #-16]!
    mov x19, x0
    bl aic_print_str
    mov x0, #256
    mov x1, #1
    bl aic_calloc
    mov x20, x0
    mov x0, #0
    mov x1, x20
    mov x2, #255
{_call("read")}
    cmp x0, #0
    b.le .Linput_done
    mov x2, x0
    sub x3, x2, #1
    add x4, x20, x3
    ldrb w4, [x4]
    cmp w4, #10
    b.ne .Linput_done
    mov x4, #0
    add x4, x20, x3
    strb w4, [x4]
.Linput_done:
    mov x0, x20
    ldp x19, x20, [sp], #16
    ldp x29, x30, [sp], #16
    ret

aic_fopen:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
{_call("fopen")}
    ldp x29, x30, [sp], #16
    ret

aic_fclose:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
{_call("fclose")}
    ldp x29, x30, [sp], #16
    ret

aic_filesize:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    stp x19, x20, [sp, #-16]!
    mov x19, x0
    mov x0, x19
    mov x1, #0
    mov x2, #2
{_call("fseek")}
    mov x0, x19
{_call("ftell")}
    mov x20, x0
    mov x0, x19
    mov x1, #0
    mov x2, #0
{_call("fseek")}
    mov x0, x20
    ldp x19, x20, [sp], #16
    ldp x29, x30, [sp], #16
    ret

aic_fread:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    stp x19, x20, [sp, #-16]!
    mov x19, x1
    mov x3, x0
    mov x0, x19
    mov x1, #1
{_call("fread")}
    mov x1, x0
    mov x0, x19
    add x3, x19, x1
    mov x4, #0
    strb w4, [x3]
    ldp x19, x20, [sp], #16
    ldp x29, x30, [sp], #16
    ret

aic_fwrite:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    stp x19, x20, [sp, #-16]!
    mov x19, x0
    mov x20, x2
    mov x0, x1
    mov x1, #1
    mov x2, x20
    mov x3, x19
{_call("fwrite")}
    mov x0, x20
    ldp x19, x20, [sp], #16
    ldp x29, x30, [sp], #16
    ret

aic_time:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    mov x0, #0
{_call("time")}
    mov x9, #1000
    mul x0, x0, x9
    ldp x29, x30, [sp], #16
    ret

aic_runtime_error:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    stp x19, x20, [sp, #-16]!
    mov x19, x0
{_call("strlen")}
    mov x2, x0
    mov x0, #2
    mov x1, x19
{_call("write")}
    mov x0, #1
{_call("exit")}
    ldp x19, x20, [sp], #16
    ldp x29, x30, [sp], #16
    ret

    .data
""" + "".join(f"sym_{s}:\n    .quad 0\n" for s in LIB_SYMS)
