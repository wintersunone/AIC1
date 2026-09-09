#!/usr/bin/env python3
"""
aic_elf_emitter.py - Standalone Linux x86-64 ELF64 Executable Generator for AIC

Directly generates static, standalone Linux ELF64 executables from AIC assembly
with 0 external dependencies (no GCC, no GAS, no ld, no glibc required).
"""

import sys
import os
import struct
import re

REG_64 = {
    '%rax': 0, '%rcx': 1, '%rdx': 2, '%rbx': 3,
    '%rsp': 4, '%rbp': 5, '%rsi': 6, '%rdi': 7,
    '%r8':  8, '%r9':  9, '%r10': 10, '%r11': 11,
    '%r12': 12, '%r13': 13, '%r14': 14, '%r15': 15,
}

REG_32 = {
    '%eax': 0, '%ecx': 1, '%edx': 2, '%ebx': 3,
    '%esp': 4, '%ebp': 5, '%esi': 6, '%edi': 7,
    '%r8d': 8, '%r9d': 9, '%r10d': 10, '%r11d': 11,
    '%r12d': 12, '%r13d': 13, '%r14d': 14, '%r15d': 15,
}

REG_8 = {
    '%al': 0, '%cl': 1, '%dl': 2, '%bl': 3,
    '%spl': 4, '%bpl': 5, '%sil': 6, '%dil': 7,
    '%r8b': 8, '%r9b': 9, '%r10b': 10, '%r11b': 11,
    '%r12b': 12, '%r13b': 13, '%r14b': 14, '%r15b': 15,
}

def rex(w=0, r=0, x=0, b=0):
    val = 0x40 | ((1 if w else 0) << 3) | ((1 if r else 0) << 2) | ((1 if x else 0) << 1) | (1 if b else 0)
    return val

def modrm(mod, reg, rm):
    return ((mod & 3) << 6) | ((reg & 7) << 3) | (rm & 7)

def sib(scale, index, base):
    s_val = {1: 0, 2: 1, 4: 2, 8: 3}.get(scale, 0)
    return ((s_val & 3) << 6) | ((index & 7) << 3) | (base & 7)

class MemOperand:
    def __init__(self, disp=0, base=None, index=None, scale=1, rip_label=None):
        self.disp = disp
        self.base = base
        self.index = index
        self.scale = scale
        self.rip_label = rip_label

def parse_operand(op_str):
    op_str = op_str.strip()
    if not op_str:
        return None
    if op_str.startswith('$'):
        val_str = op_str[1:]
        if len(val_str) > 1 and val_str.startswith('0') and val_str[1] in '01234567':
            val = int(val_str, 8)
        else:
            val = int(val_str, 0)
        return ('imm', val)
    if op_str in REG_64:
        return ('reg64', REG_64[op_str])
    if op_str in REG_32:
        return ('reg32', REG_32[op_str])
    if op_str in REG_8:
        return ('reg8', REG_8[op_str])

    m = re.match(r'^([^(]*)\(([^)]+)\)$', op_str)
    if m:
        disp_str = m.group(1).strip()
        inner = m.group(2).strip()
        inner_parts = [p.strip() for p in inner.split(',')]

        if inner_parts == ['%rip']:
            return ('mem', MemOperand(rip_label=disp_str))

        disp = int(disp_str, 0) if disp_str else 0
        base = REG_64.get(inner_parts[0]) if len(inner_parts) >= 1 else None
        index = REG_64.get(inner_parts[1]) if len(inner_parts) >= 2 else None
        scale = int(inner_parts[2]) if len(inner_parts) >= 3 else 1
        return ('mem', MemOperand(disp=disp, base=base, index=index, scale=scale))

    return ('sym', op_str)

def unescape_gas_string(s):
    res = bytearray()
    i = 0
    n = len(s)
    while i < n:
        if s[i] == '\\' and i + 1 < n:
            nxt = s[i+1]
            if nxt == 'n': res.append(10); i += 2
            elif nxt == 't': res.append(9); i += 2
            elif nxt == 'r': res.append(13); i += 2
            elif nxt == '0': res.append(0); i += 2
            elif nxt == '\\': res.append(92); i += 2
            elif nxt == '"': res.append(34); i += 2
            else: res.append(ord(nxt)); i += 2
        else:
            res.append(ord(s[i]))
            i += 1
    return bytes(res)

class Assembler:
    def __init__(self):
        self.sections = {
            '.text': bytearray(),
            '.rodata': bytearray(),
            '.data': bytearray(),
            '.bss': bytearray(),
        }
        self.current_section = '.text'
        self.labels = {}
        self.text_fixups = []

    def assemble(self, asm_text):
        lines = asm_text.splitlines()
        parsed_instructions = []

        for line_no, raw_line in enumerate(lines, 1):
            line = raw_line.strip()
            if '//' in line:
                line = line[:line.index('//')].strip()
            if '#' in line:
                line = line[:line.index('#')].strip()
            if not line:
                continue

            while ':' in line:
                col_idx = line.find(':')
                quote_count = line[:col_idx].count('"')
                if quote_count % 2 == 1:
                    break
                lbl = line[:col_idx].strip()
                line = line[col_idx+1:].strip()
                if self.current_section == '.text':
                    parsed_instructions.append(('LABEL', lbl, line_no))
                else:
                    self.labels[lbl] = (self.current_section, len(self.sections[self.current_section]))

            if not line:
                continue

            if line.startswith('.'):
                parts = line.split(None, 1)
                directive = parts[0]
                arg = parts[1] if len(parts) > 1 else ''

                if directive == '.section':
                    sec_name = arg.split()[0]
                    if sec_name in ('.rodata', '.data', '.text'):
                        self.current_section = sec_name
                elif directive == '.text':
                    self.current_section = '.text'
                elif directive == '.data':
                    self.current_section = '.data'
                elif directive == '.rodata':
                    self.current_section = '.rodata'
                elif directive == '.string':
                    m = re.match(r'^"([^"]*)"', arg)
                    s_bytes = unescape_gas_string(m.group(1)) + b'\0' if m else b'\0'
                    self.sections[self.current_section].extend(s_bytes)
                elif directive == '.quad':
                    val = int(arg.strip(), 0)
                    self.sections[self.current_section].extend(struct.pack('<Q', val))
                elif directive == '.byte':
                    val = int(arg.strip(), 0)
                    self.sections[self.current_section].append(val & 0xFF)
                elif directive in ('.space', '.zero'):
                    val = int(arg.strip(), 0)
                    self.sections[self.current_section].extend(b'\0' * val)
                continue

            parts = line.split(None, 1)
            mnemonic = parts[0]
            op_str = parts[1] if len(parts) > 1 else ''
            if mnemonic == 'rep' and op_str.strip() == 'movsb':
                mnemonic = 'rep movsb'
                op_str = ''

            ops = []
            if op_str:
                cur_op = []
                paren_depth = 0
                for ch in op_str:
                    if ch == '(':
                        paren_depth += 1
                        cur_op.append(ch)
                    elif ch == ')':
                        paren_depth -= 1
                        cur_op.append(ch)
                    elif ch == ',' and paren_depth == 0:
                        ops.append("".join(cur_op).strip())
                        cur_op = []
                    else:
                        cur_op.append(ch)
                if cur_op:
                    ops.append("".join(cur_op).strip())

            parsed_instructions.append((mnemonic, ops, line_no))

        text_bytes = bytearray()
        for item in parsed_instructions:
            if item[0] == 'LABEL':
                lbl = item[1]
                self.labels[lbl] = ('.text', len(text_bytes))
                continue

            mnemonic, raw_ops, line_no = item
            parsed_ops = [parse_operand(o) for o in raw_ops]
            code = self.encode_instruction(mnemonic, parsed_ops, len(text_bytes))
            text_bytes.extend(code)

        self.sections['.text'] = text_bytes

    def encode_instruction(self, m, ops, current_offset):
        if m in ('rep movsb', 'rep'):
            return b'\xF3\xA4'
        if m == 'movsb':
            return b'\xA4'
        if m == 'ret':
            return b'\xC3'
        if m == 'leave':
            return b'\xC9'
        if m == 'cqto':
            return b'\x48\x99'
        if m == 'syscall':
            return b'\x0F\x05'

        if m == 'pushq':
            kind, reg = ops[0]
            if kind == 'reg64':
                if reg >= 8:
                    return bytes([0x41, 0x50 + (reg - 8)])
                return bytes([0x50 + reg])
        if m == 'popq':
            kind, reg = ops[0]
            if kind == 'reg64':
                if reg >= 8:
                    return bytes([0x41, 0x58 + (reg - 8)])
                return bytes([0x58 + reg])

        if m == 'call':
            sym = ops[0][1]
            self.text_fixups.append((current_offset + 1, sym, 'rel32', -4))
            return b'\xE8\x00\x00\x00\x00'

        if m == 'jmp':
            sym = ops[0][1]
            self.text_fixups.append((current_offset + 1, sym, 'rel32', -4))
            return b'\xE9\x00\x00\x00\x00'

        jcc_map = {
            'je': 0x84, 'jne': 0x85, 'jl': 0x8C, 'jle': 0x8E,
            'jg': 0x8F, 'jge': 0x8D,
            'ja': 0x87, 'jbe': 0x86, 'jae': 0x83, 'jb': 0x82
        }
        if m in jcc_map:
            sym = ops[0][1]
            self.text_fixups.append((current_offset + 2, sym, 'rel32', -4))
            return bytes([0x0F, jcc_map[m], 0x00, 0x00, 0x00, 0x00])

        setcc_map = {
            'sete': 0x94, 'setne': 0x95, 'setl': 0x9C, 'setle': 0x9E,
            'setg': 0x9F, 'setge': 0x9D
        }
        if m in setcc_map:
            return bytes([0x0F, setcc_map[m], 0xC0])

        if m == 'xorl':
            r1 = ops[0][1]
            r2 = ops[1][1]
            return bytes([0x31, modrm(3, r1, r2)])

        if m == 'movslq':
            src = ops[0][1]
            dst = ops[1][1]
            return bytes([rex(w=1, r=dst>=8, b=src>=8), 0x63, modrm(3, dst, src)])

        if m in ('addq', 'subq', 'andq', 'orq', 'xorq', 'cmpq'):
            op1, op2 = ops[0], ops[1]
            opc_map = {'addq': 0x01, 'subq': 0x29, 'andq': 0x21, 'orq': 0x09, 'xorq': 0x31, 'cmpq': 0x39}
            subop_map = {'addq': 0, 'orq': 1, 'andq': 4, 'subq': 5, 'xorq': 6, 'cmpq': 7}

            if op1[0] == 'reg64' and op2[0] == 'reg64':
                src = op1[1]
                dst = op2[1]
                return bytes([rex(w=1, r=src>=8, b=dst>=8), opc_map[m], modrm(3, src, dst)])

            if op1[0] == 'imm' and op2[0] == 'reg64':
                imm = op1[1]
                dst = op2[1]
                subop = subop_map[m]
                if -128 <= imm <= 127:
                    return bytes([rex(w=1, b=dst>=8), 0x83, modrm(3, subop, dst), imm & 0xFF])
                return bytes([rex(w=1, b=dst>=8), 0x81, modrm(3, subop, dst)]) + struct.pack('<i', imm)

            if op1[0] == 'reg64' and op2[0] == 'mem':
                src = op1[1]
                mem = op2[1]
                return self.encode_reg_mem(opc_map[m], src, mem, current_offset, w=1)

            if op1[0] == 'mem' and op2[0] == 'reg64':
                mem = op1[1]
                dst = op2[1]
                return self.encode_reg_mem(opc_map[m] + 2, dst, mem, current_offset, w=1)

        if m == 'testq':
            r1 = ops[0][1]
            r2 = ops[1][1]
            return bytes([rex(w=1, r=r1>=8, b=r2>=8), 0x85, modrm(3, r1, r2)])

        if m == 'imulq':
            if ops[0][0] == 'imm':
                imm = ops[0][1]
                dst = ops[1][1]
                if -128 <= imm <= 127:
                    return bytes([rex(w=1, r=dst>=8, b=dst>=8), 0x6B, modrm(3, dst, dst), imm & 0xFF])
                return bytes([rex(w=1, r=dst>=8, b=dst>=8), 0x69, modrm(3, dst, dst)]) + struct.pack('<i', imm)
            src = ops[0][1]
            dst = ops[1][1]
            return bytes([rex(w=1, r=dst>=8, b=src>=8), 0x0F, 0xAF, modrm(3, dst, src)])

        if m == 'idivq':
            reg = ops[0][1]
            return bytes([rex(w=1, b=reg>=8), 0xF7, modrm(3, 7, reg)])

        if m == 'divq':
            reg = ops[0][1]
            return bytes([rex(w=1, b=reg>=8), 0xF7, modrm(3, 6, reg)])

        if m == 'negq':
            reg = ops[0][1]
            return bytes([rex(w=1, b=reg>=8), 0xF7, modrm(3, 3, reg)])

        if m in ('shlq', 'sarq'):
            dst = ops[1][1]
            subop = 4 if m == 'shlq' else 7
            return bytes([rex(w=1, b=dst>=8), 0xD3, modrm(3, subop, dst)])

        if m == 'incq':
            if ops[0][0] == 'reg64':
                reg = ops[0][1]
                return bytes([rex(w=1, b=reg>=8), 0xFF, modrm(3, 0, reg)])
            elif ops[0][0] == 'mem':
                return self.encode_reg_mem(0xFF, 0, ops[0][1], current_offset, w=1)

        if m == 'decq':
            if ops[0][0] == 'reg64':
                reg = ops[0][1]
                return bytes([rex(w=1, b=reg>=8), 0xFF, modrm(3, 1, reg)])
            elif ops[0][0] == 'mem':
                return self.encode_reg_mem(0xFF, 1, ops[0][1], current_offset, w=1)

        if m == 'addb' and ops[0][0] == 'imm' and ops[1][0] == 'reg8':
            imm, reg = ops[0][1], ops[1][1]
            return bytes([0x80, modrm(3, 0, reg), imm & 0xFF])

        if m == 'subb' and ops[0][0] == 'imm' and ops[1][0] == 'reg8':
            imm, reg = ops[0][1], ops[1][1]
            return bytes([0x80, modrm(3, 5, reg), imm & 0xFF])

        if m == 'cmpb':
            imm = ops[0][1]
            if ops[1][0] == 'reg8':
                r = ops[1][1]
                if r == 0:
                    return bytes([0x3C, imm & 0xFF])
                return bytes([0x80, 0xF8 + r, imm & 0xFF])
            mem = ops[1][1]
            return self.encode_reg_mem(0x80, 7, mem, current_offset, w=0, trailing_imm=bytes([imm & 0xFF]))

        if m == 'movb':
            op1, op2 = ops[0], ops[1]
            if op1[0] == 'imm' and op2[0] == 'mem':
                imm = op1[1]
                mem = op2[1]
                return self.encode_reg_mem(0xC6, 0, mem, current_offset, w=0, trailing_imm=bytes([imm & 0xFF]))
            if op1[0] == 'reg8' and op2[0] == 'mem':
                return self.encode_reg_mem(0x88, op1[1], op2[1], current_offset, w=0)
            if op1[0] == 'mem' and op2[0] == 'reg8':
                return self.encode_reg_mem(0x8A, op2[1], op1[1], current_offset, w=0)

        if m == 'movzbq':
            if ops[0][0] == 'mem':
                mem = ops[0][1]
                dst = ops[1][1]
                return self.encode_reg_mem(0xB6, dst, mem, current_offset, w=1, prefix=b'\x0F')
            elif ops[0][0] == 'reg8':
                return bytes([rex(w=1, r=ops[1][1]>=8, b=ops[0][1]>=8), 0x0F, 0xB6, modrm(3, ops[1][1], ops[0][1])])

        if m == 'leaq':
            mem = ops[0][1]
            dst = ops[1][1]
            return self.encode_reg_mem(0x8D, dst, mem, current_offset, w=1)

        if m == 'movq':
            op1, op2 = ops[0], ops[1]
            if op1[0] == 'imm' and op2[0] == 'reg64':
                imm = op1[1]
                dst = op2[1]
                if -0x80000000 <= imm <= 0x7FFFFFFF:
                    return bytes([rex(w=1, b=dst>=8), 0xC7, modrm(3, 0, dst)]) + struct.pack('<i', imm)
                else:
                    return bytes([rex(w=1, b=dst>=8), 0xB8 + (dst & 7)]) + struct.pack('<q', imm)

            if op1[0] == 'imm' and op2[0] == 'mem':
                imm = op1[1]
                mem = op2[1]
                return self.encode_reg_mem(0xC7, 0, mem, current_offset, w=1, trailing_imm=struct.pack('<i', imm))

            if op1[0] == 'reg64' and op2[0] == 'reg64':
                src = op1[1]
                dst = op2[1]
                return bytes([rex(w=1, r=src>=8, b=dst>=8), 0x89, modrm(3, src, dst)])

            if op1[0] == 'reg64' and op2[0] == 'mem':
                src = op1[1]
                mem = op2[1]
                return self.encode_reg_mem(0x89, src, mem, current_offset, w=1)

            if op1[0] == 'mem' and op2[0] == 'reg64':
                mem = op1[1]
                dst = op2[1]
                return self.encode_reg_mem(0x8B, dst, mem, current_offset, w=1)

        raise ValueError(f"Unhandled instruction encoding: {m} with operands {ops}")

    def encode_reg_mem(self, opcode, reg_num, mem, current_offset, w=1, trailing_imm=b'', prefix=b''):
        res = bytearray()

        if mem.rip_label is not None:
            r_rex = rex(w=w, r=reg_num>=8, b=0)
            res.append(r_rex)
            res.extend(prefix)
            res.append(opcode)
            res.append(modrm(0, reg_num, 5))
            self.text_fixups.append((current_offset + len(res), mem.rip_label, 'rel32', -4 - len(trailing_imm)))
            res.extend(b'\x00\x00\x00\x00')
            res.extend(trailing_imm)
            return bytes(res)

        base = mem.base
        index = mem.index
        disp = mem.disp
        scale = mem.scale

        if index is not None:
            mod = 0 if disp == 0 and base != 5 else (1 if -128 <= disp <= 127 else 2)
            r_rex = rex(w=w, r=reg_num>=8, x=index>=8, b=base>=8)
            res.append(r_rex)
            res.extend(prefix)
            res.append(opcode)
            res.append(modrm(mod, reg_num, 4))
            res.append(sib(scale, index, base))
            if mod == 1:
                res.append(disp & 0xFF)
            elif mod == 2 or (mod == 0 and base == 5):
                res.extend(struct.pack('<i', disp))
            res.extend(trailing_imm)
            return bytes(res)

        if base is not None:
            is_rbp = (base == 5)
            is_rsp = (base == 4 or base == 12)
            mod = 0 if disp == 0 and not is_rbp else (1 if -128 <= disp <= 127 else 2)
            r_rex = rex(w=w, r=reg_num>=8, b=base>=8)
            res.append(r_rex)
            res.extend(prefix)
            res.append(opcode)
            res.append(modrm(mod, reg_num, base & 7))
            if is_rsp:
                res.append(0x24)
            if mod == 1:
                res.append(disp & 0xFF)
            elif mod == 2 or (mod == 0 and is_rbp):
                res.extend(struct.pack('<i', disp))
            res.extend(trailing_imm)
            return bytes(res)

        raise ValueError(f"Direct absolute memory addressing unsupported: {mem}")

# --- Linux SysV Direct Syscall Runtime Bridge ---------------------------------
LINUX_RUNTIME_ASM = r"""
.text
.global _start
_start:
    movq    (%rsp), %rdi
    leaq    8(%rsp), %rsi
    leaq    aic_argc(%rip), %rax
    movq    %rdi, (%rax)
    leaq    aic_argv(%rip), %rax
    movq    %rsi, (%rax)
    call    aic_init_arena
    leaq    aic_argc(%rip), %rax
    movq    (%rax), %rdi
    leaq    aic_argv(%rip), %rax
    movq    (%rax), %rsi
    call    aic_main
    movq    %rax, %rdi
    movq    $60, %rax       // sys_exit
    syscall

aic_init_arena:
    movq    $0, %rdi
    movq    $134217728, %rsi // 128 MB arena
    movq    $3, %rdx         // PROT_READ | PROT_WRITE
    movq    $0x22, %r10      // MAP_PRIVATE | MAP_ANONYMOUS
    movq    $-1, %r8
    movq    $0, %r9
    movq    $9, %rax         // sys_mmap
    syscall
    leaq    aic_arena_ptr(%rip), %rcx
    movq    %rax, (%rcx)
    ret

aic_calloc:
aic_malloc:
    imulq   %rsi, %rdi
    addq    $15, %rdi
    andq    $-16, %rdi
    leaq    aic_arena_ptr(%rip), %rcx
    movq    (%rcx), %rax
    addq    %rdi, (%rcx)
    ret

aic_free:
    ret

aic_arg:
    cmpq    $0, %rdi
    jl      .Laic_arg_empty
    leaq    aic_argc(%rip), %rax
    cmpq    (%rax), %rdi
    jge     .Laic_arg_empty
    leaq    aic_argv(%rip), %rax
    movq    (%rax), %rax
    movq    (%rax,%rdi,8), %rax
    ret
.Laic_arg_empty:
    leaq    aic_empty_arg(%rip), %rax
    ret

aic_strlen:
    movq    $0, %rax
.Lslen_loop:
    cmpb    $0, (%rdi,%rax)
    je      .Lslen_done
    incq    %rax
    jmp     .Lslen_loop
.Lslen_done:
    ret

aic_print_str:
    pushq   %rsi
    pushq   %rdi
    call    aic_strlen
    movq    %rax, %rdx
    popq    %rsi
    popq    %rdi
    movq    $1, %rax        // sys_write
    syscall
    ret

aic_printf:
    pushq   %rbp
    movq    %rsp, %rbp
    pushq   %rbx
    pushq   %r12
    movq    %rdi, %rbx
    movq    %rsi, %r12

    cmpb    $37, (%rbx)     // '%'
    jne     .Lfmt_raw
    cmpb    $115, 1(%rbx)   // 's'
    je      .Lfmt_str
    cmpb    $100, 1(%rbx)   // 'd'
    je      .Lfmt_int
    cmpb    $108, 1(%rbx)   // 'l'
    je      .Lfmt_int

.Lfmt_str:
    movq    $1, %rdi
    movq    %r12, %rsi
    call    aic_print_str
    jmp     .Lfmt_suffix

.Lfmt_int:
    movq    %r12, %rdi
    call    aic_print_int
    jmp     .Lfmt_suffix

.Lfmt_raw:
    movq    $1, %rdi
    movq    %rbx, %rsi
    call    aic_print_str
    jmp     .Lpf_done

.Lfmt_suffix:
    movq    %rbx, %rdi
    call    aic_strlen
    cmpq    $0, %rax
    je      .Lpf_done
    decq    %rax
    movzbq  (%rbx,%rax), %rcx
    cmpb    $10, %cl
    je      .Lpf_nl
    cmpb    $32, %cl
    je      .Lpf_sp
    jmp     .Lpf_done

.Lpf_nl:
    leaq    aic_newline(%rip), %rsi
    movq    $1, %rdx
    movq    $1, %rdi
    movq    $1, %rax
    syscall
    jmp     .Lpf_done

.Lpf_sp:
    leaq    aic_space(%rip), %rsi
    movq    $1, %rdx
    movq    $1, %rdi
    movq    $1, %rax
    syscall

.Lpf_done:
    popq    %r12
    popq    %rbx
    popq    %rbp
    ret

aic_print_int:
    pushq   %rbp
    movq    %rsp, %rbp
    subq    $32, %rsp
    movq    %rdi, %rax
    leaq    30(%rsp), %rsi
    movb    $0, 1(%rsi)
    movq    $0, %r8
    testq   %rax, %rax
    jge     .Lpi_pos
    negq    %rax
    movq    $1, %r8
.Lpi_pos:
    movq    $10, %rcx
.Lpi_loop:
    xorq    %rdx, %rdx
    divq    %rcx
    addb    $48, %dl
    movb    %dl, (%rsi)
    decq    %rsi
    testq   %rax, %rax
    jne     .Lpi_loop
    testq   %r8, %r8
    je      .Lpi_out
    movb    $45, (%rsi)     // '-'
    decq    %rsi
.Lpi_out:
    incq    %rsi
    movq    $1, %rdi
    call    aic_print_str
    leave
    ret

aic_runtime_error:
    movq    %rdi, %rsi
    movq    $2, %rdi        // stderr
    call    aic_print_str
    movq    $1, %rdi
    movq    $60, %rax       // sys_exit(1)
    syscall

aic_fopen:
    cmpb    $119, (%rsi)    // 'w'
    je      .Lopen_write
    movq    $0, %rsi        // O_RDONLY
    movq    $0, %rdx
    movq    $2, %rax        // sys_open
    syscall
    testq   %rax, %rax
    jge     .Lopen_done
    movq    $0, %rax
.Lopen_done:
    ret

.Lopen_write:
    movq    $0x241, %rsi    // O_WRONLY | O_CREAT | O_TRUNC
    movq    $0644, %rdx
    movq    $2, %rax
    syscall
    testq   %rax, %rax
    jge     .Lopen_done
    movq    $0, %rax
    ret

aic_fclose:
    movq    $3, %rax        // sys_close
    syscall
    ret

aic_fread:
    pushq   %rdi
    movq    %rcx, %rdi      // fd
    popq    %rsi            // buf
    movq    $0, %rax        // sys_read
    syscall
    ret

aic_fwrite:
    pushq   %rdi
    movq    %rcx, %rdi      // fd
    popq    %rsi            // buf
    movq    $1, %rax        // sys_write
    syscall
    ret

aic_fseek:
    movq    $8, %rax        // sys_lseek
    syscall
    ret

aic_ftell:
    movq    $0, %rsi
    movq    $1, %rdx        // SEEK_CUR
    movq    $8, %rax
    syscall
    ret

aic_strtoll:
aic_atoi:
    xorq    %rax, %rax
    xorq    %rcx, %rcx
.Latoi_ws:
    movzbq  (%rdi), %rdx
    cmpb    $32, %dl
    je      .Latoi_next
    cmpb    $9, %dl
    je      .Latoi_next
    cmpb    $10, %dl
    je      .Latoi_next
    jmp     .Latoi_sign
.Latoi_next:
    incq    %rdi
    jmp     .Latoi_ws
.Latoi_sign:
    cmpb    $45, %dl
    jne     .Latoi_digits
    movq    $1, %rcx
    incq    %rdi
.Latoi_digits:
    movzbq  (%rdi), %rdx
    subb    $48, %dl
    cmpb    $9, %dl
    ja      .Latoi_done
    imulq   $10, %rax
    addq    %rdx, %rax
    incq    %rdi
    jmp     .Latoi_digits
.Latoi_done:
    testq   %rcx, %rcx
    je      .Latoi_ret
    negq    %rax
.Latoi_ret:
    ret

.data
aic_argc:
    .quad 0
aic_argv:
    .quad 0
aic_arena_ptr:
    .quad 0
aic_empty_arg:
    .string ""
aic_newline:
    .string "\n"
aic_space:
    .string " "
"""

def build_standalone_elf(asm_content, output_path):
    if "aic_win_fmt_i_nl:" in asm_content:
        asm_content = asm_content[:asm_content.find("aic_win_fmt_i_nl:")].rsplit(".section .rodata", 1)[0]

    full_asm = asm_content + "\n" + LINUX_RUNTIME_ASM
    asm = Assembler()
    asm.assemble(full_asm)

    BASE_VADDR = 0x400000
    PAGE_SIZE = 0x1000

    phdr_count = 2
    header_size = 64 + phdr_count * 56
    text_offset = (header_size + 15) & ~15

    text_bytes = asm.sections['.text']
    rodata_bytes = asm.sections['.rodata']
    data_bytes = asm.sections['.data']

    rodata_offset = text_offset + len(text_bytes)
    rx_filesz = rodata_offset + len(rodata_bytes)

    data_offset = (rx_filesz + PAGE_SIZE - 1) & ~(PAGE_SIZE - 1)
    data_vaddr = BASE_VADDR + data_offset

    sym_vaddr = {}
    for lbl, (sec, off) in asm.labels.items():
        if sec == '.text':
            sym_vaddr[lbl] = BASE_VADDR + text_offset + off
        elif sec == '.rodata':
            sym_vaddr[lbl] = BASE_VADDR + rodata_offset + off
        elif sec == '.data':
            sym_vaddr[lbl] = data_vaddr + off

    aliases = {
        'aic_calloc': 'aic_calloc',
        'aic_malloc': 'aic_malloc',
        'aic_free': 'aic_free',
        'aic_strlen': 'aic_strlen',
        'aic_printf': 'aic_printf',
        'aic_fopen': 'aic_fopen',
        'aic_fclose': 'aic_fclose',
        'aic_fread': 'aic_fread',
        'aic_fwrite': 'aic_fwrite',
        'aic_fseek': 'aic_fseek',
        'aic_ftell': 'aic_ftell',
        'aic_runtime_error': 'aic_runtime_error',
        'strtoll': 'aic_strtoll',
        'atoi': 'aic_atoi'
    }

    for fixup in asm.text_fixups:
        off, sym, ftype, addend = fixup
        target = aliases.get(sym, sym)
        if target not in sym_vaddr:
            raise ValueError(f"Unresolved symbol in ELF generation: '{sym}'")
        target_vaddr = sym_vaddr[target]
        instr_vaddr = BASE_VADDR + text_offset + off
        rel32 = target_vaddr - (instr_vaddr + 4)
        struct.pack_into('<i', text_bytes, off, rel32)

    entry_vaddr = sym_vaddr.get('_start', BASE_VADDR + text_offset)

    rx_memsz = rx_filesz
    rw_filesz = len(data_bytes)
    rw_memsz = rw_filesz

    e_ident = b'\x7fELF' + bytes([
        2,      # 64-bit
        1,      # Little endian
        1,      # Version 1
        0,      # System V ABI
        0,      # ABI version
        0, 0, 0, 0, 0, 0, 0
    ])
    e_type = 2          # ET_EXEC
    e_machine = 0x3E    # EM_X86_64
    e_version = 1
    e_entry = entry_vaddr
    e_phoff = 64
    e_shoff = 0
    e_flags = 0
    e_ehsize = 64
    e_phentsize = 56
    e_phnum = phdr_count
    e_shentsize = 64
    e_shnum = 0
    e_shstrndx = 0

    elf_header = struct.pack(
        '<16sHHIQQQIHHHHHH',
        e_ident, e_type, e_machine, e_version, e_entry,
        e_phoff, e_shoff, e_flags, e_ehsize, e_phentsize,
        e_phnum, e_shentsize, e_shnum, e_shstrndx
    )

    ph1 = struct.pack(
        '<IIQQQQQQ',
        1,              # PT_LOAD
        5,              # PF_R | PF_X
        0,              # p_offset
        BASE_VADDR,     # p_vaddr
        BASE_VADDR,     # p_paddr
        rx_filesz,      # p_filesz
        rx_memsz,       # p_memsz
        PAGE_SIZE       # p_align
    )

    ph2 = struct.pack(
        '<IIQQQQQQ',
        1,              # PT_LOAD
        6,              # PF_R | PF_W
        data_offset,    # p_offset
        data_vaddr,     # p_vaddr
        data_vaddr,     # p_paddr
        rw_filesz,      # p_filesz
        rw_memsz,       # p_memsz
        PAGE_SIZE       # p_align
    )

    file_buf = bytearray()
    file_buf.extend(elf_header)
    file_buf.extend(ph1)
    file_buf.extend(ph2)

    pad1 = text_offset - len(file_buf)
    if pad1 > 0:
        file_buf.extend(b'\0' * pad1)

    file_buf.extend(text_bytes)
    file_buf.extend(rodata_bytes)

    pad2 = data_offset - len(file_buf)
    if pad2 > 0:
        file_buf.extend(b'\0' * pad2)

    file_buf.extend(data_bytes)

    with open(output_path, "wb") as f:
        f.write(file_buf)

    print(f"Direct Linux ELF64 generated: {output_path} ({len(file_buf):,} bytes)")

def main():
    if len(sys.argv) < 2:
        print("Usage: python aic_elf_emitter.py <input.s> [-o <output_elf>]")
        sys.exit(1)

    input_path = sys.argv[1]
    output_path = "output.elf"
    if "-o" in sys.argv:
        idx = sys.argv.index("-o")
        if idx + 1 < len(sys.argv):
            output_path = sys.argv[idx + 1]
    elif len(sys.argv) > 2 and not sys.argv[2].startswith("-"):
        output_path = sys.argv[2]

    with open(input_path, "r", encoding="utf-8", errors="ignore") as f:
        asm_content = f.read()

    build_standalone_elf(asm_content, output_path)

if __name__ == "__main__":
    main()
