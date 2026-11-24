"""Fast compile+run verifier used as the agent's scratchpad.

`execute_sandbox(solution, test, opt=False)` returns a SandboxResult with
stage-accurate feedback and millisecond telemetry, so the loop can reflect on
the exact compiler/runtime error instead of guessing.

ponytail: a fresh tempdir per call, no persistent sandbox daemon, no network
isolation beyond "it's a local process with a 2s timeout" — the inputs here are
our own LLM output, not untrusted third-party code. Add real sandboxing only if
the agent ever compiles code from an untrusted source.
"""

import os
import platform
import re
import subprocess
import sys
import tempfile
import time
from dataclasses import dataclass, field

REPO = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))
AIC = os.path.join(REPO, "aic.py")
RUN_TIMEOUT = 2.0
COMPILE_TIMEOUT = 60.0
HOST_IS_X86 = platform.machine() in ("x86_64", "AMD64")

_FENCE = re.compile(r"```(?:aic_solution|aic_test|aic)?\s*\n(.*?)```", re.S)
_IMPORT = re.compile(r'\[\s*(?:import|load)\s+"([^"]+)"\s*\]')


@dataclass
class SandboxResult:
    success: bool
    stage: str            # "COMPILE" | "RUNTIME" | "TIMEOUT" | "OK"
    compile_ms: float
    run_ms: float = 0.0
    feedback: str = ""
    stdout: str = ""
    solution: str = ""
    test: str = ""
    imports: list = field(default_factory=list)

    def summary(self):
        if self.success:
            return f"TEST PASS (compile: {self.compile_ms:.0f}ms, run: {self.run_ms:.0f}ms)"
        return f"{self.stage} FAIL ({self.compile_ms:.0f}ms) -> {self.feedback[:300]}"


def extract_blocks(text):
    """Pull the aic_solution / aic_test fenced blocks out of a model reply.

    Returns (solution, test). Falls back to the first block as the solution when
    only one block is present, so a slightly-off model reply still gets tested
    rather than being rejected outright.
    """
    blocks = _FENCE.findall(text or "")
    sol = test = ""
    for m in _FENCE.finditer(text or ""):
        tag = m.group(0).split("\n", 1)[0].strip("` ").strip()
        body = m.group(1).strip()
        if tag == "aic_solution":
            sol = body
        elif tag == "aic_test":
            test = body
    if not sol and blocks:
        sol = blocks[0].strip()
    if not test and len(blocks) > 1:
        test = blocks[1].strip()
    return sol, test


def dedupe_imports(*chunks):
    """Order-preserving dedupe of [import "..."] directives.

    compiler.aic's expand_source does literal textual splicing; two imports of
    the same file would splice the definitions twice and trip a duplicate-
    definition error. Hoisting one copy of each to the top avoids that.
    """
    seen, ordered = set(), []
    for chunk in chunks:
        for m in _IMPORT.finditer(chunk or ""):
            path = m.group(1)
            if path not in seen:
                seen.add(path)
                ordered.append(path)
    return ordered


def strip_imports(text):
    return _IMPORT.sub("", text or "").strip()


def _run_argv(path):
    return [path] if HOST_IS_X86 else ["qemu-x86_64-static", path]


def execute_sandbox(solution_code, test_code, opt=False):
    solution_code = (solution_code or "").strip()
    test_code = (test_code or "").strip()
    if not solution_code:
        return SandboxResult(False, "COMPILE", 0.0, feedback="no aic_solution block in the reply")
    if not test_code:
        return SandboxResult(False, "COMPILE", 0.0, feedback="no aic_test block in the reply")

    imports = dedupe_imports(solution_code, test_code)
    combined = (
        "\n".join(f'[import "{p}"]' for p in imports) + "\n"
        + strip_imports(solution_code) + "\n"
        + strip_imports(test_code) + "\n"
    )

    with tempfile.TemporaryDirectory(prefix="aic_agent_") as work:
        src = os.path.join(work, "candidate.aic")
        exe = os.path.join(work, "candidate.exe" if sys.platform == "win32" else "candidate.elf")
        with open(src, "w", encoding="utf-8", newline="\n") as f:
            f.write(combined)

        cmd = [sys.executable, AIC, "build", src, "-o", exe]
        if opt:
            cmd.append("-O1")
        t0 = time.perf_counter()
        try:
            cp = subprocess.run(cmd, capture_output=True, text=True,
                                cwd=REPO, timeout=COMPILE_TIMEOUT)
        except subprocess.TimeoutExpired:
            return SandboxResult(False, "TIMEOUT", (time.perf_counter() - t0) * 1000,
                                 feedback="compiler timed out", solution=solution_code,
                                 test=test_code, imports=imports)
        compile_ms = (time.perf_counter() - t0) * 1000

        blob = (cp.stdout or "") + (cp.stderr or "")
        if cp.returncode != 0 or not os.path.exists(exe):
            msg = blob.strip() or "compiler produced no binary"
            return SandboxResult(False, "COMPILE", compile_ms, feedback=msg,
                                 solution=solution_code, test=test_code, imports=imports)

        t1 = time.perf_counter()
        try:
            rp = subprocess.run(_run_argv(exe), capture_output=True, text=True,
                                cwd=work, timeout=RUN_TIMEOUT)
        except subprocess.TimeoutExpired:
            return SandboxResult(False, "TIMEOUT", compile_ms,
                                 run_ms=(time.perf_counter() - t1) * 1000,
                                 feedback=f"program exceeded {RUN_TIMEOUT}s",
                                 solution=solution_code, test=test_code, imports=imports)
        run_ms = (time.perf_counter() - t1) * 1000
        out = (rp.stdout or "").replace("\r\n", "\n")

        if rp.returncode != 0 or "(ALL PASSED)" not in out:
            detail = out.strip() or (rp.stderr or "").strip() or f"exit code {rp.returncode}"
            return SandboxResult(False, "RUNTIME", compile_ms, run_ms,
                                 feedback=detail[:800], stdout=out,
                                 solution=solution_code, test=test_code, imports=imports)

        return SandboxResult(True, "OK", compile_ms, run_ms, stdout=out,
                             solution=solution_code, test=test_code, imports=imports)


_TEST_FRAMEWORK = "lib/test.aic"


def build_shared_library(solution_code, out_path, imports=None, opt=False):
    """Emit <prefix>.so/.dll + matching .h from the clean solution block.

    `imports` is the deduped import list from the whole reply (solution + test).
    Stdlib imports are hoisted so library code may call lib/*.aic functions
    without its own [import] line; lib/test.aic is excluded because the test
    framework must not be exported as part of a drop-in library.
    """
    parent = os.path.dirname(os.path.abspath(out_path))
    os.makedirs(parent, exist_ok=True)

    # The CLI writes exactly the -o path it is given, so supply the extension.
    ext = ".dll" if os.name == "nt" else ".so"
    if not os.path.splitext(out_path)[1]:
        out_path = out_path + ext

    paths = [p for p in (imports if imports is not None else dedupe_imports(solution_code))
             if p != _TEST_FRAMEWORK]
    body = "\n".join(f'[import "{p}"]' for p in paths) + "\n" + strip_imports(solution_code) + "\n"
    with tempfile.TemporaryDirectory(prefix="aic_lib_") as work:
        src = os.path.join(work, "lib.aic")
        with open(src, "w", encoding="utf-8", newline="\n") as f:
            f.write(body)
        cmd = [sys.executable, AIC, "build", src, "--format", "shared",
               "--header", "-o", out_path, "--force-python"]
        if opt:
            cmd.append("-O1")
        cp = subprocess.run(cmd, capture_output=True, text=True, cwd=REPO)
        if cp.returncode != 0 or not os.path.exists(out_path):
            raise RuntimeError(((cp.stdout or "") + (cp.stderr or "")).strip() or
                               f"failed to build {out_path}")
        header = os.path.splitext(out_path)[0] + ".h"
        if not os.path.exists(header):
            raise RuntimeError(f"header sidecar missing: {header}")
        return out_path, header
