#!/usr/bin/env python3
"""
benchmarks/speed/run_speed_benchmarks.py - Speed & Performance Benchmark Suite

Compares Native AIC against C (GCC -O2), Node.js (V8 JIT), and Python 3.11
across CPU-intensive algorithms, memory throughput, and recursion.
"""

import sys
import os
import time
import subprocess
import shutil

BASE_DIR = os.path.dirname(os.path.dirname(os.path.dirname(os.path.abspath(__file__))))
if BASE_DIR not in sys.path:
    sys.path.insert(0, BASE_DIR)
SPEED_DIR = os.path.join(BASE_DIR, "benchmarks", "speed")
HOST_IS_X86 = os.uname().machine in ("x86_64", "amd64") if hasattr(os, "uname") else os.environ.get("PROCESSOR_ARCHITECTURE") == "AMD64"

BENCHMARKS = [
    {
        "name": "Recursive Fibonacci (fib 38)",
        "description": "Pure recursive function call overhead and stack frame allocation (63M calls)",
        "aic_src": """
[: fib [n] [D
  [? [<= n 1]
    [^ n]
    [^ [+ [fib [- n 1]] [fib [- n 2]]]]]
]]

[! n 38]
[! res [fib n]]
[. "Fib(" n ") = " res "\\n"]
""",
        "c_src": """
#include <stdio.h>
#include <stdint.h>

int64_t fib(int64_t n) {
    if (n <= 1) return n;
    return fib(n - 1) + fib(n - 2);
}

int main() {
    int64_t n = 38;
    int64_t res = fib(n);
    printf("Fib(%lld) = %lld\\n", n, res);
    return 0;
}
""",
        "js_src": """
function fib(n) {
    if (n <= 1) return n;
    return fib(n - 1) + fib(n - 2);
}
const n = 38;
const res = fib(n);
console.log(`Fib(${n}) = ${res}`);
""",
        "py_src": """
def fib(n):
    if n <= 1:
        return n
    return fib(n - 1) + fib(n - 2)

n = 38
res = fib(n)
print(f"Fib({n}) = {res}")
"""
    },
    {
        "name": "Collatz Conjecture Steps (500k iterations)",
        "description": "Integer arithmetic, tight while-loops, branch prediction, and bitwise logic",
        "aic_src": """
[: collatz_len [n] [D
  [! steps 0]
  [! x n]
  [W [> x 1] [D
    [? [== [& x 1] 0]
      [! x [/ x 2]]
      [! x [+ [* 3 x] 1]]]
    [! steps [+ steps 1]]
  ]]
  [^ steps]
]]

[! total_steps 0]
[@> 1 500001 [i] [D
  [! total_steps [+ total_steps [collatz_len i]]]
]]
[. "Collatz total: " total_steps "\\n"]
""",
        "c_src": """
#include <stdio.h>
#include <stdint.h>

int64_t collatz_len(int64_t n) {
    int64_t steps = 0;
    int64_t x = n;
    while (x > 1) {
        if ((x & 1) == 0) x /= 2;
        else x = 3 * x + 1;
        steps++;
    }
    return steps;
}

int main() {
    int64_t total_steps = 0;
    for (int64_t i = 1; i <= 500000; i++) {
        total_steps += collatz_len(i);
    }
    printf("Collatz total: %lld\\n", total_steps);
    return 0;
}
""",
        "js_src": """
function collatz_len(n) {
    let steps = 0;
    let x = n;
    while (x > 1) {
        if ((x & 1) === 0) x = Math.floor(x / 2);
        else x = 3 * x + 1;
        steps++;
    }
    return steps;
}

let total_steps = 0;
for (let i = 1; i <= 500000; i++) {
    total_steps += collatz_len(i);
}
console.log(`Collatz total: ${total_steps}`);
""",
        "py_src": """
def collatz_len(n):
    steps = 0
    x = n
    while x > 1:
        if (x & 1) == 0:
            x //= 2
        else:
            x = 3 * x + 1
        steps += 1
    return steps

total_steps = 0
for i in range(1, 500001):
    total_steps += collatz_len(i)
print(f"Collatz total: {total_steps}")
"""
    },
    {
        "name": "Sieve of Eratosthenes (10,000,000 limit)",
        "description": "Byte-level heap memory throughput (@ and @!), array stride access, and cache locality",
        "aic_src": """
[! limit 10000000]
[! sieve [H limit]]
[! prime_count 0]
[@> 2 limit [i] [D
  [? [== [@ sieve i] 0] [D
    [! prime_count [+ prime_count 1]]
    [! mult [* i 2]]
    [W [< mult limit] [D
      [@! sieve mult 1]
      [! mult [+ mult i]]
    ]]
  ] [D]]
]]
[. "Primes up to " limit ": " prime_count "\\n"]
""",
        "c_src": """
#include <stdio.h>
#include <stdlib.h>
#include <stdint.h>

int main() {
    int64_t limit = 10000000;
    char *sieve = (char*)calloc(limit + 1, 1);
    int64_t prime_count = 0;
    for (int64_t i = 2; i < limit; i++) {
        if (sieve[i] == 0) {
            prime_count++;
            for (int64_t mult = i * 2; mult < limit; mult += i) {
                sieve[mult] = 1;
            }
        }
    }
    printf("Primes up to %lld: %lld\\n", limit, prime_count);
    free(sieve);
    return 0;
}
""",
        "js_src": """
const limit = 10000000;
const sieve = new Uint8Array(limit);
let prime_count = 0;
for (let i = 2; i < limit; i++) {
    if (sieve[i] === 0) {
        prime_count++;
        for (let mult = i * 2; mult < limit; mult += i) {
            sieve[mult] = 1;
        }
    }
}
console.log(`Primes up to ${limit}: ${prime_count}`);
""",
        "py_src": """
limit = 10000000
sieve = bytearray(limit)
prime_count = 0
for i in range(2, limit):
    if sieve[i] == 0:
        prime_count += 1
        for mult in range(i * 2, limit, i):
            sieve[mult] = 1
print(f"Primes up to {limit}: {prime_count}")
"""
    },
    {
        "name": "Bubble Sort (5,000 words)",
        "description": "64-bit word quadword memory loads/stores (@@ and @@!), tight nested loops (25M iterations)",
        "aic_src": """
[! n 5000]
[! arr [H [* n 8]]]
[! seed 12345]
[@> n [i] [D
  [! seed [% [+ [* seed 1103515245] 12345] 2147483648]]
  [@@! arr i seed]
]]

[@> n [i] [D
  [! limit [- [- n i] 1]]
  [@> limit [j] [D
    [! a [@@ arr j]]
    [! b [@@ arr [+ j 1]]]
    [? [> a b] [D
      [@@! arr j b]
      [@@! arr [+ j 1] a]
    ] [D]]
  ]]
]]

[. "Sorted 5000 items: first=" [@@ arr 0] " last=" [@@ arr [- n 1]] "\\n"]
""",
        "c_src": """
#include <stdio.h>
#include <stdlib.h>
#include <stdint.h>

int main() {
    int64_t n = 5000;
    int64_t *arr = (int64_t*)malloc(n * sizeof(int64_t));
    int64_t seed = 12345;
    for (int64_t i = 0; i < n; i++) {
        seed = (seed * 1103515245 + 12345) % 2147483648LL;
        arr[i] = seed;
    }
    for (int64_t i = 0; i < n; i++) {
        int64_t limit = n - i - 1;
        for (int64_t j = 0; j < limit; j++) {
            if (arr[j] > arr[j + 1]) {
                int64_t tmp = arr[j];
                arr[j] = arr[j + 1];
                arr[j + 1] = tmp;
            }
        }
    }
    printf("Sorted 5000 items: first=%lld last=%lld\\n", arr[0], arr[n - 1]);
    free(arr);
    return 0;
}
""",
        "js_src": """
const n = 5000;
const arr = new BigInt64Array(n);
let seed = 12345n;
for (let i = 0; i < n; i++) {
    seed = (seed * 1103515245n + 12345n) % 2147483648n;
    arr[i] = seed;
}
for (let i = 0; i < n; i++) {
    const limit = n - i - 1;
    for (let j = 0; j < limit; j++) {
        if (arr[j] > arr[j + 1]) {
            const tmp = arr[j];
            arr[j] = arr[j + 1];
            arr[j + 1] = tmp;
        }
    }
}
console.log(`Sorted 5000 items: first=${arr[0]} last=${arr[n - 1]}`);
""",
        "py_src": """
n = 5000
arr = [0] * n
seed = 12345
for i in range(n):
    seed = (seed * 1103515245 + 12345) % 2147483648
    arr[i] = seed

for i in range(n):
    limit = n - i - 1
    for j in range(limit):
        if arr[j] > arr[j + 1]:
            arr[j], arr[j + 1] = arr[j + 1], arr[j]

print(f"Sorted 5000 items: first={arr[0]} last={arr[n - 1]}")
"""
    }
]

def measure_execution(cmd, runs=3):
    times = []
    output = ""
    for _ in range(runs):
        start = time.perf_counter()
        res = subprocess.run(cmd, capture_output=True, text=True, cwd=BASE_DIR)
        elapsed = time.perf_counter() - start
        if res.returncode != 0:
            raise RuntimeError(f"Command {' '.join(cmd)} failed:\n{res.stderr or res.stdout}")
        times.append(elapsed)
        output = res.stdout.strip()
    return min(times), output

def main():
    os.makedirs(SPEED_DIR, exist_ok=True)

    print("=" * 80)
    print("AIC Native Performance Benchmark Suite")
    print("Comparing: AIC (Native) vs C (GCC -O2) vs Node.js (V8 JIT) vs Python 3.11")
    print("=" * 80)

    has_gcc = shutil.which("gcc") is not None
    has_node = shutil.which("node") is not None
    has_python = True

    results = []

    for b in BENCHMARKS:
        b_name = b["name"]
        print(f"\n[+] Running Benchmark: {b_name}")
        print(f"    {b['description']}")

        # 1. Setup files
        aic_file = os.path.join(SPEED_DIR, "bench.aic")
        c_file = os.path.join(SPEED_DIR, "bench.c")
        js_file = os.path.join(SPEED_DIR, "bench.js")
        py_file = os.path.join(SPEED_DIR, "bench.py")

        with open(aic_file, "w", encoding="utf-8") as f: f.write(b["aic_src"])
        with open(c_file, "w", encoding="utf-8") as f: f.write(b["c_src"])
        with open(js_file, "w", encoding="utf-8") as f: f.write(b["js_src"])
        with open(py_file, "w", encoding="utf-8") as f: f.write(b["py_src"])

        row = {"name": b_name}

        # ponytail: build both optimization levels through aic.py (the single
        # source of truth for codegen + linking) so the -O1 flag actually reaches
        # the code generator; the old path hard-coded aic.exe + the PE emitter.
        def build_aic(out_path, opt):
            cmd = [sys.executable, os.path.join(BASE_DIR, "aic.py"), "build", aic_file, "-o", out_path]
            if opt:
                cmd.append("-O1")
            r = subprocess.run(cmd, capture_output=True, text=True, cwd=BASE_DIR)
            return r.returncode == 0 and os.path.exists(out_path)

        def run_exe(path):
            if HOST_IS_X86:
                return measure_execution([path])
            return measure_execution(["qemu-x86_64-static", path])

        # C is built for x86-64 as well so it crosses the same emulator, otherwise
        # the comparison measures native-vs-emulated, not the code generators.
        cc = "gcc" if HOST_IS_X86 else "x86_64-linux-gnu-gcc"
        c_exe = os.path.join(SPEED_DIR, "bench_c.exe")
        c_comp = subprocess.run([cc, "-O2", "-static", c_file, "-o", c_exe],
                                capture_output=True, text=True)
        has_cc = c_comp.returncode == 0

        aic_o0 = os.path.join(SPEED_DIR, "bench_aic_O0.elf")
        aic_o1 = os.path.join(SPEED_DIR, "bench_aic_O1.elf")
        ok0 = build_aic(aic_o0, False)
        ok1 = build_aic(aic_o1, True)

        if ok0:
            t0, out0 = run_exe(aic_o0)
            row["AIC -O0"] = t0
            print(f"    [*] AIC -O0        : {t0:.4f}s  ->  {out0[:80]}")
        if ok1:
            t1, out1 = run_exe(aic_o1)
            row["AIC -O1"] = t1
            print(f"    [*] AIC -O1        : {t1:.4f}s  ->  {out1[:80]}")
        if ok0 and ok1 and row.get("AIC -O1", 0) > 0:
            print(f"    [*] -O1 speedup    : {row['AIC -O0'] / row['AIC -O1']:.2f}x")
        t_aic = row.get("AIC -O1") or row.get("AIC -O0") or 0.0

        # Build & Run C (GCC -O2)
        if has_cc:
            t_c, out_c = run_exe(c_exe)
            row["C (GCC -O2)"] = t_c
            speedup_aic_vs_c = t_aic / t_c if isinstance(t_aic, float) and t_c > 0 else 1.0
            print(f"    [*] C (GCC -O2)    : {t_c:.4f}s  ->  {out_c[:80]}  (AIC is {speedup_aic_vs_c:.2f}x of C)")

        # Run Node.js
        if has_node:
            t_js, out_js = measure_execution(["node", js_file])
            row["Node.js (V8)"] = t_js
            speedup_js_vs_aic = t_js / t_aic if isinstance(t_aic, float) and t_aic > 0 else 1.0
            print(f"    [*] Node.js (V8)   : {t_js:.4f}s  ->  {out_js[:80]}  (AIC is {speedup_js_vs_aic:.2f}x faster)")

        # Run Python 3.11
        if has_python:
            t_py, out_py = measure_execution([sys.executable, py_file])
            row["Python 3.11"] = t_py
            speedup_py_vs_aic = t_py / t_aic if isinstance(t_aic, float) and t_aic > 0 else 1.0
            print(f"    [*] Python 3.11    : {t_py:.4f}s  ->  {out_py[:80]}  (AIC is {speedup_py_vs_aic:.2f}x faster)")

        results.append(row)

    # Clean up binaries
    for fn in os.listdir(SPEED_DIR):
        if fn.endswith((".exe", ".s", ".c", ".js", ".py", ".aic")):
            if fn != "run_speed_benchmarks.py":
                try: os.remove(os.path.join(SPEED_DIR, fn))
                except: pass

    # Summary Table
    print("\n" + "=" * 80)
    print("PERFORMANCE BENCHMARK SUMMARY (Execution Time in Seconds, Lower is Faster)")
    print("=" * 80)
    header = (f"{'Benchmark Task':<34} | {'AIC -O0':<10} | {'AIC -O1':<10} | {'-O1 gain':<9} "
              f"| {'C -O2':<10} | {'O1 / C':<8} | {'Node':<10} | {'Python':<10}")
    print(header)
    print("-" * len(header))
    for r in results:
        o0, o1, c = r.get("AIC -O0"), r.get("AIC -O1"), r.get("C (GCC -O2)")
        gain = f"{o0 / o1:.2f}x" if o0 and o1 else "N/A"
        vs_c = f"{o1 / c:.2f}x" if o1 and c else "N/A"
        def fmt(v):
            return f"{v:.4f}s" if v else "N/A"
        js = r.get("Node.js (V8)")
        py = r.get("Python 3.11")
        print(f"{r['name'][:34]:<34} | {fmt(o0):<10} | {fmt(o1):<10} | {gain:<9} | "
              f"{fmt(c):<10} | {vs_c:<8} | {fmt(js):<10} | {fmt(py):<10}")

    print("=" * 80)

if __name__ == "__main__":
    main()
