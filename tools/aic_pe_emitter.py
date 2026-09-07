"""
aic_pe_emitter.py - Standalone Windows x86-64 PE/COFF Assembler and Linker for AIC.
Eliminates GCC/MinGW dependencies by directly generating runnable 64-bit PE executables
from AIC-generated assembly (.s).
"""

import sys
import os
import re
import struct

REG_64 = {
    '%rax': 0, '%rcx': 1, '%rdx': 2, '%rbx': 3,
    '%rsp': 4, '%rbp': 5, '%rsi': 6, '%rdi': 7,
    '%r8':  8, '%r9':  9, '%r10': 10, '%r11': 11,
    '%r12': 12, '%r13': 13, '%r14': 14, '%r15': 15
}

REG_32 = {
    '%eax': 0, '%ecx': 1, '%edx': 2, '%ebx': 3,
    '%esp': 4, '%ebp': 5, '%esi': 6, '%edi': 7,
    '%r8d': 8, '%r9d': 9, '%r10d': 10, '%r11d': 11,
    '%r12d': 12, '%r13d': 13, '%r14d': 14, '%r15d': 15
}

REG_8 = {
    '%al': 0, '%cl': 1, '%dl': 2, '%bl': 3
}

def rex(w=1, r=0, x=0, b=0):
    val = 0x40
    if w: val |= 8
    if r: val |= 4
    if x: val |= 2
    if b: val |= 1
    return val

def modrm(mod, reg, rm):
    return ((mod & 3) << 6) | ((reg & 7) << 3) | (rm & 7)

def sib(scale, index, base):
    sc_map = {1: 0, 2: 1, 4: 2, 8: 3}
    return ((sc_map[scale] & 3) << 6) | ((index & 7) << 3) | (base & 7)

def align_up(val, align):
    return (val + align - 1) & ~(align - 1)

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
        val = int(val_str, 0)
        return ('imm', val)
    if op_str in REG_64:
        return ('reg64', REG_64[op_str])
    if op_str in REG_32:
        return ('reg32', REG_32[op_str])
    if op_str in REG_8:
        return ('reg8', REG_8[op_str])

    # Memory operand: e.g. -8(%rbp), (%rax,%rdi,8), label(%rip), 1(%rdi)
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

    # Symbol/label reference (for call/jmp)
    return ('sym', op_str)

def unescape_gas_string(s):
    res = bytearray()
    i = 0
    n = len(s)
    while i < n:
        if s[i] == '\\' and i + 1 < n:
            nxt = s[i+1]
            if nxt == 'n':
                res.append(10)
                i += 2
            elif nxt == 't':
                res.append(9)
                i += 2
            elif nxt == 'r':
                res.append(13)
                i += 2
            elif nxt == '0':
                res.append(0)
                i += 2
            elif nxt == '\\':
                res.append(92)
                i += 2
            elif nxt == '"':
                res.append(34)
                i += 2
            else:
                res.append(ord(nxt))
                i += 2
        else:
            res.append(ord(s[i]))
            i += 1
    return bytes(res)

class Assembler:
    def __init__(self):
        self.sections = {
            '.rodata': bytearray(),
            '.data': bytearray(),
            '.text': bytearray()
        }
        self.labels = {}
        self.text_fixups = []
        self.current_section = '.text'

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
            'jg': 0x8F, 'jge': 0x8D
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
            return b'\x48\x0F\xB6\xC0'

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

        if base == 4:
            mod = 0 if disp == 0 else (1 if -128 <= disp <= 127 else 2)
            r_rex = rex(w=w, r=reg_num>=8, b=base>=8)
            res.append(r_rex)
            res.extend(prefix)
            res.append(opcode)
            res.append(modrm(mod, reg_num, 4))
            res.append(sib(1, 4, 4))
            if mod == 1:
                res.append(disp & 0xFF)
            elif mod == 2:
                res.extend(struct.pack('<i', disp))
            res.extend(trailing_imm)
            return bytes(res)

        if disp == 0 and base != 5:
            mod = 0
        elif -128 <= disp <= 127:
            mod = 1
        else:
            mod = 2

        r_rex = rex(w=w, r=reg_num>=8, b=base>=8)
        res.append(r_rex)
        res.extend(prefix)
        res.append(opcode)
        res.append(modrm(mod, reg_num, base))
        if mod == 1:
            res.append(disp & 0xFF)
        elif mod == 2 or (mod == 0 and base == 5):
            res.extend(struct.pack('<i', disp))
        res.extend(trailing_imm)
        return bytes(res)


ENTRY_ASM = """
    .data
.Laic_cmdline_buf:
    .space 4096
.Laic_argv_buf:
    .space 512

    .text
    .globl _pe_entry
_pe_entry:
    subq    $40, %rsp
    call    GetCommandLineA
    leaq    .Laic_cmdline_buf(%rip), %rdi
    movq    %rax, %rsi
.Lcopy_loop:
    movb    (%rsi), %al
    movb    %al, (%rdi)
    incq    %rsi
    incq    %rdi
    cmpb    $0, %al
    jne     .Lcopy_loop

    leaq    .Laic_cmdline_buf(%rip), %rsi
    leaq    .Laic_argv_buf(%rip), %rdi
    xorl    %ecx, %ecx

.Lskip_spaces:
    movb    (%rsi), %al
    cmpb    $0, %al
    je      .Lparse_done
    cmpb    $32, %al
    jne     .Lfound_arg
    incq    %rsi
    jmp     .Lskip_spaces

.Lfound_arg:
    cmpb    $34, %al
    je      .Lquoted_arg

    movq    %rsi, (%rdi,%rcx,8)
    addq    $1, %rcx
.Lscan_normal:
    movb    (%rsi), %al
    cmpb    $0, %al
    je      .Lparse_done
    cmpb    $32, %al
    je      .Lterm_arg
    incq    %rsi
    jmp     .Lscan_normal

.Lquoted_arg:
    incq    %rsi
    movq    %rsi, (%rdi,%rcx,8)
    addq    $1, %rcx
.Lscan_quoted:
    movb    (%rsi), %al
    cmpb    $0, %al
    je      .Lparse_done
    cmpb    $34, %al
    je      .Lterm_arg
    incq    %rsi
    jmp     .Lscan_quoted

.Lterm_arg:
    movb    $0, (%rsi)
    incq    %rsi
    jmp     .Lskip_spaces

.Lparse_done:
    movq    $0, (%rdi,%rcx,8)
    leaq    .Laic_argv_buf(%rip), %rdx
    call    TARGET_MAIN
    movslq  %eax, %rcx
    call    ExitProcess
"""

def build_standalone_pe(asm_text, output_exe_path):
    target_main = 'main' if ('\nmain:' in asm_text or asm_text.startswith('main:')) else 'aic_main'
    full_asm = asm_text + "\n" + ENTRY_ASM.replace("TARGET_MAIN", target_main)

    asm = Assembler()
    asm.assemble(full_asm)

    imported_funcs = {
        'msvcrt.dll': [
            'printf', 'malloc', 'calloc', 'free', 'strlen', 'strtoll',
            'fopen', 'fclose', 'fread', 'fwrite', 'fseek', 'ftell',
            'sprintf', 'exit', 'clock', 'fflush', 'scanf'
        ],
        'kernel32.dll': [
            'ExitProcess', 'GetCommandLineA'
        ]
    }

    stubs = bytearray()
    stub_symbols = {}

    for dll, fns in imported_funcs.items():
        for fn in fns:
            stub_offset = len(asm.sections['.text']) + len(stubs)
            stub_symbols[fn] = stub_offset
            asm.labels[fn] = ('.text', stub_offset)
            stubs.extend(b'\xFF\x25\x00\x00\x00\x00')

    asm.sections['.text'].extend(stubs)

    sec_align = 0x1000
    file_align = 0x200
    image_base = 0x140000000

    text_rva = 0x1000
    rdata_rva = text_rva + align_up(len(asm.sections['.text']), sec_align)

    iat_slots = {}
    rdata_imports = bytearray()

    total_iat_qwords = sum(len(fns) + 1 for fns in imported_funcs.values())
    iat_size = total_iat_qwords * 8
    ilt_size = iat_size
    idt_size = (len(imported_funcs) + 1) * 20

    strings_offset = iat_size + ilt_size + idt_size
    rdata_imports.extend(b'\0' * strings_offset)

    cur_iat = 0
    cur_ilt = iat_size
    cur_idt = iat_size + ilt_size
    cur_str = strings_offset

    for dll, fns in imported_funcs.items():
        dll_name_str = dll.encode('ascii') + b'\0'
        dll_name_off = cur_str
        rdata_imports.extend(dll_name_str)
        cur_str += len(dll_name_str)

        dll_iat_start = cur_iat
        dll_ilt_start = cur_ilt

        symbol_aliases = {'strtoll': '_strtoi64'}
        for fn in fns:
            dll_sym = symbol_aliases.get(fn, fn)
            hn = struct.pack('<H', 0) + dll_sym.encode('ascii') + b'\0'
            if len(hn) % 2 != 0:
                hn += b'\0'
            hn_off = cur_str
            rdata_imports.extend(hn)
            cur_str += len(hn)

            hn_rva = rdata_rva + hn_off
            struct.pack_into('<Q', rdata_imports, cur_iat, hn_rva)
            struct.pack_into('<Q', rdata_imports, cur_ilt, hn_rva)

            iat_slots[fn] = rdata_rva + cur_iat
            cur_iat += 8
            cur_ilt += 8

        struct.pack_into('<Q', rdata_imports, cur_iat, 0)
        struct.pack_into('<Q', rdata_imports, cur_ilt, 0)
        cur_iat += 8
        cur_ilt += 8

        struct.pack_into('<IIIII', rdata_imports, cur_idt,
                         rdata_rva + dll_ilt_start,
                         0, 0,
                         rdata_rva + dll_name_off,
                         rdata_rva + dll_iat_start)
        cur_idt += 20

    rodata_start_in_rdata = len(rdata_imports)
    for lbl, (sec, off) in list(asm.labels.items()):
        if sec == '.rodata':
            asm.labels[lbl] = ('.rdata', rodata_start_in_rdata + off)

    rdata_bytes = rdata_imports + asm.sections['.rodata']
    data_rva = rdata_rva + align_up(len(rdata_bytes), sec_align)

    for fn, stub_off in stub_symbols.items():
        iat_target_rva = iat_slots[fn]
        next_ip_rva = text_rva + stub_off + 6
        rel32 = iat_target_rva - next_ip_rva
        struct.pack_into('<i', asm.sections['.text'], stub_off + 2, rel32)

    sec_rvas = {
        '.text': text_rva,
        '.rdata': rdata_rva,
        '.rodata': rdata_rva,
        '.data': data_rva
    }

    for fix_off, target, ftype, addend in asm.text_fixups:
        if target not in asm.labels:
            raise ValueError(f"Undefined symbol during PE link: {target}")
        t_sec, t_off = asm.labels[target]
        target_rva = sec_rvas[t_sec] + t_off
        current_ip_rva = text_rva + fix_off + 4
        rel32 = (target_rva - current_ip_rva) + (addend + 4)
        struct.pack_into('<i', asm.sections['.text'], fix_off, rel32)

    entry_point_rva = text_rva + asm.labels['_pe_entry'][1]
    imports_info = {
        'import_table': (rdata_rva + iat_size + ilt_size, idt_size),
        'iat': (rdata_rva, iat_size)
    }

    pe_data = build_pe_file(
        asm.sections['.text'],
        rdata_bytes,
        asm.sections['.data'],
        imports_info,
        entry_point_rva=entry_point_rva
    )

    with open(output_exe_path, 'wb') as f:
        f.write(pe_data)
    print(f"Direct executable generated: {output_exe_path} ({len(pe_data):,} bytes)")

def build_pe_file(text_bytes, rdata_bytes, data_bytes, imports, entry_point_rva=0x1000):
    sec_align = 0x1000
    file_align = 0x200
    image_base = 0x140000000

    rdata_rva = 0x1000 + align_up(len(text_bytes), sec_align)
    data_rva = rdata_rva + align_up(len(rdata_bytes), sec_align)
    total_image_size = data_rva + align_up(len(data_bytes), sec_align)

    header_size = 0x400
    text_file_offset = header_size
    text_file_size = align_up(len(text_bytes), file_align)
    rdata_file_offset = text_file_offset + text_file_size
    rdata_file_size = align_up(len(rdata_bytes), file_align)
    data_file_offset = rdata_file_offset + rdata_file_size
    data_file_size = align_up(len(data_bytes), file_align)

    dos_header = bytearray(64)
    dos_header[0:2] = b'MZ'
    dos_header[0x3C:0x40] = struct.pack('<I', 0x80)

    dos_stub = bytes([
        0x0E, 0x1F, 0xBA, 0x0E, 0x00, 0xB4, 0x09, 0xCD,
        0x21, 0xB8, 0x01, 0x4C, 0xCD, 0x21, 0x54, 0x68,
        0x69, 0x73, 0x20, 0x70, 0x72, 0x6F, 0x67, 0x72,
        0x61, 0x6D, 0x20, 0x63, 0x61, 0x6E, 0x6E, 0x6F,
        0x74, 0x20, 0x62, 0x65, 0x20, 0x72, 0x75, 0x6E,
        0x20, 0x69, 0x6E, 0x20, 0x44, 0x4F, 0x53, 0x20,
        0x6D, 0x6F, 0x64, 0x65, 0x2E, 0x0D, 0x0D, 0x0A,
        0x24, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
    ])

    pe_sig = b'PE\0\0'

    num_sections = 3
    coff_header = struct.pack(
        '<HHIIIHH',
        0x8664,
        num_sections,
        0,
        0,
        0,
        240,
        0x0022
    )

    opt_header = struct.pack(
        '<HBBIIIIIQIIHHHHHHIIIIHHQQQQII',
        0x020B,
        14, 0,
        len(text_bytes),
        len(rdata_bytes) + len(data_bytes),
        0,
        entry_point_rva,
        0x1000,
        image_base,
        sec_align,
        file_align,
        6, 0,
        0, 0,
        6, 0,
        0,
        total_image_size,
        header_size,
        0,
        3,
        0x8160,
        0x100000,
        0x1000,
        0x100000,
        0x1000,
        0,
        16
    )

    data_dirs = bytearray(128)
    import_rva, import_size = imports.get('import_table', (0, 0))
    struct.pack_into('<II', data_dirs, 1 * 8, import_rva, import_size)
    iat_rva, iat_size = imports.get('iat', (0, 0))
    struct.pack_into('<II', data_dirs, 12 * 8, iat_rva, iat_size)

    def sec_hdr(name, v_size, v_addr, raw_size, raw_ptr, chars):
        name_bytes = name.encode('ascii')[:8].ljust(8, b'\0')
        return struct.pack('<8sIIIIIIHHI', name_bytes, v_size, v_addr, raw_size, raw_ptr, 0, 0, 0, 0, chars)

    sec_text = sec_hdr('.text', len(text_bytes), 0x1000, text_file_size, text_file_offset, 0x60000020)
    sec_rdata = sec_hdr('.rdata', len(rdata_bytes), rdata_rva, rdata_file_size, rdata_file_offset, 0x40000040)
    sec_data = sec_hdr('.data', len(data_bytes), data_rva, data_file_size, data_file_offset, 0xC0000040)

    headers = dos_header + dos_stub + pe_sig + coff_header + opt_header + data_dirs + sec_text + sec_rdata + sec_data
    assert len(headers) <= header_size
    headers = headers.ljust(header_size, b'\0')

    text_padded = text_bytes.ljust(text_file_size, b'\0')
    rdata_padded = rdata_bytes.ljust(rdata_file_size, b'\0')
    data_padded = data_bytes.ljust(data_file_size, b'\0')

    return bytes(headers + text_padded + rdata_padded + data_padded)

def main():
    if len(sys.argv) < 2:
        print("Usage: python aic_pe_emitter.py <input.s> [-o <output.exe>]")
        sys.exit(1)

    input_path = sys.argv[1]
    output_path = "output.exe"
    if "-o" in sys.argv:
        idx = sys.argv.index("-o")
        if idx + 1 < len(sys.argv):
            output_path = sys.argv[idx + 1]
    elif len(sys.argv) > 2 and not sys.argv[2].startswith("-"):
        output_path = sys.argv[2]

    with open(input_path, "r", encoding="utf-8", errors="ignore") as f:
        asm_content = f.read()

    build_standalone_pe(asm_content, output_path)

if __name__ == "__main__":
    main()
