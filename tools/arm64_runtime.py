"""AArch64 Linux runtime bridge used by the ARM64 ELF emitters.

Raw `svc #0` syscalls only: no libc, no PLT/GOT, zero undefined symbols.
AArch64 Linux syscall ABI: x8 = number, x0..x5 = args, result in x0.

Syscall numbers (AArch64, NOT x86-64):
  openat 56, close 57, lseek 62, read 63, write 64,
  exit 93, exit_group 94, clock_gettime 113, mmap 222.

All helpers preserve AAPCS64: x19-x28 callee-saved, x0-x18 caller-saved.
"""


RUNTIME_ASM = r"""
    .text
.global _start
_start:
    mov x9, sp
    ldr x0, [x9]
    add x1, x9, #8
    bl aic_init_arena
    adrp x10, aic_argc
    add x10, x10, :lo12:aic_argc
    mov x11, sp
    ldr x11, [x11]
    str x11, [x10]
    adrp x10, aic_argv
    add x10, x10, :lo12:aic_argv
    mov x11, sp
    add x11, x11, #8
    str x11, [x10]
    bl aic_main
    mov x8, #93
    svc #0

aic_init_arena:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    mov x0, #0
    movz x1, #0x0800, lsl #16
    mov x2, #3
    mov x3, #34
    movn x4, #0
    mov x5, #0
    mov x8, #222
    svc #0
    adrp x10, aic_arena_ptr
    add x10, x10, :lo12:aic_arena_ptr
    str x0, [x10]
    ldp x29, x30, [sp], #16
    ret

aic_calloc:
    mul x0, x0, x1
    b .Lalloc_common
aic_malloc:
.Lalloc_common:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    add x0, x0, #15
    movn x9, #15
    and x0, x0, x9
    adrp x10, aic_arena_ptr
    add x10, x10, :lo12:aic_arena_ptr
    ldr x1, [x10]
    add x2, x1, x0
    str x2, [x10]
    mov x0, x1
    ldp x29, x30, [sp], #16
    ret

aic_free:
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

aic_strlen:
    mov x1, #0
.Lslen_loop:
    add x3, x0, x1
    ldrb w2, [x3]
    cmp w2, #0
    b.eq .Lslen_done
    add x1, x1, #1
    b .Lslen_loop
.Lslen_done:
    mov x0, x1
    ret

aic_print_str:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    stp x19, x20, [sp, #-16]!
    mov x19, x0
    bl aic_strlen
    mov x2, x0
    mov x0, #1
    mov x1, x19
    mov x8, #64
    svc #0
    mov x0, x19
    ldp x19, x20, [sp], #16
    ldp x29, x30, [sp], #16
    ret

aic_printf:
    b aic_print_str

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

# x0/x1 -> x0 = quotient, x1 = remainder
.Ldivmod:
    sdiv x2, x0, x1
    msub x1, x2, x1, x0
    mov x0, x2
    ret

aic_print_int:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    stp x19, x20, [sp, #-16]!
    mov x19, x0
    bl aic_itoa
    mov x19, x0
    bl aic_strlen
    mov x2, x0
    mov x0, #1
    mov x1, x19
    mov x8, #64
    svc #0
    ldp x19, x20, [sp], #16
    ldp x29, x30, [sp], #16
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
    mov x8, #63
    svc #0
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
    stp x19, x20, [sp, #-16]!
    mov x19, x0
    mov x20, x1
    ldrb w2, [x20]
    cmp w2, #119
    b.ne .Lfn_notw
    mov x2, #577
    b .Lfn_open
.Lfn_notw:
    cmp w2, #97
    b.ne .Lfn_r
    mov x2, #1089
    b .Lfn_open
.Lfn_r:
    mov x2, #0
.Lfn_open:
    movn x0, #99
    mov x1, x19
    mov x3, #438
    mov x8, #56
    svc #0
    cmp x0, #0
    b.ge .Lfn_ok
    mov x0, #0
.Lfn_ok:
    ldp x19, x20, [sp], #16
    ldp x29, x30, [sp], #16
    ret

aic_fclose:
    mov x1, x0
    mov x0, x1
    mov x8, #57
    svc #0
    ret

aic_filesize:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    stp x19, x20, [sp, #-16]!
    mov x19, x0
    mov x0, x19
    mov x1, #0
    mov x2, #2
    mov x8, #62
    svc #0
    mov x20, x0
    mov x0, x19
    mov x1, #0
    mov x2, #0
    mov x8, #62
    svc #0
    mov x0, x20
    ldp x19, x20, [sp], #16
    ldp x29, x30, [sp], #16
    ret

aic_fread:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    stp x19, x20, [sp, #-16]!
    mov x19, x1
    mov x20, x2
    mov x8, #63
    svc #0
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
    mov x8, #64
    svc #0
    ldp x29, x30, [sp], #16
    ret

aic_fseek:
    ret

aic_ftell:
    ret

aic_time:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #16
    mov x0, #0
    mov x1, sp
    mov x8, #113
    svc #0
    ldr x0, [sp]
    mov x9, #1000
    mul x0, x0, x9
    add sp, sp, #16
    ldp x29, x30, [sp], #16
    ret

aic_runtime_error:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    stp x19, x20, [sp, #-16]!
    mov x19, x0
    bl aic_strlen
    mov x2, x0
    mov x0, #2
    mov x1, x19
    mov x8, #64
    svc #0
    mov x0, #1
    mov x8, #93
    svc #0
"""

_START_BLOCK = """.global _start
_start:
    mov x9, sp
    ldr x0, [x9]
    add x1, x9, #8
    bl aic_init_arena
    adrp x10, aic_argc
    add x10, x10, :lo12:aic_argc
    mov x11, sp
    ldr x11, [x11]
    str x11, [x10]
    adrp x10, aic_argv
    add x10, x10, :lo12:aic_argv
    mov x11, sp
    add x11, x11, #8
    str x11, [x10]
    bl aic_main
    mov x8, #93
    svc #0
"""
