"""AArch64 (ARM64) codegen for AIC - AAPCS64, x0-x7 args, x0 return.

Reuses the existing tokenizer/parser/analyzer from compiler.py and
aic_codegen.py; only the emission layer is replaced. Kept separate from
aic_codegen.py so the x86-64 pipeline (and the compiler.aic bootstrap
fixed point) is untouched.

ponytail: registers are NOT shared between variables (same reason as -O1 on
x86-64: the codegen maps var->reg for the whole function and emits no reload),
so each eligible local gets its own callee-saved register and the rest spill to
the stack. Only x19-x28 are used so the allocator can never touch argument
registers x0-x7 or the scratch registers x9-x17.

AArch64 hardware rule (CRITICAL): SP must be 16-byte aligned whenever it is
dereferenced. Every expression-stack push/pop therefore moves SP by 16 bytes
(`str x0, [sp, #-16]!` / `ldr x1, [sp], #16`), never 8.
"""

import os
import sys

from compiler import Symbol, StrLit
from aic_codegen import (
    Analyzer, CodegenError, FnInfo, _ARG_REGS, _BYTE_OPS, _CMP_SETcc,
    _is_form, _kind, _line_of, _op_name, _WORD_OPS, read_source_with_imports,
)
from compiler import parse, tokenize

INT, STR = "int", "str"

# AAPCS64 integer args / return
ARM_ARG_REGS = ["x0", "x1", "x2", "x3", "x4", "x5", "x6", "x7"]

# Callee-saved pool for locals (x19-x28). x29/x30 are frame/link.
ARM_ALLOC_REGS = ["x19", "x20", "x21", "x22", "x23", "x24", "x25", "x26", "x27", "x28"]

ARM_LIBC = {"H", "F", "I", "T", "L", "N", "V", "A", "O", "Z", "R", "K", "X"}
ARM_STR_RETURN = {"H", "R", "N", "A", "I"}


class ArmCodegen:
    def __init__(self, functions, analyzer=None):
        self.lines = []
        self.label_n = 0
        self.functions = functions
        self.analyzer = analyzer
        self.constants = analyzer.constants if analyzer else {}
        self.slots = {}
        self.types = {}
        self.epilogue = None
        self.str_labels = {}
        self.allocation = {}
        self.reg_area = 0
        self.needs_divzero_guard = False
        self.needs_runtime_guard = False

    # ------------------------------------------------------------- helpers
    def emit(self, s):
        self.lines.append(s)

    def label(self, base):
        self.label_n += 1
        return f".L{base}{self.label_n}"

    def string_label(self, text):
        if text not in self.str_labels:
            self.str_labels[text] = f"aicstr_{len(self.str_labels)}"
        return self.str_labels[text]

    def slot_offset(self, name):
        # x29 sits above the pushed x29/x30 pair; the saved-register area is
        # below it, and locals live below that.
        return -(16 + self.reg_area + 8 * (self.slots[name] + 1))

    # ---------------------------------------------------- register access
    def load_slot(self, name, reg="x0"):
        off = self.slot_offset(name)
        if -256 <= off <= 255:
            self.emit(f"    ldur {reg}, [x29, #{off}]")
        else:
            n = -off
            self.emit(f"    mov x9, #-{n}")
            self.emit(f"    add x9, x29, x9")
            self.emit(f"    ldr {reg}, [x9]")

    def store_slot(self, name, reg="x0"):
        off = self.slot_offset(name)
        if -256 <= off <= 255:
            self.emit(f"    stur {reg}, [x29, #{off}]")
        else:
            n = -off
            self.emit(f"    mov x9, #-{n}")
            self.emit(f"    add x9, x29, x9")
            self.emit(f"    str {reg}, [x9]")

    @staticmethod
    def imm(reg, value):
        """Emit a movz/movk sequence for a 64-bit constant."""
        value &= (1 << 64) - 1
        if value == 0:
            return [f"    movz {reg}, #0"]
        chunks = [(value >> (16 * i)) & 0xFFFF for i in range(4)]
        out, first = [], True
        for i, c in enumerate(chunks):
            if c == 0:
                continue
            op = "movz" if first else "movk"
            out.append(f"    {op} {reg}, #{c}, lsl #{16 * i}")
            first = False
        return out

    # ------------------------------------------------------ expressions
    def compile_expr(self, node):
        if isinstance(node, int):
            for l in self.imm("x0", node):
                self.emit(l)
            return
        if isinstance(node, StrLit):
            label = self.string_label(node.val)
            self.emit(f"    adrp x0, {label}")
            self.emit(f"    add x0, x0, :lo12:{label}")
            return
        if isinstance(node, Symbol):
            if node.name in self.constants:
                for l in self.imm("x0", self.constants[node.name]):
                    self.emit(l)
                return
            reg = self.allocation.get(node.name)
            if reg is not None:
                self.emit(f"    mov x0, {reg}")
            else:
                self.load_slot(node.name, "x0")
            return

        op_node = node[0]
        op = _op_name(op_node)

        if op in ("&&", "||"):
            if len(node) != 3:
                raise CodegenError(f"Line {_line_of(op_node)}: '{op}' takes exactly 2 operands")
            short_l, end_l = self.label("scshort"), self.label("scend")
            self.compile_expr(node[1])
            self.emit("    cmp x0, #0")
            self.emit(f"    {'b.eq' if op == '&&' else 'b.ne'} {short_l}")
            self.compile_expr(node[2])
            self.emit("    cmp x0, #0")
            self.emit("    cset x0, ne")
            self.emit(f"    b {end_l}")
            self.emit(f"{short_l}:")
            for l in self.imm("x0", 0 if op == "&&" else 1):
                self.emit(l)
            self.emit(f"{end_l}:")
            return

        if op == "?":
            if len(node) != 4:
                raise CodegenError(f"Line {_line_of(op_node)}: '?' as a value needs an else branch")
            if self._type(node[2]) != self._type(node[3]):
                raise CodegenError(f"Line {_line_of(op_node)}: '?' branches must have the same type")
            else_l, end_l = self.label("ternelse"), self.label("ternend")
            self.compile_expr(node[1])
            self.emit("    cmp x0, #0")
            self.emit(f"    b.eq {else_l}")
            self.compile_expr(node[2])
            self.emit(f"    b {end_l}")
            self.emit(f"{else_l}:")
            self.compile_expr(node[3])
            self.emit(f"{end_l}:")
            return

        if op in self.functions:
            self._call(op, node[1:])
            return

        if op in _BYTE_OPS:
            self.compile_byte_op(op, node)
            return
        if op in _WORD_OPS:
            self.compile_word_op(op, node)
            return
        if op in ARM_LIBC:
            self.compile_libc_op(op, node)
            return
        if op.startswith("@@") and ("." in op or op.startswith("@@$")):
            self.compile_record_op(op, node)
            return
        if op.startswith("@@"):
            self.compile_word_op(op, node)
            return
        if op == "/" and len(node) == 4:
            self.compile_slice(node)
            return
        if op in self.analyzer.records or (op.startswith("#") and op[1:] in self.analyzer.records):
            self.compile_record_construct(op.lstrip("#"), node[1:])
            return

        if len(node) != 3:
            raise CodegenError(f"Line {_line_of(op_node)}: only binary '{op}' supported")

        left, right = node[1], node[2]
        if self._is_int(left) and self._is_int(right):
            folded = self._fold(op, self._ival(left), self._ival(right))
            if folded is not None:
                folded = (folded + (1 << 63)) % (1 << 64) - (1 << 63)
                for l in self.imm("x0", folded):
                    self.emit(l)
                return

        self.compile_expr(left)
        self.emit("    str x0, [sp, #-16]!")
        self.compile_expr(right)
        self.emit("    mov x1, x0")
        self.emit("    ldr x0, [sp], #16")
        self._binary(op, op_node)
        return

    @staticmethod
    def _is_int(n):
        return isinstance(n, int) or (isinstance(n, Symbol) and n.name.isdigit())

    def _ival(self, n):
        return n if isinstance(n, int) else int(n.name)

    @staticmethod
    def _fold(op, a, b):
        if op == "+":
            return a + b
        if op == "-":
            return a - b
        if op == "*":
            return a * b
        if op == "/" and b:
            return abs(a) // abs(b) * (1 if a * b >= 0 else -1)
        if op == "%" and b:
            return a - (abs(a) // abs(b) * (1 if a * b >= 0 else -1)) * b
        if op == "&":
            return a & b
        if op == "|":
            return a | b
        if op == "^^":
            return a ^ b
        if op == "<<" and 0 <= b < 64:
            return a << b
        if op == ">>" and 0 <= b < 64:
            return a >> b
        return None

    def _type(self, node):
        if isinstance(node, StrLit):
            return STR
        if isinstance(node, Symbol):
            return self.types.get(node.name, INT)
        if isinstance(node, list) and node:
            op = _op_name(node[0])
            # libc/memory ops that return a STRING (shared with the x86-64 codegen)
            if op in ARM_STR_RETURN or (op == "/" and len(node) == 4):
                return STR
            if op in self.functions:
                return self.functions[op].ret_type
        return INT

    def _binary(self, op, op_node):
        # x0 = left, x1 = right
        if op == "+":
            self.emit("    add x0, x0, x1")
        elif op == "-":
            self.emit("    sub x0, x0, x1")
        elif op == "*":
            self.emit("    mul x0, x0, x1")
        elif op in ("/", "%"):
            self.needs_divzero_guard = True
            ok = self.label("divok")
            self.emit("    cmp x1, #0")
            self.emit(f"    b.ne {ok}")
            self.emit("    b .Ldivzero")
            self.emit(f"{ok}:")
            self.emit("    sdiv x2, x0, x1")
            if op == "/":
                self.emit("    mov x0, x2")
            else:
                self.emit("    msub x0, x2, x1, x0")
        elif op == "&":
            self.emit("    and x0, x0, x1")
        elif op == "|":
            self.emit("    orr x0, x0, x1")
        elif op == "^^":
            self.emit("    eor x0, x0, x1")
        elif op == "<<":
            self.emit("    lslv x0, x0, x1")
        elif op == ">>":
            self.emit("    asrv x0, x0, x1")
        elif op in _CMP_SETcc:
            cond = {"<": "lt", ">": "gt", "==": "eq", "!=": "ne", "<=": "le", ">=": "ge"}[op]
            self.emit("    cmp x0, x1")
            self.emit(f"    cset x0, {cond}")
        else:
            raise CodegenError(f"Line {_line_of(op_node)}: op '{op}' has no ARM64 codegen")

    def _call(self, name, args):
        fn = self.functions[name]
        n = len(fn.params)
        if n <= 8:
            for a in args:
                self.compile_expr(a)
                self.emit("    str x0, [sp, #-16]!")
            for i in range(n - 1, -1, -1):
                self.emit(f"    ldr {ARM_ARG_REGS[i]}, [sp], #16")
            self.emit(f"    bl {fn.label}")
        else:
            # >8 args: extras go on the caller stack ([x29,#16+...] in callee).
            stack_n = n - 8
            pad = stack_n % 2  # keep SP 16-aligned
            if pad:
                self.emit("    sub sp, sp, #16")
            for i in range(n - 1, 7, -1):
                self.compile_expr(args[i])
                self.emit("    str x0, [sp, #-16]!")
            for i in range(8):
                self.compile_expr(args[i])
                self.emit("    str x0, [sp, #-16]!")
            for i in range(7, -1, -1):
                self.emit(f"    ldr {ARM_ARG_REGS[i]}, [sp], #16")
            self.emit(f"    bl {fn.label}")
            self.emit(f"    add sp, sp, #{16 * (stack_n + pad)}")

    # ------------------------------------------------- byte / word memory
    def compile_byte_op(self, op, node):
        if op == "@":
            self.compile_expr(node[1])
            self.emit("    str x0, [sp, #-16]!")
            self.compile_expr(node[2])
            self.emit("    mov x2, x0")
            self.emit("    ldr x1, [sp], #16")
            self.emit("    add x1, x1, x2")
            self.emit("    ldrb w0, [x1]")
        else:  # "@!"
            self.compile_expr(node[1])
            self.emit("    str x0, [sp, #-16]!")
            self.compile_expr(node[2])
            self.emit("    str x0, [sp, #-16]!")
            self.compile_expr(node[3])
            self.emit("    mov x3, x0")
            self.emit("    ldr x2, [sp], #16")
            self.emit("    ldr x1, [sp], #16")
            self.emit("    add x1, x1, x2")
            self.emit("    strb w3, [x1]")
            self.emit("    mov x0, x3")

    def compile_word_op(self, op, node):
        if op in ("@@", "@@$"):
            self.compile_expr(node[1])
            self.emit("    str x0, [sp, #-16]!")
            self.compile_expr(node[2])
            self.emit("    mov x2, x0")
            self.emit("    ldr x1, [sp], #16")
            self.emit("    add x1, x1, x2, lsl #3")
            self.emit("    ldr x0, [x1]")
        else:
            self.compile_expr(node[1])
            self.emit("    str x0, [sp, #-16]!")
            self.compile_expr(node[2])
            self.emit("    str x0, [sp, #-16]!")
            self.compile_expr(node[3])
            self.emit("    mov x3, x0")
            self.emit("    ldr x2, [sp], #16")
            self.emit("    ldr x1, [sp], #16")
            self.emit("    add x1, x1, x2, lsl #3")
            self.emit("    str x3, [x1]")
            self.emit("    mov x0, x3")

    # --------------------------------------------------------- S-records
    def _rec_spec(self, op):
        if op.startswith("@@$!."):
            return op[5:], True
        if op.startswith("@@!."):
            return op[4:], True
        if op.startswith("@@$."):
            return op[4:], False
        return op[3:], False

    def compile_record_op(self, op, node):
        spec, is_set = self._rec_spec(op)
        if is_set and spec in self.analyzer.records:
            size = self.analyzer.records[spec]["size"]
            if len(node) == size + 2:
                # bulk: [@@!.Rec ptr idx v0 v1 ...]  (or without idx)
                vals = node[2:]
                for v in vals:
                    self.compile_expr(v)
                    self.emit("    str x0, [sp, #-16]!")
                self.compile_expr(node[1])
                self.emit("    mov x1, x0")
                for i in range(size - 1, -1, -1):
                    self.emit("    ldr x3, [sp], #16")
                    self.emit(f"    str x3, [x1, #{i * 8}]")
                self.emit("    mov x0, x1")
                return
            raise CodegenError(f"Line {_line_of(node[0])}: bulk record setter '{op}' arity")

        offset, fsize = self.analyzer._resolve_record_field(spec)
        disp = offset * 8
        if not is_set:
            self.compile_expr(node[1])
            if len(node) == 2:
                self.emit(f"    ldr x0, [x0, #{disp}]")
            else:
                self.emit("    str x0, [sp, #-16]!")
                self.compile_expr(node[2])
                self.emit("    mov x2, x0")
                self.emit("    ldr x1, [sp], #16")
                if fsize > 1:
                    self.emit(f"    mov x9, #{fsize * 8}")
                    self.emit("    mul x2, x2, x9")
                    self.emit("    add x1, x1, x2")
                else:
                    self.emit("    add x1, x1, x2, lsl #3")
                self.emit(f"    ldr x0, [x1, #{disp}]") if disp else self.emit("    ldr x0, [x1]")
        else:
            # field set: [@@!.Rec:f ptr val]  (4 nodes) or with an index (5)
            ptr_node = node[1]
            if len(node) == 3:
                val_node = node[2]
                self.compile_expr(ptr_node)
                self.emit("    str x0, [sp, #-16]!")
                self.compile_expr(val_node)
                self.emit("    mov x3, x0")
                self.emit("    ldr x1, [sp], #16")
                self.emit(f"    str x3, [x1, #{disp}]")
                self.emit("    mov x0, x3")
            else:
                idx_node = node[2]
                val_node = node[3]
                self.compile_expr(ptr_node)
                self.emit("    str x0, [sp, #-16]!")
                self.compile_expr(idx_node)
                self.emit("    str x0, [sp, #-16]!")
                self.compile_expr(val_node)
                self.emit("    mov x3, x0")
                self.emit("    ldr x2, [sp], #16")
                self.emit("    ldr x1, [sp], #16")
                if fsize > 1:
                    self.emit(f"    mov x9, #{fsize * 8}")
                    self.emit("    mul x2, x2, x9")
                else:
                    self.emit("    add x2, x2, x2, lsl #3")   # idx*8
                self.emit("    add x1, x1, x2")
                self.emit(f"    str x3, [x1, #{disp}]")
                self.emit("    mov x0, x3")

    def compile_record_construct(self, rec_name, args):
        size = self.analyzer.records[rec_name]["size"]
        for a in args:
            self.compile_expr(a)
            self.emit("    str x0, [sp, #-16]!")
        for l in self.imm("x0", size * 8 + 1):
            self.emit(l)
        self.emit("    mov x1, #1")
        self.emit("    bl aic_calloc")
        self.needs_runtime_guard = True
        ok = self.label("allocok")
        self.emit("    cmp x0, #0")
        self.emit(f"    b.ne {ok}")
        self.emit("    b .Lruntimeerror")
        self.emit(f"{ok}:")
        self.emit("    mov x1, x0")
        for i in range(size - 1, -1, -1):
            self.emit("    ldr x3, [sp], #16")
            self.emit(f"    str x3, [x1, #{i * 8}]")
        self.emit("    mov x0, x1")

    def compile_slice(self, node):
        self.compile_expr(node[1])
        self.emit("    str x0, [sp, #-16]!")     # s
        self.compile_expr(node[2])
        self.emit("    str x0, [sp, #-16]!")     # start
        self.compile_expr(node[3])               # end
        self.emit("    ldr x8, [sp], #16")       # start (survives aic_calloc)
        self.emit("    sub x5, x0, x8")          # count = end - start (end exclusive)
        self.emit("    cmp x5, #0")
        clamp = self.label("sliceclamp")
        self.emit(f"    b.ge {clamp}")
        self.emit("    mov x5, #0")
        self.emit(f"{clamp}:")
        self.emit("    add x0, x5, #1")          # NUL
        self.emit("    mov x1, #1")
        self.emit("    bl aic_calloc")
        self.needs_runtime_guard = True
        ok = self.label("allocok")
        self.emit("    cmp x0, #0")
        self.emit(f"    b.ne {ok}")
        self.emit("    b .Lruntimeerror")
        self.emit(f"{ok}:")
        self.emit("    ldr x1, [sp], #16")       # s
        self.emit("    add x1, x1, x8")          # s + start
        self.emit("    mov x2, x5")              # loop bound = count
        # copy loop with ldrb/strb
        loop = self.label("copyloop")
        done = self.label("copydone")
        self.emit("    mov x3, x0")
        self.emit("    mov x4, #0")
        self.emit(f"{loop}:")
        self.emit("    cmp x4, x2")
        self.emit(f"    b.ge {done}")
        self.emit("    add x6, x1, x4")
        self.emit("    ldrb w5, [x6]")
        self.emit("    add x7, x3, x4")
        self.emit("    strb w5, [x7]")
        self.emit("    add x4, x4, #1")
        self.emit(f"    b {loop}")
        self.emit(f"{done}:")
        self.emit("    mov x0, x3")

    # ---------------------------------------------------------- libc ops
    def compile_libc_op(self, op, node):
        if op == "O":
            self.compile_expr(node[1])
            self.emit("    str x0, [sp, #-16]!")
            mode = {"r": "rb", "w": "wb", "a": "ab"}[node[2].val]
            ml = self.string_label(mode)
            self.emit(f"    adrp x1, {ml}")
            self.emit(f"    add x1, x1, :lo12:{ml}")
            self.emit("    ldr x0, [sp], #16")
            self.emit("    bl aic_fopen")
        elif op == "Z":
            self.compile_expr(node[1])
            self.emit("    bl aic_filesize")
        elif op == "R":
            self.compile_expr(node[1])
            self.emit("    str x0, [sp, #-16]!")
            self.compile_expr(node[2])
            self.emit("    str x0, [sp, #-16]!")
            self.emit("    add x1, x0, #1")
            self.emit("    mov x0, x1")
            self.emit("    mov x1, #1")
            self.emit("    bl aic_calloc")
            ok = self.label("allocok")
            self.emit("    cmp x0, #0")
            self.emit(f"    b.ne {ok}")
            self.emit("    b .Lruntimeerror")
            self.emit(f"{ok}:")
            # read(fd, buf, count): x0=fd, x1=buf, x2=count
            self.emit("    mov x3, x0")      # buffer
            self.emit("    ldr x2, [sp], #16")  # count
            self.emit("    mov x1, x3")      # buf
            self.emit("    ldr x0, [sp], #16")  # fd
            self.emit("    bl aic_fread")
            self.needs_runtime_guard = True
        elif op == "K":
            self.compile_expr(node[1])              # fd
            self.emit("    str x0, [sp, #-16]!")
            self.compile_expr(node[2])              # data
            self.emit("    str x0, [sp, #-16]!")
            self.emit("    mov x1, x0")             # buf
            self.emit("    bl aic_strlen")          # x0 = len (data still in x1? no)
            self.emit("    mov x2, x0")             # count
            self.emit("    ldr x1, [sp], #16")      # data
            self.emit("    ldr x0, [sp], #16")      # fd
            self.emit("    bl aic_fwrite")
        elif op == "X":
            self.compile_expr(node[1])
            self.emit("    bl aic_fclose")
        elif op == "H":
            self.compile_expr(node[1])
            self.emit("    add x0, x0, #1")
            self.emit("    mov x1, #1")
            self.emit("    bl aic_calloc")
            self.needs_runtime_guard = True
            ok = self.label("allocok")
            self.emit("    cmp x0, #0")
            self.emit(f"    b.ne {ok}")
            self.emit("    b .Lruntimeerror")
            self.emit(f"{ok}:")
        elif op == "L":
            self.compile_expr(node[1])
            self.emit("    bl aic_strlen")
        elif op == "N":
            self.compile_expr(node[1])
            self.emit("    bl aic_itoa")
            self.needs_runtime_guard = True
        elif op == "V":
            self.compile_expr(node[1])
            self.emit("    bl aic_atoi")
        elif op == "A":
            self.compile_expr(node[1])
            self.emit("    bl aic_arg")
        elif op == "I":
            self.compile_expr(node[1])
            self.emit("    bl aic_input")
        elif op == "F":
            self.compile_expr(node[1])
            self.emit("    bl aic_free")
        elif op == "T":
            self.emit("    bl aic_time")
        else:
            raise CodegenError(f"Line {_line_of(node[0])}: unknown libc op '{op}'")

    # --------------------------------------------------------- statements
    def compile_stmt(self, node):
        if not isinstance(node, list) or not node:
            return
        op = _op_name(node[0])

        if op == ".":
            args = node[1:]
            if not args:
                self.emit("    adrp x0, aic_nl_only")
                self.emit("    add x0, x0, :lo12:aic_nl_only")
                self.emit("    bl aic_print_str")
                return
            for i, a in enumerate(args):
                self.compile_expr(a)
                if self._type(a) == STR:
                    self.emit("    bl aic_print_str")
                else:
                    self.emit("    bl aic_print_int")
                if i != len(args) - 1:
                    self.emit("    adrp x0, aic_space")
                    self.emit("    add x0, x0, :lo12:aic_space")
                    self.emit("    bl aic_print_str")
            # [.] auto-newlines after the final argument
            self.emit("    adrp x0, aic_newline")
            self.emit("    add x0, x0, :lo12:aic_newline")
            self.emit("    bl aic_print_str")
        elif op == "!":
            self.compile_expr(node[2])
            reg = self.allocation.get(node[1].name)
            if reg is not None:
                self.emit(f"    mov {reg}, x0")
            else:
                self.store_slot(node[1].name, "x0")
        elif op == "^":
            self.compile_expr(node[1])
            self.emit(f"    b {self.epilogue}")
        elif op == "?":
            else_l, end_l = self.label("else"), self.label("endif")
            self.compile_expr(node[1])
            self.emit("    cmp x0, #0")
            self.emit(f"    b.eq {else_l}")
            self.compile_stmt(node[2])
            self.emit(f"    b {end_l}")
            self.emit(f"{else_l}:")
            if len(node) > 3:
                self.compile_stmt(node[3])
            self.emit(f"{end_l}:")
        elif op == "W":
            top_l, end_l = self.label("wtop"), self.label("wend")
            self.emit(f"{top_l}:")
            self.compile_expr(node[1])
            self.emit("    cmp x0, #0")
            self.emit(f"    b.eq {end_l}")
            for s in node[2:]:
                self.compile_stmt(s)
            self.emit(f"    b {top_l}")
            self.emit(f"{end_l}:")
        elif op == "@>":
            top_l, end_l = self.label("maptop"), self.label("mapend")
            if len(node) >= 4 and isinstance(node[2], list) and len(node[2]) == 1 and isinstance(node[2][0], Symbol):
                limit_node, vname, body, start_node = node[1], node[2][0].name, node[3:], 0
            else:
                start_node, limit_node, vname, body = node[1], node[2], node[3][0].name, node[4:]

            reg = self.allocation.get(vname)
            if reg is not None:
                if isinstance(start_node, int):
                    self.emit(f"    mov {reg}, #{start_node}")
                else:
                    self.compile_expr(start_node)
                    self.emit(f"    mov {reg}, x0")
                self.emit(f"{top_l}:")
                self.compile_expr(limit_node)
                self.emit("    mov x9, x0")
                self.emit(f"    cmp {reg}, x9")
                self.emit(f"    b.ge {end_l}")
                for s in body:
                    self.compile_stmt(s)
                self.emit(f"    add {reg}, {reg}, #1")
                self.emit(f"    b {top_l}")
                self.emit(f"{end_l}:")
            else:
                self.store_slot(vname, "x0") if not isinstance(start_node, int) else None
                if isinstance(start_node, int):
                    for l in self.imm("x0", start_node):
                        self.emit(l)
                    self.store_slot(vname, "x0")
                self.emit(f"{top_l}:")
                self.load_slot(vname, "x0")
                self.emit("    str x0, [sp, #-16]!")
                self.compile_expr(limit_node)
                self.emit("    mov x1, x0")
                self.emit("    ldr x0, [sp], #16")
                self.emit("    cmp x0, x1")
                self.emit(f"    b.ge {end_l}")
                for s in body:
                    self.compile_stmt(s)
                self.load_slot(vname, "x0")
                self.emit("    add x0, x0, #1")
                self.store_slot(vname, "x0")
                self.emit(f"    b {top_l}")
                self.emit(f"{end_l}:")
        elif op == "D":
            for s in node[1:]:
                self.compile_stmt(s)
        else:
            self.compile_expr(node)

    # ------------------------------------------------------- allocation
    @staticmethod
    def _intervals(stmts, declared, params):
        writes, reads = {}, {}
        counter = [0]

        def walk(node, in_write=False):
            if isinstance(node, Symbol):
                n = node.name
                if n in declared and n not in params:
                    if in_write:
                        writes.setdefault(n, counter[0])
                    else:
                        reads[n] = counter[0]
                counter[0] += 1
            elif isinstance(node, list) and node:
                name = node[0].name if isinstance(node[0], Symbol) else str(node[0])
                counter[0] += 1
                if name == "!":
                    walk(node[1], in_write=True)
                    for c in node[2:]:
                        walk(c)
                elif name == "@>":
                    walk(node[1])
                    walk(node[2])
                    if len(node) >= 4 and isinstance(node[2], list) and len(node[2]) == 1:
                        walk(node[2][0], in_write=True)
                        for c in node[3:]:
                            walk(c)
                    else:
                        walk(node[3][0], in_write=True)
                        for c in node[4:]:
                            walk(c)
                elif name in ("?", "W"):
                    walk(node[1])
                    for c in node[2:]:
                        walk(c)
                else:
                    for c in node[1:]:
                        walk(c)
        for s in stmts:
            walk(s)
        return sorted(((v, s, r) for v, s in writes.items() if (r := reads.get(v)) is not None and r > s),
                      key=lambda x: x[1])

    # ------------------------------------------------ frame / functions
    def compile_main(self, main_stmts, slots, types):
        self.slots, self.types, self.epilogue = slots, types, ".Lmain_ret"
        intervals = self._intervals(main_stmts, self.analyzer.declared, set())
        self.allocation = {}
        free = list(ARM_ALLOC_REGS)
        for v, _, _ in intervals:
            self.allocation[v] = free.pop(0) if free else None
        # stp pairs, so an odd register count pushes one extra (xzr) slot
        nregs = len([r for r in self.allocation.values() if r])
        self.reg_area = 16 * ((nregs + 1) // 2)

        for s in main_stmts:
            self.compile_stmt(s)
        body = "\n".join(self.lines)
        self.lines = []
        frame, saved = self._frame(slots, set())
        push = "".join(f"    stp {saved[i]}, {saved[i + 1]}, [sp, #-16]!\n"
                       for i in range(0, len(saved), 2))
        # restore in reverse push order, or each register receives another's value
        pop = "".join(f"    ldp {saved[i]}, {saved[i + 1]}, [sp], #16\n"
                      for i in range(len(saved) - 2, -1, -2))
        return f"""\
    .globl aic_main
aic_main:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
{push}    {self._sub_sp(frame)}
{self._zeroinit(slots, set())}
{body}
    mov x0, #0
.Lmain_ret:
    {self._add_sp(frame)}
{pop}    ldp x29, x30, [sp], #16
    ret
"""

    def compile_function(self, fn):
        self.slots, self.types, self.epilogue = fn.slots, fn.types, f".Lret_{fn.name}"
        intervals = self._intervals(fn.body_stmts, fn.declared, set(fn.params))
        self.allocation = {}
        free = list(ARM_ALLOC_REGS)
        for v, _, _ in intervals:
            self.allocation[v] = free.pop(0) if free else None
        self.reg_area = 8 * len([r for r in self.allocation.values() if r])

        for s in fn.body_stmts:
            self.compile_stmt(s)
        body = "\n".join(self.lines)
        self.lines = []
        frame, saved = self._frame(fn.slots, set(fn.params))
        push = "".join(f"    stp {saved[i]}, {saved[i + 1]}, [sp, #-16]!\n"
                       for i in range(0, len(saved), 2))
        # restore in reverse push order
        pop = "".join(f"    ldp {saved[i]}, {saved[i + 1]}, [sp], #16\n"
                      for i in range(len(saved) - 2, -1, -2))

        argcopy = []
        for i, p in enumerate(fn.params):
            off = self.slot_offset(p)
            if i < 8:
                argcopy.append(f"    stur {ARM_ARG_REGS[i]}, [x29, #{off}]")
            else:
                src = 16 + (i - 8) * 8
                argcopy.append(f"    ldr x9, [x29, #{src}]")
                argcopy.append(f"    stur x9, [x29, #{off}]")

        return f"""\
{fn.label}:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
{push}    {self._sub_sp(frame)}
{"\n".join(argcopy)}
{self._zeroinit(fn.slots, set(fn.params))}
{body}
    mov x0, #0
{self.epilogue}:
    {self._add_sp(frame)}
{pop}    ldp x29, x30, [sp], #16
    ret
"""

    def _frame(self, slots, params):
        n = len(slots)
        # slots start below the pushed x29/x30 pair and the saved-register area
        raw = 16 + self.reg_area + n * 8
        base = ((raw + 15) // 16) * 16
        saved = sorted({r for r in self.allocation.values() if r},
                       key=lambda r: ARM_ALLOC_REGS.index(r))
        if len(saved) % 2:
            saved.append("xzr")   # 16-byte stp pair padding; xzr writes discard
        # The pushed regs (reg_area bytes) are already reclaimed by the pops,
        # so the sub/add only covers the locals area.
        return base, saved

    @staticmethod
    def _sub_sp(n):
        if n <= 4095:
            return f"sub sp, sp, #{n}"
        out = []
        for shift in (12,):
            chunk = n >> shift
            if chunk:
                out.append(f"    mov x9, #{chunk}, lsl #{shift}")
                n -= chunk << shift
        out.append(f"    mov x9, #{0}" if n == 0 else f"    mov x9, #{n}")
        out.append("    sub sp, sp, x9")
        return "\n".join(out)

    @staticmethod
    def _add_sp(n):
        if n <= 4095:
            return f"add sp, sp, #{n}"
        out = [f"    mov x9, #{n >> 12}, lsl #12"]
        rest = n & 0xFFF
        if rest:
            out.append(f"    add x9, x9, #{rest}")
        out.append("    add sp, sp, x9")
        return "\n".join(out)

    def _zeroinit(self, slots, params):
        out = []
        for name in slots:
            if name in params:
                continue
            off = self.slot_offset(name)
            if -256 <= off <= 255:
                out.append(f"    stur xzr, [x29, #{off}]")
        return "\n".join(out)

    # ------------------------------------------------------------ build
    def build(self, main_stmts, slots, types):
        main_asm = self.compile_main(main_stmts, slots, types)
        fns = "\n".join(self.compile_function(f) for f in self.functions.values())

        divzero = runtime = ""
        rodata_extra = ""
        if self.needs_divzero_guard:
            divzero = """
.Ldivzero:
    adrp x0, divzero_msg
    add x0, x0, :lo12:divzero_msg
    bl aic_runtime_error
"""
            rodata_extra += '\ndivzero_msg:\n    .string "[ERR :code 502 :kind RUNTIME :msg DIVISION_BY_ZERO]\\n"'
        if self.needs_runtime_guard:
            runtime = """
.Lruntimeerror:
    adrp x0, runtimeerr_msg
    add x0, x0, :lo12:runtimeerr_msg
    bl aic_runtime_error
"""
            rodata_extra += '\nruntimeerr_msg:\n    .string "[ERR :code 501 :kind RUNTIME :msg IO_OR_ALLOC_FAILED]\\n"'

        strings = "\n".join(
            f'{label}:\n    .string "{self._esc(text)}"'
            for text, label in self.str_labels.items())

        return f"""\
    .section .rodata
aic_newline:
    .string "\\n"
aic_nl_only:
    .string ""
aic_space:
    .string " "
aic_empty_arg:
    .string ""
{strings}
{rodata_extra}

    .data
aic_argc:
    .quad 0
aic_argv:
    .quad 0
aic_arena_ptr:
    .quad 0

    .text
{main_asm}
{fns}
{divzero}
{runtime}
"""

    @staticmethod
    def _esc(t):
        s = t.replace("\\", "\\\\").replace('"', '\\"')
        s = s.replace("\n", "\\n").replace("\t", "\\t")
        return s


def compile_file_arm64(src_path, asm_path):
    source = read_source_with_imports(src_path)
    tokens, lines = tokenize(source)
    nodes = []
    while tokens:
        nodes.append(parse(tokens, lines))
    analyzer = Analyzer()
    main_stmts, main_slots, main_types = analyzer.analyze(nodes)
    cg = ArmCodegen(analyzer.functions, analyzer)
    asm = cg.build(main_stmts, main_slots, main_types)
    with open(asm_path, "w", encoding="utf-8", newline="\n") as f:
        f.write(asm)
    return asm
