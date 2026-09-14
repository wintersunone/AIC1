#!/usr/bin/env python3
"""
benchmarks/eval_harness.py - AIC-Bench Evaluation Harness for AI Models

Evaluates LLM generations on canonical AIC programming tasks, computing
pass@1 accuracy against native test suites.
"""

import sys
import os
import json
import argparse
import subprocess
import re

BASE_DIR = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))
if BASE_DIR not in sys.path:
    sys.path.insert(0, BASE_DIR)

BENCHMARK_PATH = os.path.join(BASE_DIR, "benchmarks", "aic_bench.jsonl")

def extract_aic_code(text):
    """Extracts AIC code block from model response if wrapped in markdown."""
    m = re.search(r'```(?:aic)?\s*([\s\S]*?)\s*```', text)
    if m:
        return m.group(1).strip()
    return text.strip()

def evaluate_task(task_id, solution_code, test_code):
    """Compiles and executes a single task natively with test assertions."""
    tmp_src = os.path.join(BASE_DIR, "benchmarks", f"tmp_{task_id.replace('/', '_')}.aic")
    tmp_asm = os.path.join(BASE_DIR, "benchmarks", f"tmp_{task_id.replace('/', '_')}.s")
    tmp_exe = os.path.join(BASE_DIR, "benchmarks", f"tmp_{task_id.replace('/', '_')}.exe")

    full_src = f"""// Auto-generated evaluation for {task_id}
[import "lib/test.aic"]

{solution_code}

{test_code}
"""
    with open(tmp_src, "w", encoding="utf-8") as f:
        f.write(full_src)

    aic_exe = os.path.join(BASE_DIR, "aic.exe")
    passed = False
    error_msg = ""

    try:
        # 1. Compile to ASM
        c_res = subprocess.run([aic_exe, tmp_src, tmp_asm], capture_output=True, text=True, cwd=BASE_DIR)
        if c_res.returncode != 0:
            error_msg = f"Compilation Error: {c_res.stderr or c_res.stdout}"
            return False, error_msg

        # 2. Package to PE
        import tools.aic_pe_emitter as pe_emitter
        with open(tmp_asm, "r", encoding="utf-8") as f:
            asm_code = f.read()
        pe_emitter.build_standalone_pe(asm_code, tmp_exe)

        # 3. Execute native binary
        r_res = subprocess.run([tmp_exe], capture_output=True, text=True, cwd=BASE_DIR, timeout=5)
        out = r_res.stdout.replace("\r\n", "\n")

        if "(ALL PASSED)" in out and r_res.returncode == 0:
            passed = True
        else:
            error_msg = f"Runtime Failure:\n{out}"
    except Exception as e:
        error_msg = str(e)
    finally:
        for f_del in [tmp_src, tmp_asm, tmp_exe]:
            if os.path.exists(f_del):
                try: os.remove(f_del)
                except: pass

    return passed, error_msg

def main():
    parser = argparse.ArgumentParser(description="AIC-Bench: Automated LLM Benchmark Evaluator")
    parser.add_argument("--predictions", help="Path to model predictions JSONL file")
    parser.add_argument("--canonical", action="store_true", help="Evaluate canonical ground-truth solutions (sanity test)")
    args = parser.parse_args()

    if not os.path.exists(BENCHMARK_PATH):
        print(f"[ERR] Benchmark dataset '{BENCHMARK_PATH}' not found.")
        sys.exit(1)

    tasks = []
    with open(BENCHMARK_PATH, "r", encoding="utf-8") as f:
        for line in f:
            line = line.strip()
            if line:
                tasks.append(json.loads(line))

    predictions = {}
    if args.predictions:
        with open(args.predictions, "r", encoding="utf-8") as f:
            for line in f:
                line = line.strip()
                if line:
                    rec = json.loads(line)
                    predictions[rec["task_id"]] = rec.get("completion", "")
    elif not args.canonical:
        print("[INFO] No --predictions provided; defaulting to --canonical ground-truth evaluation.")
        args.canonical = True

    print("=" * 65)
    print(f"AIC-Bench: Evaluating {len(tasks)} Tasks (Target: {'Canonical Ground-Truth' if args.canonical else args.predictions})")
    print("=" * 65)

    passed_count = 0
    total = len(tasks)

    for t in tasks:
        t_id = t["task_id"]
        if args.canonical:
            code = t["canonical_solution"]
        else:
            if t_id not in predictions:
                print(f"[-] {t_id:10s} : SKIPPED (no prediction)")
                continue
            code = extract_aic_code(predictions[t_id])

        ok, err = evaluate_task(t_id, code, t["test"])
        if ok:
            print(f"[+] {t_id:10s} : PASS")
            passed_count += 1
        else:
            print(f"[x] {t_id:10s} : FAIL ({err[:60]}...)")

    score = (passed_count / total) * 100.0 if total > 0 else 0.0
    print("\n" + "=" * 65)
    print(f"AIC-Bench Score: {passed_count}/{total} Passed ({score:.1f}% pass@1)")
    print("=" * 65)

    if args.canonical and passed_count != total:
        sys.exit(1)

if __name__ == "__main__":
    main()
