"""Pure-Python AArch64 assembler + ELF64 emitter (zero external toolchain).

Encodes the instruction subset emitted by aic_codegen_arm64.py into fixed-width
32-bit words and packs them into a standalone ET_EXEC ELF or an ET_DYN .so.

ponytail: only the forms the codegen actually emits are implemented (no FP/SIMD,
no register-pair loads beyond stp/ldp, no relocations beyond the init_array
RELATIVE entry and PC-relative internal fixups). Add forms when the codegen
starts emitting them.
"""

import struct

PAGE = 0x1000
EM_AARCH64 = 183
R_AARCH64_RELATIVE = 1027
ET_EXEC, ET_DYN = 2, 3

# ---------------------------------------------------------------- registers
REGS = {f"x{i}": i for i in range(31)}
REGS.update({f"w{i}": i for i in range(31)})
REGS["sp"] = 31
REGS["xzr"] = 31


def _reg(name):
    name = name.strip()
    if name not in REGS:
        raise ValueError(f"unknown register {name!r}")
    return REGS[name]


# --------------------------------------------------------------- encodings
def _m(word, **fields):
    return word


def stp_pre(rt, rt2, rn, imm7):
    # STP 64-bit, pre-index: 0xA9800000 base, Rt[4:0] Rt2[14:10] Rn[9:5] imm7[21:15]
    w = 0xA9800000
    w |= (rt & 0x1F)
    w |= (rt2 & 0x1F) << 10
    w |= (rn & 0x1F) << 5
    w |= (imm7 & 0x7F) << 15
    return w


def ldp_post(rt, rt2, rn, imm7):
    w = 0xA8C00000
    w |= (rt & 0x1F)
    w |= (rt2 & 0x1F) << 10
    w |= (rn & 0x1F) << 5
    w |= (imm7 & 0x7F) << 15
    return w


def mem_imm(mnemonic, rt, rn, imm, mode="offset", size=3):
    """ldr/str/ldrb/strb with unsigned scaled offset, pre-index or post-index.

    Layout facts (verified against aarch64-linux-gnu-as):
      unsigned offset : opcode 0xF94.. / 0xF90.. , imm12 at bits 10..21
      pre-index (!)   : opcode 0xF84../0xF80.. , imm9 at bits 12..20, bits11:10 = 11
      post-index      : same opcode,                 imm9 at bits 12..20, bits11:10 = 01
    """
    unsigned = {"ldr": 0xF9400000, "str": 0xF9000000,
                "ldrb": 0x39400000, "strb": 0x39000000,
                "ldr32": 0xB9400000, "str32": 0xB9000000}[mnemonic]
    unscaled = {"ldr": 0xF8400000, "str": 0xF8000000,
                "ldrb": 0x38400000, "strb": 0x38000000,
                "ldr32": 0xB8400000, "str32": 0xB8000000}[mnemonic]
    scale = 0 if mnemonic in ("ldrb", "strb") else size
    base = unsigned | (rt & 0x1F) | ((rn & 0x1F) << 5)
    if mode == "offset":
        uimm = imm >> scale
        if uimm < 0 or uimm > 0xFFF:
            raise ValueError(f"{mnemonic} offset {imm} out of uimm12 range")
        return base | (uimm << 10)
    if imm < -256 or imm > 255:
        raise ValueError(f"{mnemonic} index {imm} out of imm9 range")
    w = unscaled | (rt & 0x1F) | ((rn & 0x1F) << 5)
    w |= (imm & 0x1FF) << 12
    w |= 0x400                      # bit 10 set for both pre and post
    if mode == "pre":
        w |= 0x800                  # bit 11 -> pre-index
    return w


def mem_reg(mnemonic, rt, rn, rm, shift=0):
    """ldr/str/ldrb/strb with register offset.

    ponytail: kept for completeness but unused by the codegen, which computes
    the address with `add` and then uses a plain load/store. The option/S field
    encoding of the register-offset form is easy to get wrong and buys nothing
    over one extra add.
    """
    raise NotImplementedError("use add + plain load/store instead")


def ldur(mnemonic, rt, rn, imm):
    base = {"ldur": 0xF8400000, "stur": 0xF8000000,
            "ldurb": 0x38400000, "sturb": 0x38000000}[mnemonic]
    return base | (rt & 0x1F) | ((rn & 0x1F) << 5) | ((imm & 0x1FF) << 12)


def add_imm(rd, rn, imm, shift=0):
    return 0x91000000 | (rd & 0x1F) | ((rn & 0x1F) << 5) | ((imm & 0xFFF) << 10) | ((shift & 1) << 22)


def sub_imm(rd, rn, imm, shift=0):
    return 0xD1000000 | (rd & 0x1F) | ((rn & 0x1F) << 5) | ((imm & 0xFFF) << 10) | ((shift & 1) << 22)


def add_reg(rd, rn, rm, shift=0):
    return 0x8B000000 | (rd & 0x1F) | ((rn & 0x1F) << 5) | ((rm & 0x1F) << 16) | (shift << 10)


def sub_reg(rd, rn, rm, shift=0):
    return 0xCB000000 | (rd & 0x1F) | ((rn & 0x1F) << 5) | ((rm & 0x1F) << 16) | (shift << 10)


def mul(rd, rn, rm):
    return 0x9B000000 | (rd & 0x1F) | ((rn & 0x1F) << 5) | ((rm & 0x1F) << 16) | (31 << 10)


def sdiv(rd, rn, rm):
    return 0x9AC00C00 | (rd & 0x1F) | ((rn & 0x1F) << 5) | ((rm & 0x1F) << 16)


def msub(rd, rn, rm, ra):
    return 0x9B008000 | (rd & 0x1F) | ((rn & 0x1F) << 5) | ((rm & 0x1F) << 16) | ((ra & 0x1F) << 10)


def logic(op, rd, rn, rm):
    base = {"and": 0x8A000000, "orr": 0xAA000000, "eor": 0xCA000000}[op]
    return base | (rd & 0x1F) | ((rn & 0x1F) << 5) | ((rm & 0x1F) << 16)


def lslv(rd, rn, rm):
    return 0x9AC02000 | (rd & 0x1F) | ((rn & 0x1F) << 5) | ((rm & 0x1F) << 16)


def asrv(rd, rn, rm):
    return 0x9AC02800 | (rd & 0x1F) | ((rn & 0x1F) << 5) | ((rm & 0x1F) << 16)


def cmp_reg(rn, rm):
    return 0xEB00001F | ((rn & 0x1F) << 5) | ((rm & 0x1F) << 16)


def cmp_imm(rn, imm):
    return 0xF100001F | ((rn & 0x1F) << 5) | ((imm & 0xFFF) << 10)


# CSET is CSINC rd, xzr, xzr, ~cond. The inverted condition code goes in
# bits 12-15, rm/xzr operand in bits 16-20, rn operand (xzr) in bits 5-9.
CSET_BASES = {
    "eq": 0x9A9F17E0, "ne": 0x9A9F07E0,
    "lt": 0x9A9FA7E0, "ge": 0x9A9FB7E0,
    "gt": 0x9A9FD7E0, "le": 0x9A9FC7E0,
    "hi": 0x9A9F97E0, "ls": 0x9A9F87E0,
    "cs": 0x9A9F37E0, "lo": 0x9A9F27E0,
    "mi": 0x9A9F57E0, "pl": 0x9A9F47E0,
    "vs": 0x9A9F77E0, "vc": 0x9A9F67E0,
}


def cset(rd, cond):
    if isinstance(cond, str):
        return CSET_BASES[cond] | (rd & 0x1F)
    return 0x9A9F17E0 | (rd & 0x1F)


def cbz(rt, imm19, nz=False):
    return (0xB5000000 if nz else 0xB4000000) | (rt & 0x1F) | ((imm19 & 0x7FFFF) << 5)


def b_imm26(imm26, link=False):
    return (0x94000000 if link else 0x14000000) | (imm26 & 0x3FFFFFF)


def b_cond(cond, imm19):
    return 0x54000000 | (cond & 0xF) | ((imm19 & 0x7FFFF) << 5)


def mov_reg(rd, rm):
    return 0xAA0003E0 | (rd & 0x1F) | ((rm & 0x1F) << 16)


def movz(rd, imm16, shift=0):
    return 0xD2800000 | (rd & 0x1F) | ((imm16 & 0xFFFF) << 5) | ((shift // 16) << 21)


def movk(rd, imm16, shift=0):
    return 0xF2800000 | (rd & 0x1F) | ((imm16 & 0xFFFF) << 5) | ((shift // 16) << 21)


def movn(rd, imm16, shift=0):
    return 0x92800000 | (rd & 0x1F) | ((imm16 & 0xFFFF) << 5) | ((shift // 16) << 21)


def br(rn):
    return 0xD61F0000 | ((rn & 0x1F) << 5)


def blr(rn):
    return 0xD63F0000 | ((rn & 0x1F) << 5)


def neg(rd, rm):
    return 0xCB0003E0 | (rd & 0x1F) | ((rm & 0x1F) << 16)


def tst(rn, rm):
    return 0xEA00001F | ((rn & 0x1F) << 5) | ((rm & 0x1F) << 16)


def adrp(rd, imm21):
    return 0x90000000 | (rd & 0x1F) | (((imm21 >> 2) & 0x7FFFF) << 5) | ((imm21 & 0x3) << 29)


def adr(rd, imm21):
    return 0x10000000 | (rd & 0x1F) | (imm21 << 5)


RET = 0xD65F03C0
SVC = 0xD4000001
NOP = 0xD503201F

COND = {"eq": 0, "ne": 1, "cs": 2, "hs": 2, "lo": 3, "cc": 3, "mi": 4, "pl": 5,
        "vs": 6, "vc": 7, "hi": 8, "ls": 9, "ge": 10, "lt": 11, "gt": 12, "le": 13}


def load_const(rd, value):
    """movz/movk sequence for a full 64-bit immediate (two's complement ok)."""
    value &= (1 << 64) - 1
    chunks = [(value >> (16 * i)) & 0xFFFF for i in range(4)]
    if value == 0:
        return [movz(rd, 0)]
    out = []
    first = True
    for i, c in enumerate(chunks):
        if c == 0:
            continue
        if first:
            out.append(movz(rd, c, 16 * i))
            first = False
        else:
            out.append(movk(rd, c, 16 * i))
    return out


# ------------------------------------------------------------- assembler
class Assembler:
    def __init__(self):
        self.sections = {"text": bytearray(), "rodata": bytearray(), "data": bytearray()}
        self.labels = {}          # name -> (section, offset)
        self.fixups = []          # (section, byteoff, kind, symbol)
        self.cur = "text"

    def align(self, n):
        buf = self.sections[self.cur]
        while len(buf) % n:
            buf.append(0)

    def assemble(self, text):
        for raw in text.split("\n"):
            line = raw.split("//", 1)[0].rstrip()
            if not line.strip():
                continue
            s = line.strip()
            if s.startswith("#") or s.startswith("//") or s.startswith(";"):
                continue

            if s.endswith(":") and not s.startswith("::"):
                name = s[:-1].strip()
                self.labels[name] = (self.cur, len(self.sections[self.cur]))
                continue
            if s.startswith("."):
                self._directive(s)
                continue
            self._instruction(s)
        return self

    # ---- directives
    def _directive(self, s):
        parts = s.split(None, 1)
        d = parts[0]
        arg = parts[1] if len(parts) > 1 else ""
        if d == ".text":
            self.cur = "text"
        elif d == ".rodata":
            self.cur = "rodata"
        elif d == ".data":
            self.cur = "data"
        elif d == ".section":
            a = arg.strip().strip('"')
            if a.startswith(".rodata"):
                self.cur = "rodata"
            elif a.startswith(".data"):
                self.cur = "data"
            else:
                self.cur = "text"
        elif d in (".globl", ".global"):
            pass
        elif d == ".string":
            self.sections[self.cur].extend(unescape_string(arg))
        elif d == ".quad":
            self.align(8)
            self.sections[self.cur].extend(struct.pack("<Q", int(arg, 0) & ((1 << 64) - 1)))
        elif d == ".byte":
            self.sections[self.cur].append(int(arg, 0) & 0xFF)
        elif d == ".space":
            self.sections[self.cur].extend(b"\x00" * int(arg, 0))
        elif d == ".align":
            self.align(int(arg, 0))
        else:
            raise ValueError(f"unsupported directive {d}")

    # ---- instructions
    def _instruction(self, s):
        parts = s.split(None, 1)
        mnem = parts[0]
        ops = split_operands(parts[1]) if len(parts) > 1 else []

        word = None
        fixkind = None
        fixsym = None

        if mnem in ("ret",) and not ops:
            word = RET
        elif mnem == "nop":
            word = NOP
        elif mnem == "svc":
            word = SVC
        elif mnem in ("stp", "ldp"):
            rt, rt2 = _reg(ops[0]), _reg(ops[1])
            pre = ops[2].strip().endswith("!")
            base, mode, imm = parse_mem(ops[2])
            if len(ops) > 3 and ops[3].strip().startswith("#"):
                # 'stp/ldp xA, xB, [sp], #16' -> post-index
                imm = int(ops[3].strip().lstrip("#"), 0)
                mode = "post"
            elif pre and mode == "offset":
                mode = "pre"
            if mnem == "stp" and mode == "pre":
                word = stp_pre(rt, rt2, base, imm // 8)
            elif mnem == "stp" and mode == "offset":
                # plain stp [sp] -> pre-index form with imm7 = 0
                word = stp_pre(rt, rt2, base, imm // 8)
            elif mnem == "ldp" and mode == "post":
                word = ldp_post(rt, rt2, base, imm // 8)
            elif mnem == "ldp" and mode == "offset":
                word = ldp_post(rt, rt2, base, imm // 8)
            else:
                raise ValueError(f"unsupported {mnem} form: {s}")
        elif mnem in ("ldr", "str", "ldrb", "strb", "ldur", "stur"):
            rt = _reg(ops[0])
            base, mode, imm = parse_mem(ops[1])
            if ":" in ops[1] and "lo12" in ops[1]:
                raise ValueError(f":lo12: only valid inside add: {s}")
            if mode in ("index_reg",):
                raise ValueError(
                    f"register-offset addressing not supported; compute the "
                    f"address with add first ({s})")
            # 'ldr x1, [sp], #16' splits into '[sp]' and '#16' — the trailing
            # operand is the post-index amount.
            if mode == "offset" and len(ops) > 2 and ops[2].strip().startswith("#"):
                imm = int(ops[2].strip().lstrip("#"), 0)
                mode = "post"
            if mode in ("pre", "post"):
                word = mem_imm(mnem, rt, base, imm, mode)
            elif mnem in ("ldur", "stur"):
                word = ldur(mnem, rt, base, imm)
            else:
                word = mem_imm(mnem, rt, base, imm, "offset")
        elif mnem == "mov":
            rd = _reg(ops[0])
            if ops[1].strip().startswith("#"):
                w = load_const(rd, int(ops[1].lstrip("#"), 0))
                self._emit_many(w)
                return
            rm = _reg(ops[1])
            if rd == 31 or rm == 31:
                # SP is only addressable via add/sub immediate forms;
                # mov xN, sp assembles to add xN, sp, #0 and vice versa.
                if rd == 31:
                    word = add_imm(31, rm, 0)
                else:
                    word = add_imm(rd, 31, 0)
            else:
                word = mov_reg(rd, rm)
        elif mnem == "movz":
            rd = _reg(ops[0])
            imm, shift = parse_imm_shift(ops[1], ops[2] if len(ops) > 2 else None)
            word = movz(rd, imm, shift)
        elif mnem == "movk":
            rd = _reg(ops[0])
            imm, shift = parse_imm_shift(ops[1], ops[2] if len(ops) > 2 else None)
            word = movk(rd, imm, shift)
        elif mnem == "movn":
            rd = _reg(ops[0])
            imm, shift = parse_imm_shift(ops[1], ops[2] if len(ops) > 2 else None)
            word = movn(rd, imm, shift)
        elif mnem in ("add", "sub"):
            rd, rn = _reg(ops[0]), _reg(ops[1])
            if ":" in ops[2]:
                # add rd, rn, :lo12:label  -> imm12 fixup on the page offset
                parts_lo = ops[2].split(":lo12:")
                if len(parts_lo) < 2:
                    raise ValueError(f"bad lo12 operand: {ops!r} in {s!r}")
                sym = parts_lo[1].strip()
                word = add_imm(rd, rn, 0)
                fixkind = "lo12"
                fixsym = sym
            elif ops[2].strip().startswith("#"):
                imm, shift = parse_imm_shift(ops[2], ops[3] if len(ops) > 3 else None)
                word = (add_imm if mnem == "add" else sub_imm)(rd, rn, imm, shift)
            else:
                rm = _reg(ops[2])
                sh = parse_shift(ops[3]) if len(ops) > 3 else 0
                word = (add_reg if mnem == "add" else sub_reg)(rd, rn, rm, sh)
        elif mnem == "mul":
            word = mul(_reg(ops[0]), _reg(ops[1]), _reg(ops[2]))
        elif mnem == "sdiv":
            word = sdiv(_reg(ops[0]), _reg(ops[1]), _reg(ops[2]))
        elif mnem == "msub":
            word = msub(_reg(ops[0]), _reg(ops[1]), _reg(ops[2]), _reg(ops[3]))
        elif mnem in ("and", "orr", "eor"):
            rd, rn = _reg(ops[0]), _reg(ops[1])
            if ops[2].strip().startswith("#"):
                # ponytail: bitmask-immediate encoding is fiddly and this codegen
                # only needs masks; emit movn into x9 + register form instead.
                raise ValueError(
                    f"logical immediate not supported for {mnem}: {s} "
                    "(use movn + register form)")
            word = logic(mnem, rd, rn, _reg(ops[2]))
        elif mnem == "lslv":
            word = lslv(_reg(ops[0]), _reg(ops[1]), _reg(ops[2]))
        elif mnem == "asrv":
            word = asrv(_reg(ops[0]), _reg(ops[1]), _reg(ops[2]))
        elif mnem == "cmp":
            rn = _reg(ops[0])
            if ops[1].strip().startswith("#"):
                word = cmp_imm(rn, int(ops[1].lstrip("#"), 0))
            else:
                word = cmp_reg(rn, _reg(ops[1]))
        elif mnem == "tst":
            word = tst(_reg(ops[0]), _reg(ops[1]))
        elif mnem == "cset":
            word = cset(_reg(ops[0]), ops[1].strip())
        elif mnem in ("cbz", "cbnz"):
            rt = _reg(ops[0])
            fixkind = "imm19"
            fixsym = ops[1].strip()
            word = cbz(rt, 0, nz=(mnem == "cbnz"))
        elif mnem == "b" or mnem == "bl":
            fixkind = "imm26"
            fixsym = ops[0].strip()
            word = b_imm26(0, link=(mnem == "bl"))
        elif mnem.startswith("b."):
            fixkind = "imm19"
            fixsym = ops[0].strip()
            word = b_cond(COND[mnem[2:]], 0)
        elif mnem == "adrp":
            rd = _reg(ops[0])
            fixkind = "adrp"
            fixsym = ops[1].strip()
            word = adrp(rd, 0)
        elif mnem == "adr":
            rd = _reg(ops[0])
            fixkind = "adr"
            fixsym = ops[1].strip()
            word = adr(rd, 0)
        elif mnem == "neg":
            word = neg(_reg(ops[0]), _reg(ops[1]))
        elif mnem == "br":
            word = br(_reg(ops[0]))
        elif mnem == "blr":
            word = blr(_reg(ops[0]))
        else:
            raise ValueError(f"unsupported instruction {mnem!r} in {s!r}")

        self._emit_word(word, fixkind, fixsym)

    def _emit_word(self, word, fixkind=None, fixsym=None):
        buf = self.sections[self.cur]
        off = len(buf)
        buf.extend(struct.pack("<I", word))
        if fixkind:
            self.fixups.append((self.cur, off, fixkind, fixsym))

    def _emit_many(self, words):
        for w in words:
            self._emit_word(w)


def parse_mem(op):
    """Parse '[base]', '[base, #imm]', '[base, #imm]!', '[base], #imm', '[base, xN, lsl #3]'."""
    s = op.strip()
    pre = s.endswith("!")
    if pre:
        s = s[:-1]
    if s.startswith("["):
        i = s.find("]")
        inner = s[1:i]
        tail = s[i + 1:].strip()
        mode = "offset"
        imm = 0
        if tail:
            imm = int(tail.lstrip(", ").lstrip("#"), 0)
            mode = "post"
        parts = [p.strip() for p in inner.split(",")]
        base = _reg(parts[0])
        if len(parts) == 1:
            return base, mode, imm
        if parts[1].startswith("#"):
            imm = int(parts[1].lstrip("#"), 0)
            return base, ("pre" if pre else mode), imm
        return base, "index_reg", 0
    raise ValueError(f"bad memory operand {op!r}")


def parse_index_reg(op):
    s = op.strip()
    inner = s[s.find("[") + 1:s.find("]")]
    parts = [p.strip() for p in inner.split(",")]
    rm = _reg(parts[1])
    sh = 0
    if len(parts) > 2:
        sh = parse_shift(" ".join(parts[2:]))
    return rm, sh


def parse_shift(tok):
    if not tok:
        return 0
    t = tok.strip().replace("#", "").replace("lsl", "").strip()
    return int(t) if t else 0


def parse_imm_shift(imm_tok, shift_tok):
    imm = int(imm_tok.strip().lstrip("#"), 0)
    shift = parse_shift(shift_tok) if shift_tok else 0
    return imm, shift


def split_operands(tail):
    """Split on commas that are not inside brackets."""
    out, depth, cur = [], 0, ""
    for ch in tail:
        if ch == "[":
            depth += 1
        elif ch == "]":
            depth -= 1
        if ch == "," and depth == 0:
            out.append(cur.strip())
            cur = ""
        else:
            cur += ch
    if cur.strip():
        out.append(cur.strip())
    return out


def unescape_string(arg):
    s = arg.strip()
    if s.startswith('"') and s.endswith('"'):
        s = s[1:-1]
    out = bytearray()
    i = 0
    while i < len(s):
        c = s[i]
        if c == "\\" and i + 1 < len(s):
            n = s[i + 1]
            mapping = {"n": 10, "t": 9, "r": 13, "0": 0, '"': 34, "\\": 92}
            if n in mapping:
                out.append(mapping[n])
                i += 2
                continue
            if n == "x":
                j = i + 2
                hexs = ""
                while j < len(s) and s[j] in "0123456789abcdefABCDEF":
                    hexs += s[j]
                    j += 1
                out.append(int(hexs or "0", 16) & 0xFF)
                i = j
                continue
            out.append(ord(n))
            i += 2
            continue
        out.append(ord(c))
        i += 1
    out.append(0)
    return bytes(out)


# -------------------------------------------------------------- relocations
def apply_fixups(asm, sec_vaddr):
    """Apply PC-relative fixups using real section base addresses.

    sec_vaddr maps section name -> virtual base address. Called from the ELF
    packers once the layout is known (a fixup cannot be resolved earlier
    because adrp/b targets can live in a different section).
    """
    sections = {"text": bytearray(asm.sections["text"]),
                "rodata": bytearray(asm.sections["rodata"]),
                "data": bytearray(asm.sections["data"])}

    def addr(sec, off):
        return sec_vaddr[sec] + off

    for sec, off, kind, sym in asm.fixups:
        toff_sec, toff = asm.labels[sym]
        buf = sections[sec]
        word = struct.unpack_from("<I", buf, off)[0]
        instr_addr = addr(sec, off)
        if kind == "imm26":
            delta = addr(toff_sec, toff) - instr_addr
            word |= (delta >> 2) & 0x3FFFFFF
        elif kind == "imm19":
            delta = addr(toff_sec, toff) - instr_addr
            word |= ((delta >> 2) & 0x7FFFF) << 5
        elif kind == "adrp":
            delta = (addr(toff_sec, toff) & ~0xFFF) - (instr_addr & ~0xFFF)
            pages = delta >> 12
            word |= (((pages >> 2) & 0x7FFFF) << 5) | ((pages & 0x3) << 29)
        elif kind == "adr":
            delta = addr(toff_sec, toff) - instr_addr
            word |= (delta & 0x1FFFFF) << 5
        elif kind == "lo12":
            word |= (addr(toff_sec, toff) & 0xFFF) << 10
        else:
            raise ValueError(f"unknown fixup {kind}")
        word &= 0xFFFFFFFF
        struct.pack_into("<I", buf, off, word)
    return sections


# ------------------------------------------------------------ ELF packing
def _elf_hash(name: str) -> int:
    h = 0
    for ch in name.encode("ascii"):
        h = (h << 4) + ch
        g = h & 0xF0000000
        if g:
            h ^= (g >> 24)
        h &= ~g
    return h & 0xFFFFFFFF


def _elf_header(e_type, entry, phoff, phnum, shoff=0, shnum=0):
    ident = b"\x7fELF" + bytes([2, 1, 1, 0, 0] + [0] * 9)
    # e_ident, e_type, e_machine, e_version, e_entry, e_phoff, e_shoff,
    # e_flags, e_ehsize, e_phentsize, e_phnum, e_shentsize, e_shnum, e_shstrndx
    return struct.pack("<16sHHIQQQIHHHHHH",
                       ident, e_type, EM_AARCH64, 1, entry, phoff, shoff,
                       0, 64, 56, phnum, 0, shnum, 0)


def build_standalone_arm64_elf(asm_content, output_path):
    full = asm_content + "\n" + ARM64_RUNTIME_ASM
    asm = Assembler().assemble(full)

    phnum = 2
    phoff = 64
    header_size = 64 + phnum * 56
    text_off = (header_size + 15) & ~15
    BASE = 0x400000

    raw_text = len(asm.sections["text"])
    raw_rodata = len(asm.sections["rodata"])
    raw_data = len(asm.sections["data"])

    # The first PT_LOAD must start at file offset 0 so the ELF header and phdrs
    # are mapped; the code lives at text_off inside that same RX segment.
    ro_off = 0
    rw_off = (text_off + raw_text + raw_rodata + PAGE - 1) & ~(PAGE - 1)
    rw_end = rw_off + raw_data

    secs = apply_fixups(asm, {"text": BASE + text_off,
                              "rodata": BASE + text_off + raw_text,
                              "data": BASE + rw_off})
    text = bytes(secs["text"])
    rodata = bytes(secs["rodata"])
    data = bytes(secs["data"])
    entry = BASE + text_off + asm.labels["_start"][1]

    # p_offset is a FILE offset; p_vaddr/p_paddr are the virtual addresses.
    ph = struct.pack("<IIQQQQQQ", 1, 5, ro_off, BASE + ro_off, BASE + ro_off,
                     rw_off - ro_off, rw_off - ro_off, PAGE)
    ph += struct.pack("<IIQQQQQQ", 1, 6, rw_off, BASE + rw_off, BASE + rw_off,
                      rw_end - rw_off, rw_end - rw_off, PAGE)

    buf = bytearray(_elf_header(ET_EXEC, entry, phoff, phnum) + ph)
    buf.extend(b"\x00" * (text_off - len(buf)))
    buf.extend(text)
    buf.extend(rodata)
    buf.extend(b"\x00" * (rw_off - len(buf)))
    buf.extend(data)
    buf.extend(b"\x00" * (rw_end - len(buf)))

    with open(output_path, "wb") as f:
        f.write(buf)
    print(f"Direct AArch64 ELF64 executable generated: {output_path} ({len(buf):,} bytes)")
    return buf


# ------------------------------------------------- AArch64 Linux runtime
# Raw syscalls only: no libc, no PLT/GOT, zero undefined symbols.
# AArch64 Linux syscall ABI: x8 = number, x0..x5 = args, result in x0.
from .arm64_runtime import RUNTIME_ASM as ARM64_RUNTIME_ASM



_START_BLOCK_ARM = """.global _start
_start:
    mov x9, sp
    ldr x0, [x9]
    add x1, x9, #8
    adrp x10, aic_argc
    add x10, x10, :lo12:aic_argc
    str x0, [x10]
    adrp x10, aic_argv
    add x10, x10, :lo12:aic_argv
    str x1, [x10]
    bl aic_init_arena
    adrp x10, aic_argc
    add x10, x10, :lo12:aic_argc
    ldr x0, [x10]
    adrp x10, aic_argv
    add x10, x10, :lo12:aic_argv
    ldr x1, [x10]
    bl aic_main
    mov x8, #93
    svc #0

"""


def build_shared_arm64_elf(asm_content, output_path):
    user_asm = asm_content
    ctor = """
    .text
    .global aic_ctor
aic_ctor:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    bl aic_init_arena
    ldp x29, x30, [sp], #16
    ret
"""
    runtime = ARM64_RUNTIME_ASM.replace(_START_BLOCK_ARM, "")
    asm = Assembler().assemble(user_asm + "\n" + ctor + "\n" + runtime)

    exports = {lbl[6:]: lbl for lbl in asm.labels if lbl.startswith("aicfn_")}

    text_off = 0x4000
    raw_text = len(asm.sections["text"])
    raw_rodata = len(asm.sections["rodata"])
    rodata_off = text_off + raw_text
    data_off = (rodata_off + raw_rodata + PAGE - 1) & ~(PAGE - 1)

    secs = apply_fixups(asm, {"text": text_off, "rodata": rodata_off, "data": data_off})
    text = bytes(secs["text"])
    rodata = bytes(secs["rodata"])
    data = bytes(secs["data"])

    def vaddr(sec, off):
        if sec == "text":
            return text_off + off
        if sec == "rodata":
            return rodata_off + off
        return data_off + off

    # dynamic tables, base-0 (file offset == vaddr)
    initarr_vaddr = data_off + len(data)
    initarr_vaddr = (initarr_vaddr + 7) & ~7
    initarr = struct.pack("<Q", 0)
    ctor_vaddr = vaddr("text", asm.labels["aic_ctor"][1])

    dynstr_off = (initarr_vaddr + 8 + 7) & ~7
    dynstr = bytearray(b"\x00")
    name_offs = {}
    for pub in exports:
        name_offs[pub] = len(dynstr)
        dynstr.extend(pub.encode("ascii"))
        dynstr.append(0)
    dynstr_sz = len(dynstr)

    dynsym_off = (dynstr_off + dynstr_sz + 7) & ~7
    dynsym = bytearray(struct.pack("<IBBHQQ", 0, 0, 0, 0, 0, 0))
    for pub, mangled in exports.items():
        sec, off = asm.labels[mangled]
        dynsym.extend(struct.pack("<IBBHQQ", name_offs[pub], 0x12, 0, 1, vaddr(sec, off), 0))
    n_export = len(exports)
    dynsym_sz = (n_export + 1) * 24

    hash_off = (dynsym_off + dynsym_sz + 7) & ~7
    nh = n_export + 1
    bucket = [0] * nh
    chain = [0] * nh
    for idx, pub in enumerate(exports, 1):
        b = _elf_hash(pub) % nh
        chain[idx] = bucket[b]
        bucket[b] = idx
    dyn_hash = bytearray(struct.pack("<II", nh, nh))
    for x in bucket:
        dyn_hash.extend(struct.pack("<I", x))
    for x in chain:
        dyn_hash.extend(struct.pack("<I", x))
    hash_sz = len(dyn_hash)

    R_AARCH64_ABS64 = 257
    rela_off = (hash_off + hash_sz + 7) & ~7
    rela = struct.pack("<QQQ", initarr_vaddr, R_AARCH64_RELATIVE, ctor_vaddr)
    rela_sz = len(rela)

    dynamic_off = (rela_off + rela_sz + 7) & ~7
    DT_HASH, DT_STRTAB, DT_SYMTAB = 4, 5, 6
    DT_RELA, DT_RELASZ, DT_RELAENT = 7, 8, 9
    DT_STRSZ, DT_SYMENT = 10, 11
    DT_INIT_ARRAY, DT_INIT_ARRAYSZ = 0x19, 0x1b
    ents = [(DT_HASH, hash_off), (DT_STRTAB, dynstr_off), (DT_SYMTAB, dynsym_off),
            (DT_RELA, rela_off), (DT_RELASZ, rela_sz), (DT_RELAENT, 24),
            (DT_STRSZ, dynstr_sz), (DT_SYMENT, 24),
            (DT_INIT_ARRAY, initarr_vaddr), (DT_INIT_ARRAYSZ, 8), (0, 0)]
    dyn_bytes = bytearray()
    for tag, val in ents:
        dyn_bytes.extend(struct.pack("<qQ", tag, val))
    dyn_sz = len(dyn_bytes)

    file_size = (dynamic_off + dyn_sz + 7) & ~7
    phnum = 3
    phoff = 64
    ph = struct.pack("<IIQQQQQQ", 1, 5, 0, 0, 0, data_off, data_off, PAGE)
    ph += struct.pack("<IIQQQQQQ", 1, 6, data_off, data_off, data_off,
                      file_size - data_off, file_size - data_off, PAGE)
    ph += struct.pack("<IIQQQQQQ", 2, 6, dynamic_off, dynamic_off, dynamic_off,
                      dyn_sz, dyn_sz, 8)

    buf = bytearray(_elf_header(ET_DYN, 0, phoff, phnum) + ph)
    buf.extend(b"\x00" * (text_off - len(buf)))
    buf.extend(text)
    buf.extend(rodata)
    buf.extend(b"\x00" * (data_off - len(buf)))
    buf.extend(data)
    buf.extend(b"\x00" * (initarr_vaddr - len(buf)))
    buf.extend(initarr)
    buf.extend(b"\x00" * (dynstr_off - len(buf)))
    buf.extend(dynstr)
    buf.extend(b"\x00" * (dynsym_off - len(buf)))
    buf.extend(dynsym)
    buf.extend(b"\x00" * (hash_off - len(buf)))
    buf.extend(dyn_hash)
    buf.extend(b"\x00" * (rela_off - len(buf)))
    buf.extend(rela)
    buf.extend(b"\x00" * (dynamic_off - len(buf)))
    buf.extend(dyn_bytes)
    buf.extend(b"\x00" * (file_size - len(buf)))

    with open(output_path, "wb") as f:
        f.write(buf)
    print(f"Direct AArch64 shared ELF64 (.so) generated: {output_path} "
          f"({len(buf):,} bytes, {n_export} exports)")
    return buf
