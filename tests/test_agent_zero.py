#!/usr/bin/env python3
"""
test_agent_zero.py - AIC Milestone 3 (Agent Zero) end-to-end validation.

Default run is deterministic and needs no LLM: a scripted responder returns a
broken AIC solution on attempt 1 and a valid one on attempt 2, proving the
self-correction loop consumes real compiler feedback. Then the exported shared
library is loaded and its functions are called.

The library-verification path reuses the exact pattern from
tests/test_c_interop.py: native ctypes on x86-64 hosts, and a one-call-per-
process cross dynamic loader harness on non-x86 hosts (aarch64), because
ctypes cannot load a foreign-arch .so in-process and qemu-user trips a
double-call glibc canary artifact.

Usage:
    python3 tests/test_agent_zero.py            # deterministic (default)
    python3 tests/test_agent_zero.py --live     # hit the local model endpoint
    python3 tests/test_agent_zero.py --keep     # keep the build directory
"""

import os
import platform
import shutil
import subprocess
import sys
import tempfile

REPO = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))
sys.path.insert(0, REPO)

from agent.loop import run_agent_loop  # noqa: E402

TASK = "Write an integer square root function 'isqrt' using Newton's method"

# Attempt 1: real compile error (unclosed [+ ...]) — a genuine AIC PARSE
# failure, not a formatting one — so the feedback the agent sees is the
# compiler's typed error.
BROKEN = '''```aic_solution
[: isqrt [n] [D
  [! x n]
  [! y [/ [+ x 1] 2]
  [^ x]
]]
```

```aic_test
[import "lib/test.aic"]
[! runner [test_runner_init]]
[! r1 [test_assert_eq runner [isqrt 144] 12 "isqrt(144)==12"]]
[test_summary runner]
```'''

# Attempt 2: valid Newton's-method integer square root + passing tests.
GOOD = '''```aic_solution
[: isqrt [n] [D
  [! x n]
  [! y [/ [+ x 1] 2]]
  [W [< y x] [D
    [! x y]
    [! y [/ [+ x [/ n x]] 2]]
  ]]
  [^ x]
]]
```

```aic_test
[import "lib/test.aic"]
[! runner [test_runner_init]]
[! r1 [test_assert_eq runner [isqrt 144] 12 "isqrt(144)==12"]]
[! r2 [test_assert_eq runner [isqrt 50] 7 "isqrt(50)==7"]]
[! r3 [test_assert_eq runner [isqrt 0] 0 "isqrt(0)==0"]]
[test_summary runner]
```'''


def mock_responder():
    """Scripted llm_fn: broken on attempt 1, valid on attempt 2."""
    state = {"n": 0, "saw_feedback": False}

    def respond(messages):
        state["n"] += 1
        if state["n"] > 1:
            user = messages[-1]["content"] if messages[-1]["role"] == "user" else ""
            state["saw_feedback"] = "FAILURE" in user or "COMPILE FAIL" in user
        return BROKEN if state["n"] == 1 else GOOD

    return respond, state


def verify_native(lib_path):
    import ctypes
    lib = ctypes.CDLL(lib_path)
    lib.isqrt.argtypes = [ctypes.c_int64]
    lib.isqrt.restype = ctypes.c_int64
    assert lib.isqrt(144) == 12, f"isqrt(144) = {lib.isqrt(144)}, expected 12"
    assert lib.isqrt(50) == 7, f"isqrt(50) = {lib.isqrt(50)}, expected 7"
    assert lib.isqrt(0) == 0, f"isqrt(0) = {lib.isqrt(0)}, expected 0"
    # Windows keeps the DLL file-locked until the module is freed; release it
    # with the c_void_p handle so the caller's temp dir can be cleaned up.
    if sys.platform == "win32":
        ctypes.windll.kernel32.FreeLibrary.argtypes = [ctypes.c_void_p]
        ctypes.windll.kernel32.FreeLibrary(lib._handle)


def verify_cross(lib_path, workdir):
    """One dlopen + one call per process, via the cross x86-64 dynamic loader."""
    import glob
    gcc = "x86_64-linux-gnu-gcc"
    if not shutil.which(gcc):
        raise SystemExit("[SKIP] no x86_64 cross compiler available")

    loaders = (glob.glob("/usr/x86_64-linux-gnu/lib/ld-linux-x86-64.so.2")
               + glob.glob("/usr/lib/x86_64-linux-gnu/ld-linux-x86-64.so.2"))
    if not loaders:
        raise SystemExit("[SKIP] no cross x86-64 dynamic loader found")
    loader = loaders[0]
    env = dict(os.environ, LD_LIBRARY_PATH=os.path.dirname(loader))

    c_src = r"""
#include <dlfcn.h>
#include <stdio.h>
#include <stdlib.h>
int main(int argc, char **argv) {
  void *h = dlopen("AIC_SO", RTLD_NOW);
  if (!h) { fputs("FAIL dlopen: ", stderr); fputs(dlerror(), stderr); return 0; }
  typedef long long (*ll)(long long);
  ll f = (ll)dlsym(h, "isqrt");
  if (!f) { fputs("FAIL dlsym\n", stderr); return 0; }
  long long n = atoll(argv[1]), exp = atoll(argv[2]), v = f(n);
  printf("isqrt(%lld)=%lld (expected %lld)\n", n, v, exp);
  return v == exp ? 1 : 0;
}
"""

    for n, expected in ((144, 12), (50, 7), (0, 0)):
        csrc = os.path.join(workdir, f"h_{n}.c")
        with open(csrc, "w") as f:
            f.write(c_src.replace("AIC_SO", lib_path))
        harness = os.path.join(workdir, f"h_{n}")
        cc = subprocess.run([gcc, "-O2", csrc, "-o", harness, "-ldl"],
                            capture_output=True, text=True)
        if cc.returncode != 0:
            raise SystemExit(f"[FAIL] harness build failed:\n{cc.stderr}")
        run = subprocess.run([loader, harness, str(n), str(expected)],
                             capture_output=True, text=True, env=env)
        ok = run.returncode == 1
        print(f"[isqrt({n})] rc={run.returncode} out={(run.stdout or '').strip()!r}")
        if not ok:
            raise SystemExit(f"[FAIL] isqrt({n}) via cross loader:\n{run.stdout}\n{run.stderr}")


def main(live=False, keep=False):
    workdir = tempfile.mkdtemp(prefix="agent_zero_") if keep else tempfile.mkdtemp(prefix="agent_zero_")
    out_prefix = os.path.join(workdir, "libisqrt")

    if live:
        from agent.client import make_llm
        llm_fn, state = make_llm(), {}
        expected_iters = None
    else:
        llm_fn, state = mock_responder()
        expected_iters = 2

    print("=" * 62)
    print(f"Agent Zero integration test ({'LIVE LLM' if live else 'deterministic mock'})")
    print("=" * 62)

    artifact = run_agent_loop(TASK, out_prefix, max_iterations=5, llm_fn=llm_fn)
    print(artifact)

    assert artifact.status == "SUCCESS", f"agent did not succeed: {artifact.last_feedback}"
    assert artifact.lib_path and os.path.exists(artifact.lib_path), "missing shared library"
    assert artifact.header_path and os.path.exists(artifact.header_path), "missing header"
    assert artifact.example_path and os.path.exists(artifact.example_path), "missing example"

    hdr = open(artifact.header_path, encoding="utf-8").read()
    assert "int64_t isqrt(int64_t n);" in hdr, "isqrt prototype missing from header"
    print("[OK] header prototype correct")

    if expected_iters is not None:
        assert artifact.iterations == 2, f"expected 2 iterations, got {artifact.iterations}"
        assert state["saw_feedback"], "attempt 2 was not given the compile-failure feedback"
        print("[OK] self-correction: 2 iterations, feedback reached attempt 2")

    if platform.machine() in ("x86_64", "AMD64"):
        verify_native(artifact.lib_path)
    else:
        verify_cross(artifact.lib_path, workdir)
    print("[PASS] Agent Zero produced a verified drop-in shared library")

    if keep:
        print(f"[keep] artifacts in {workdir}")
    else:
        shutil.rmtree(workdir, ignore_errors=True)


if __name__ == "__main__":
    main(live="--live" in sys.argv, keep="--keep" in sys.argv)
