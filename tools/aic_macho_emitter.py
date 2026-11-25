"""Pure-Python AArch64 Mach-O emitter + ad-hoc code signer (macOS Apple Silicon).

Reuses the AArch64 encoder in aic_arm64_emitter.py. Emits MH_EXECUTE and
MH_DYLIB images with 0x4000 page alignment and a hand-built SHA-256 ad-hoc
signature, so `as`, `ld64`, `clang` and `codesign` are all unnecessary.

ponytail: libSystem imports are bound with classic LC_DYLD_INFO_ONLY bind
opcodes, not LC_DYLD_CHAINED_FIXUPS. dyld honours the classic stream and it is
a fraction of the encoder work; switch only if a chained-fixup-only loader
ever requires it.

ponytail: the signature is a single CodeDirectory blob (what `codesign -s -`
emits for a plain ad-hoc signature), with no requirements/entitlements blobs.
"""

import hashlib
import os
import struct

from .aic_arm64_emitter import Assembler, apply_fixups

PAGE = 0x4000                       # Apple Silicon 16 KiB page
MH_MAGIC_64 = 0xFEEDFACF
CPU_TYPE_ARM64 = 0x0100000C
CPU_SUBTYPE_ARM64_ALL = 0
MH_EXECUTE, MH_DYLIB = 2, 6

MH_NOUNDEFS, MH_DYLDLINK, MH_TWOLEVEL, MH_PIE = 0x1, 0x4, 0x80, 0x200000

LC_SEGMENT_64 = 0x19
LC_LOAD_DYLINKER = 0xE
LC_LOAD_DYLIB = 0xC
LC_ID_DYLIB = 0xD
LC_DYLD_INFO_ONLY = 0x22 | 0x80000000
LC_MAIN = 0x28 | 0x80000000
LC_CODE_SIGNATURE = 0x1D
LC_DYLD_EXPORTS_TRIE = 0x33 | 0x80000000

VM_PROT_READ, VM_PROT_WRITE, VM_PROT_EXEC = 1, 2, 4
LIB_DYLINKER = "/usr/lib/dyld"
LIB_DYLIB = "/usr/lib/libSystem.B.dylib"
BIND_TYPE_POINTER = 1
TEXT_VMADDR = 0x100000000
CS_ADHOC_LINKER_SIGNED = 0x20002


def _uleb(n):
    out = bytearray()
    while True:
        b = n & 0x7F
        n >>= 7
        if n:
            out.append(b | 0x80)
        else:
            out.append(b)
            return bytes(out)


def _cmd(cmd, payload):
    return struct.pack("<II", cmd, 8 + len(payload)) + payload


def _seg(name, vmaddr, vmsize, fileoff, filesize, initprot):
    raw = name.encode()
    body = raw + b"\x00" * (16 - len(raw)) + struct.pack(
        "<QQQQIIII", vmaddr, vmsize, fileoff, filesize, initprot, initprot, 0, 0)
    return _cmd(LC_SEGMENT_64, body)


def _dylib_cmd(cmd, name):
    payload = struct.pack("<IIII", 24, 2, 0x10000, 0x10000) + name.encode() + b"\x00"
    payload += b"\x00" * ((-len(payload)) % 8)
    return _cmd(cmd, payload)


def _dylinker_cmd(name):
    payload = struct.pack("<I", 12) + name.encode() + b"\x00"
    payload += b"\x00" * ((-len(payload)) % 8)
    return _cmd(LC_LOAD_DYLINKER, payload)


def _linkedit_data(cmd, off, size):
    return _cmd(cmd, struct.pack("<II", off, size))


def _dyld_info(bind_off, bind_size):
    return _cmd(LC_DYLD_INFO_ONLY,
                struct.pack("<IIIIIIIIII", 0, 0, bind_off, bind_size, 0, 0, 0, 0, 0, 0))


def _main_cmd(entryoff):
    return _cmd(LC_MAIN, struct.pack("<QQ", entryoff, 0))


def bind_stream(binds):
    """binds: [(segment_index, offset_in_segment, symbol_name)]."""
    out = bytearray()
    out.append(0x10 | 1)                        # SET_DYLIB_ORDINAL_IMM = 1
    out.append(0x50 | BIND_TYPE_POINTER)        # SET_TYPE_IMM
    for seg, off, name in binds:
        out.append(0x40)                        # SET_SYMBOL_TRAILING_FLAGS_IMM
        out.extend(name.encode() + b"\x00")
        out.append(0x70)                        # SET_SEGMENT_AND_OFFSET_ULEB
        out.append(seg)
        out.extend(_uleb(off))
        out.append(0x90)                        # DO_BIND
    out.append(0x00)                            # DONE
    return bytes(out)


def export_trie(entries):
    """entries: {symbol: address}. Flat one-level trie."""
    if not entries:
        return b""
    leaves = sorted(entries.items())
    out = bytearray(_uleb(len(leaves)))
    for sym, addr in leaves:
        term = _uleb(0) + _uleb(addr) + b"\x00"
        out.extend(_uleb(len(sym.encode())))
        out.extend(sym.encode())
        out.extend(_uleb(len(term)))
        out.extend(term)
    out.append(0x00)
    return bytes(out)


def _code_directory(code_limit, hashes, ident, exec_seg_limit):
    magic, version = 0xFADE0C02, 0x20400
    hash_type, hash_size, page_size = 2, 32, 12
    n_special, n_code = 2, len(hashes)
    ident_off = 88
    hash_off = ident_off + len(ident) + 1 + n_special * hash_size
    sig_len = hash_off + n_code * hash_size
    header = struct.pack(
        ">IIIIIIII" "I" "BBBB" "IIII" "QQQQ",
        magic, sig_len, version, CS_ADHOC_LINKER_SIGNED,
        hash_off, ident_off, n_special, n_code,
        code_limit, hash_size, hash_type, 0, page_size,
        0, 0, 0, 0,
        0, 0, exec_seg_limit, 1,
    )
    assert len(header) == 88, len(header)
    return (header + ident.encode() + b"\x00"
            + b"\x00" * (n_special * hash_size) + b"".join(hashes))


def _super_blob(blobs):
    n = len(blobs)
    total = 12 + 8 * n + sum(len(b) for b in blobs)
    out = bytearray(struct.pack(">III", 0xFADE0CC0, total, n))
    off = 12 + 8 * n
    for i, b in enumerate(blobs):
        out.extend(struct.pack(">II", i, off))
        off += len(b)
    return bytes(out) + b"".join(blobs)


def _commands(kind, ident, layout):
    base = TEXT_VMADDR if kind == "exe" else 0
    cmds = bytearray()
    if kind == "exe":
        cmds.extend(_seg("__PAGEZERO", 0, TEXT_VMADDR, 0, 0, 0))
    cmds.extend(_seg("__TEXT", base, layout["text_vmsize"], 0, layout["text_vmsize"],
                     VM_PROT_READ | VM_PROT_EXEC))
    cmds.extend(_seg("__DATA", base + layout["data_off"], layout["data_vmsize"],
                     layout["data_off"], layout["data_vmsize"],
                     VM_PROT_READ | VM_PROT_WRITE))
    cmds.extend(_dylinker_cmd(LIB_DYLINKER))
    cmds.extend(_dylib_cmd(LC_LOAD_DYLIB, LIB_DYLIB))
    if kind == "exe":
        cmds.extend(_main_cmd(layout["entry"]))
    else:
        cmds.extend(_dylib_cmd(LC_ID_DYLIB, f"@rpath/{ident}.dylib"))
    cmds.extend(_dyld_info(layout["link_off"], layout["bind_size"]))
    if layout["trie_size"]:
        cmds.extend(_linkedit_data(LC_DYLD_EXPORTS_TRIE,
                                   layout["link_off"] + layout["bind_size"],
                                   layout["trie_size"]))
    cmds.extend(_seg("__LINKEDIT", base + layout["link_off"], layout["link_file"],
                     layout["link_off"], layout["link_file"], VM_PROT_READ))
    cmds.extend(_linkedit_data(LC_CODE_SIGNATURE, layout["sig_off"], layout["sig_size"]))
    return bytes(cmds)


def _count_cmds(blob):
    n, i = 0, 0
    while i < len(blob):
        _, size = struct.unpack_from("<II", blob, i)
        if size == 0:
            break
        n += 1
        i += size
    return n


def build(asm_text, output_path, kind="exe", runtime_asm="", export_names=None):
    asm = Assembler().assemble(asm_text + "\n" + runtime_asm)

    raw_text = bytes(asm.sections["text"])
    raw_cstr = bytes(asm.sections["rodata"])
    raw_data = bytes(asm.sections["data"])

    ident = os.path.splitext(os.path.basename(output_path))[0]

    bind_names = sorted(l for l in asm.labels if l.startswith("sym_"))
    # bind offsets are relative to the start of __DATA (segment-relative)
    got = [(2 if kind == "exe" else 1, len(raw_data) + 8 * i, l[4:])
           for i, l in enumerate(bind_names)]
    bind_bytes = bind_stream(got)
    data_blob = raw_data + b"\x00" * (8 * len(got))

    exports = {}
    if kind == "dylib":
        for name in (export_names or []):
            lbl = "_" + name
            if lbl in asm.labels and asm.labels[lbl][0] == "text":
                exports[lbl] = asm.labels[lbl][1]
    text_len = len(raw_text) + len(raw_cstr)

    # Command list length depends only on which commands are emitted, so size it
    # with a placeholder trie first; the trie payload itself needs text_off.
    probe = _commands(kind, ident, dict(
        text_vmsize=PAGE, data_off=PAGE, data_vmsize=PAGE, entry=64,
        link_off=PAGE, link_file=PAGE, bind_size=len(bind_bytes),
        trie_size=len(exports), sig_off=PAGE, sig_size=64))
    text_off = (32 + len(probe) + 15) & ~15

    # trie addresses are image-base-relative
    trie = export_trie({s: text_off + off for s, off in exports.items()})

    text_vmsize = (text_off + text_len + PAGE - 1) & ~(PAGE - 1)
    data_off = text_vmsize
    data_vmsize = (len(data_blob) + PAGE - 1) & ~(PAGE - 1)
    link_off = (data_off + data_vmsize + PAGE - 1) & ~(PAGE - 1)
    sig_off = link_off + len(bind_bytes) + len(trie)
    n_code = (sig_off + 4095) // 4096
    sig_len = len(_super_blob([_code_directory(sig_off, [b"\x00" * 32] * n_code,
                                               ident, text_len)]))
    link_file = (sig_len + len(bind_bytes) + len(trie) + PAGE - 1) & ~(PAGE - 1)
    entry = text_off + asm.labels["_start_macho"][1]

    layout = dict(text_vmsize=text_vmsize, data_off=data_off, data_vmsize=data_vmsize,
                  entry=entry, link_off=link_off, link_file=link_file,
                  bind_size=len(bind_bytes), trie_size=len(trie),
                  sig_off=sig_off, sig_size=sig_len)
    cmds = _commands(kind, ident, layout)
    assert _count_cmds(cmds) == _count_cmds(probe)

    base = TEXT_VMADDR if kind == "exe" else 0
    fixed = apply_fixups(asm, {
        "text": base + text_off,
        "rodata": base + text_off + len(raw_text),
        "data": base + data_off,
    })
    code = bytes(fixed["text"])
    cstr = bytes(fixed["rodata"])
    dsec = bytes(fixed["data"])

    flags = MH_NOUNDEFS | MH_DYLDLINK | MH_TWOLEVEL | (MH_PIE if kind == "exe" else 0)
    filetype = MH_EXECUTE if kind == "exe" else MH_DYLIB

    buf = bytearray(struct.pack("<IIIIIIII", MH_MAGIC_64, CPU_TYPE_ARM64,
                                CPU_SUBTYPE_ARM64_ALL, filetype,
                                _count_cmds(cmds), len(cmds), flags, 0))
    buf.extend(cmds)
    assert len(buf) <= text_off, (len(buf), text_off)
    buf.extend(b"\x00" * (text_off - len(buf)))
    buf.extend(code)
    buf.extend(cstr)
    buf.extend(b"\x00" * (data_off - len(buf)))
    buf.extend(dsec)
    buf.extend(b"\x00" * (link_off - len(buf)))
    buf.extend(bind_bytes)
    buf.extend(trie)
    assert len(buf) == sig_off, (len(buf), sig_off)

    hashes = [hashlib.sha256(buf[i:i + 4096]).digest()
              for i in range(0, sig_off, 4096)]
    blob = _super_blob([_code_directory(sig_off, hashes, ident, text_len)])
    assert len(blob) == sig_len, (len(blob), sig_len)
    buf.extend(blob)
    buf.extend(b"\x00" * (link_off + link_file - len(buf)))

    with open(output_path, "wb") as f:
        f.write(buf)
    print(f"Direct AArch64 Mach-O {'executable' if kind == 'exe' else 'dylib'} "
          f"generated: {output_path} ({len(buf):,} bytes)")
    return bytes(buf)


def build_executable(macho_asm, output_path, runtime_asm=""):
    return build(macho_asm, output_path, kind="exe", runtime_asm=runtime_asm)


def build_dylib(macho_asm, output_path, export_names=None, runtime_asm=""):
    return build(macho_asm, output_path, kind="dylib", runtime_asm=runtime_asm,
                 export_names=export_names)
