#!/usr/bin/env python3
"""Tier 5 soundness check (benchmark Part C): run 6 hand-authored malformed
AIC programs directly through the compiler (NO model involved) and record
which typed [ERR ...] fires, whether a different error fires, or whether the
program compiles/runs and silently produces wrong output (the critical case).

Usage:  python3 benchmarks/tier5/run_tier5.py
Output: benchmarks/tier5/tier5_results.json + a human-readable table.
"""
import os, re, json, subprocess, sys

BASE = os.path.dirname(os.path.dirname(os.path.dirname(os.path.abspath(__file__))))
HERE = os.path.dirname(os.path.abspath(__file__))
os.chdir(BASE)
BRIDGE = "tools/aic_linux_bridge.s"

# id -> (file, expected category per the execution-prompt Section 3)
TASKS = {
    31: ("t31_undeclared_var.aic",        "SEMANTIC UNRESOLVED_READ-class (201/202)"),
    32: ("t32_nested_libc_bound_op.aic",  "caught error OR FLAGGED silent wrong output/miscompile"),
    33: ("t33_division_by_zero.aic",      "RUNTIME DIVISION_BY_ZERO (502)"),
    34: ("t34_bad_record_field.aic",      "CODEGEN UNRESOLVED_RECORD_FIELD (403)"),
    35: ("t35_unclosed_bracket.aic",      "PARSE UNCLOSED_BRACKET (102)"),
    36: ("t36_undefined_function_call.aic","UNSUPPORTED_STATEMENT / UNRESOLVED_EXPR_SYMBOL (401/402)"),
}

ERR_RE = re.compile(r"\[ERR\s+:code\s+(\d+)\s+:kind\s+(\w+)\s+:msg\s+(\w+)")

def run_compiler(exe_args, src, asm, extra=None, timeout=60):
    """Run a compiler. Return (rc, combined_output)."""
    r = subprocess.run(exe_args + [src, asm] + (extra or []), capture_output=True, text=True, timeout=timeout)
    return r.returncode, (r.stdout or "") + (r.stderr or "")

def extract_err(out):
    m = ERR_RE.search(out)
    return (int(m.group(1)), m.group(2), m.group(3)) if m else None

def run_and_observe(asm, workdir, timeout=20):
    """gcc-link the produced asm and run it; return (linked, rc, stdout)."""
    elf = asm + ".elf"
    g = subprocess.run(["x86_64-linux-gnu-gcc", "-static", "-O2", asm, "-o", elf],
                       capture_output=True, text=True, timeout=180)
    if g.returncode != 0:
        return False, None, (g.stderr or "")[:200]
    r = subprocess.run([elf], capture_output=True, text=True, timeout=timeout, cwd=workdir)
    return True, r.returncode, r.stdout.strip()

def evaluate_one(tid, fname, expected):
    src = os.path.join(HERE, fname)
    rec = {"task_id": tid, "file": fname, "expect": expected, "verdict": None}
    for label, exe in (("python", ["python3", "aic_codegen.py"]),
                       ("native", ["./aic.elf"])):
        extra = [BRIDGE] if label == "native" else []
        asm = f"/tmp/tier5_{label}_{tid}.s"
        if os.path.exists(asm): os.remove(asm)
        try:
            rc, out = run_compiler(exe, src, asm, extra)
        except subprocess.TimeoutExpired:
            rc, out = -1, "TIMEOUT"
        err = extract_err(out)
        compiled = rc == 0 and err is None and os.path.exists(asm)
        entry = {"rc": rc, "err": err, "compiled": compiled,
                 "output_tail": out.strip()[-200:]}
        if compiled:
            linked, lrc, lout = run_and_observe(asm, HERE)
            entry["ran"] = linked
            entry["run_rc"] = lrc
            entry["run_out"] = lout
            # critical: compiled+linked+ran-to-completion with NO error
            entry["silent_suspect"] = (linked and lrc == 0)
            # a typed error printed by the running program (e.g. div-by-zero
            # handler) is a RUNTIME catch, not a compile catch
            run_err = extract_err(lout) if lout else None
            entry["run_err"] = run_err
        rec[label] = entry
    return rec

def main():
    rows = []
    for tid, (fname, expected) in TASKS.items():
        rec = evaluate_one(tid, fname, expected)
        rows.append(rec)
    json.dump(rows, open(os.path.join(HERE, "tier5_results.json"), "w"), indent=2)

    # table
    print("="*100)
    print("TIER 5 SOUNDNESS (compiler-only, no model)")
    print("="*100)
    for rec in rows:
        n = rec["native"]
        err = n["err"]
        run_err = n.get("run_err")
        if err:
            fired = f"[ERR :code {err[0]} :kind {err[1]} :msg {err[2]}]"
            verdict = "CAUGHT (typed, at compile)"
        elif run_err:
            fired = f"[ERR :code {run_err[0]} :kind {run_err[1]} :msg {run_err[2]}]"
            verdict = "CAUGHT (typed, at runtime)"
        elif n["compiled"]:
            if n.get("silent_suspect"):
                verdict = "NO ERROR AT ALL - ran clean (silent miscompile candidate)"
            else:
                verdict = "compiled, then crash/link failure (untyped)"
            fired = "none"
        else:
            fired = "compile failed (untyped rc=%s)" % n["rc"]
            verdict = "CAUGHT (untyped)"
        print(f"\n#{rec['task_id']} {rec['file']}")
        print(f"   expect : {rec['expect']}")
        print(f"   native : {verdict}")
        print(f"   fired  : {fired}")
        if n.get("run_out"):
            print(f"   out    : {n['run_out']!r}")
    json.dump(rows, open(os.path.join(HERE, "tier5_results.json"), "w"), indent=2)
    print("\n" + "="*100)
    print("saved:", os.path.join(HERE, "tier5_results.json"))

if __name__ == "__main__":
    main()
