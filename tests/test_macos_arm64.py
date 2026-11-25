#!/usr/bin/env python3
"""test_macos_arm64.py - AIC Milestone 4b: Mach-O ARM64 validation.

Structural checks run anywhere (Windows/Linux/macOS); native execution checks
run only on Darwin/arm64.

Run: python3 tests/test_macos_arm64.py
"""

import hashlib
import os
import platform
import struct
import subprocess
import sys
import tempfile

REPO = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))
AIC = os.path.join(REPO, "aic.py")

PAGE = 0x4000
MH_MAGIC_64 = 0xFEEDFACF
CPU_TYPE_ARM64 = 0x0100000C
MH_EXECUTE, MH_DYLIB = 2, 6

LC_SEGMENT_64 = 0x19
LC_LOAD_DYLINKER = 0xE
LC_LOAD_DYLIB = 0xC
LC_ID_DYLIB = 0xD
LC_DYLD_INFO_ONLY = 0x22
LC_MAIN = 0x28
LC_CODE_SIGNATURE = 0x1D
LC_DYLD_EXPORTS_TRIE = 0x33
REQ = 0x80000000

EXE_SUITES = ["examples/01_basics.aic", "examples/02_algorithms.aic", "examples/03_records.aic"]

LIB = """\
[: fib [n] [D
  [? [< n 2] [^ n] [D]]
  [^ [+ [fib [- n 1]] [fib [- n 2]]]]
]]
[: add_numbers [a b] [D
  [^ [+ a b]]
]]
"""


# ------------------------------------------------------------------ parsing
def parse_macho(path):
    data = open(path, "rb").read()
    magic, cputype, cpusub, filetype, ncmds, sizeofcmds, flags, _ = struct.unpack_from(
        "<IIIIIIII", data, 0)
    assert magic == MH_MAGIC_64, hex(magic)
    assert cputype == CPU_TYPE_ARM64, hex(cputype)

    cmds = []
    off = 32
    for _ in range(ncmds):
        cmd, size = struct.unpack_from("<II", data, off)
        cmds.append((cmd, size, data[off:off + size]))
        off += size
    assert len(cmds) == ncmds and cmds
    assert off <= 32 + sizeofcmds

    segs = []
    for cmd, size, raw in cmds:
        if cmd == LC_SEGMENT_64:
            name = raw[8:24].rstrip(b"\x00").decode()
            vmaddr, vmsize, fileoff, filesize, maxprot, initprot, nsects, fl = \
                struct.unpack_from("<QQQQIIII", raw, 24)
            segs.append(dict(name=name, vmaddr=vmaddr, vmsize=vmsize,
                             fileoff=fileoff, filesize=filesize,
                             initprot=initprot, maxprot=maxprot))
    load_dylibs = [(raw[24:].split(b"\x00")[0].decode()) for cmd, _, raw in cmds
                   if cmd in (LC_LOAD_DYLIB, LC_ID_DYLIB)]
    dylinker = None
    for cmd, _, raw in cmds:
        if cmd == LC_LOAD_DYLINKER:
            dylinker = raw[12:].split(b"\x00")[0].decode()

    sig = None
    trie = None
    for cmd, _, raw in cmds:
        if cmd == LC_CODE_SIGNATURE:
            o, sz = struct.unpack_from("<II", raw, 8)
            sig = (o, sz)
        if (cmd & ~REQ) == LC_DYLD_EXPORTS_TRIE:
            o, sz = struct.unpack_from("<II", raw, 8)
            trie = (o, sz)

    return dict(data=data, filetype=filetype, flags=flags, cmds=cmds,
                segs=segs, load_dylibs=load_dylibs, dylinker=dylinker,
                sig=sig, trie=trie)


def check_trie(data, off, size, names):
    """Walk Apple's export trie; return the exported symbol names."""
    end = off + size
    p = off

    def uleb(p):
        v = shift = 0
        while True:
            b = data[p]
            p += 1
            v |= (b & 0x7F) << shift
            shift += 7
            if not b & 0x80:
                return v, p

    seen = []
    children = []

    # root node
    term_size, p = uleb(p)
    assert term_size == 0, "root terminalSize must be 0"
    child_count = data[p]; p += 1
    assert child_count > 0
    for _ in range(child_count):
        # null-terminated edge label
        start = p
        while data[p] != 0:
            p += 1
        name = data[start:p].decode()
        p += 1
        node_off, p = uleb(p)
        children.append((name, off + node_off))
        seen.append(name)

    # every child offset must land inside the trie blob
    for name, abs_off in children:
        assert off < abs_off < end, f"{name} child offset {abs_off} out of range"
        q = abs_off
        tsize, q = uleb(q)
        flags, q = uleb(q)
        addr, q = uleb(q)
        assert flags == 0, f"{name} terminal flags {flags}"
        assert addr > 0, f"{name} address 0"
        assert data[q] == 0, f"{name} terminal childCount not 0"

    return seen, p <= end


def check_segments(m):
    assert m["segs"][0]["name"] == ("__PAGEZERO" if m["filetype"] == MH_EXECUTE else "__TEXT")
    for s in m["segs"]:
        assert s["vmaddr"] % PAGE == 0, f"{s['name']} vmaddr {s['vmaddr']:#x}"
        assert s["fileoff"] % PAGE == 0, f"{s['name']} fileoff {s['fileoff']:#x}"
        if s["name"] != "__PAGEZERO":
            assert s["vmsize"] % PAGE == 0, f"{s['name']} vmsize {s['vmsize']:#x}"
            assert s["fileoff"] + s["filesize"] <= len(m["data"])


def check_signature(m):
    assert m["sig"], "no LC_CODE_SIGNATURE"
    off, size = m["sig"]
    blob = m["data"][off:off + size]
    magic, total, count = struct.unpack_from(">III", blob, 0)
    assert magic == 0xFADE0CC0
    assert total == size
    assert count >= 1

    idx_off = 12
    cd_off = struct.unpack_from(">I", blob, 12 + 4)[0] if count else 0
    cd = blob[cd_off:]
    cd_magic, cd_len = struct.unpack_from(">II", cd, 0)
    assert cd_magic == 0xFADE0C02

    (magic, sig_len, version, flags, hash_off, ident_off, n_special, n_code,
     code_limit, hash_size, hash_type, _, page_size) = struct.unpack_from(">IIIIIIIIIBBBB", cd, 0)
    assert hash_type == 2 and hash_size == 32 and page_size == 12
    assert flags & 0x2, "not ad-hoc"

    hashes = cd[hash_off:hash_off + n_code * 32]
    assert len(hashes) == n_code * 32
    signed = m["data"][:code_limit]
    assert code_limit == off, (code_limit, off)
    for i in range(n_code):
        chunk = signed[i * 4096:(i + 1) * 4096]
        assert hashes[i * 32:(i + 1) * 32] == hashlib.sha256(chunk).digest(), f"page {i} hash"
    return n_code


def check_exe(m):
    assert m["filetype"] == MH_EXECUTE
    assert m["flags"] & 0x200000, "MH_PIE missing"
    assert m["dylinker"] == "/usr/lib/dyld"
    assert any("libSystem.B.dylib" in d for d in m["load_dylibs"])
    assert any((cmd & ~REQ) == LC_MAIN for cmd, _, _ in m["cmds"])
    assert not m["trie"]
    check_segments(m)
    return check_signature(m)


def check_dylib(m, want):
    assert m["filetype"] == MH_DYLIB
    assert m["trie"], "no LC_DYLD_EXPORTS_TRIE"
    names, ok = check_trie(m["data"], m["trie"][0], m["trie"][1], want)
    assert ok
    for n in want:
        assert n in names, f"{n} missing from export trie ({names})"
    check_segments(m)
    return check_signature(m)


# --------------------------------------------------------------------- main
def build(src, out, kind="auto", extra=()):
    cmd = [sys.executable, AIC, "build", src, "--target", "macho",
           "--arch", "arm64", "-o", out] + list(extra)
    res = subprocess.run(cmd, capture_output=True, text=True)
    if res.returncode != 0 or not os.path.exists(out):
        raise RuntimeError(f"build failed: {src}\n{res.stdout}\n{res.stderr}")
    return res


def main():
    tmp = tempfile.mkdtemp(prefix="aic_macho_")
    fails = 0
    native = sys.platform == "darwin" and platform.machine() == "arm64"

    print(f"host={sys.platform}/{platform.machine()} native_run={native}")

    print("== structural: executable ==")
    for src in EXE_SUITES:
        name = os.path.basename(src).replace(".aic", "")
        out = os.path.join(tmp, name + ".macho")
        try:
            build(os.path.join(REPO, src), out)
            m = parse_macho(out)
            pages = check_exe(m)
            print(f"  [PASS] {name} ({os.path.getsize(out):,} bytes, {pages} signed pages)")
        except Exception as e:
            print(f"  [FAIL] {name}: {e}")
            fails += 1

    print("== structural: dylib ==")
    libsrc = os.path.join(tmp, "algo.aic")
    with open(libsrc, "w") as f:
        f.write(LIB)
    dylib = os.path.join(tmp, "libalgo_macos.dylib")
    try:
        build(libsrc, dylib, extra=["--format", "shared", "--header"])
        m = parse_macho(dylib)
        pages = check_dylib(m, ["_fib", "_add_numbers"])
        print(f"  [PASS] dylib ({os.path.getsize(dylib):,} bytes, {pages} signed pages)")
        hdr = os.path.splitext(dylib)[0] + ".h"
        assert os.path.exists(hdr), "header sidecar missing"
    except Exception as e:
        print(f"  [FAIL] dylib: {e}")
        fails += 1

    if not native:
        print("== native execution: SKIP (not Darwin/arm64) ==")
    else:
        print("== native execution ==")
        import ctypes
        for src in EXE_SUITES:
            name = os.path.basename(src).replace(".aic", "")
            out = os.path.join(tmp, name + ".macho")
            os.chmod(out, 0o755)
            v = subprocess.run(["codesign", "-v", out], capture_output=True, text=True)
            r = subprocess.run([out], capture_output=True, text=True, timeout=60)
            ok = r.returncode == 0 and "[FAIL]" not in r.stdout and v.returncode == 0
            print(f"  [{'PASS' if ok else 'FAIL'}] {name} rc={r.returncode} codesign={v.returncode}")
            if not ok:
                print(r.stdout[:400], r.stderr[:300])
                fails += 1
        try:
            lib = ctypes.CDLL(dylib)
            lib.fib.restype = ctypes.c_long
            lib.fib.argtypes = [ctypes.c_long]
            lib.add_numbers.restype = ctypes.c_long
            lib.add_numbers.argtypes = [ctypes.c_long, ctypes.c_long]
            f, s = lib.fib(10), lib.add_numbers(2, 40)
            ok = f == 55 and s == 42
            print(f"  [{'PASS' if ok else 'FAIL'}] ctypes fib(10)={f} add_numbers(2,40)={s}")
            if not ok:
                fails += 1
        except Exception as e:
            print(f"  [FAIL] ctypes: {e}")
            fails += 1

    print(f"\n{'ALL PASSED' if fails == 0 else f'{fails} FAILED'}")
    return 0 if fails == 0 else 1


if __name__ == "__main__":
    sys.exit(main())
