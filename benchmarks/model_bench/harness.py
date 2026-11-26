#!/usr/bin/env python3
"""Part B model-querying + scoring harness.

Cells: 30 tasks x 3 languages (aic/c/python) x 2 conditions (zero_shot /
spec_in_context) x k=5 samples = 900 generations (1 model).

Each generated candidate:
  1. code extracted with ONE documented rule (first fenced code block)
  2. compiled/run in a fresh sandbox (AIC: aic.py build + run; C: gcc;
     Python: python3) with the task's fixed file/stdin inputs, 5s run timeout
  3. scored byte-exact against expected output
  4. recorded as a JSON line with the Section-5 fields.

silent_wrong_output is the soundness-critical field: ran to completion with
no error of any kind, but output != expected.

Model endpoint: SGLang /v1/chat/completions (OpenAI-compatible), reachable at
AIC_BENCH_BASE (default http://100.124.137.82:8888). enable_thinking off,
temperature 0.7 (fixed across all cells per the protocol).
"""
import os, sys, json, time, re, subprocess, tempfile, urllib.request, urllib.error, threading

HERE = os.path.dirname(os.path.abspath(__file__))
BASE = os.path.dirname(os.path.dirname(HERE))          # AIC project root
sys.path.insert(0, HERE)
from tasks import TASKS, AIC_SYSTEM, AIC_SPEC_CONTEXT, FIXED_FILE, FIXED_FILE_CONTENT, FIXED_STDIN

MODEL = os.environ.get("AIC_BENCH_MODEL", "qwen3.8-27b-sglang")
BASE_URL = os.environ.get("AIC_BENCH_BASE", "http://100.124.137.82:8888").rstrip("/")
API_KEY = os.environ.get("AIC_BENCH_API_KEY", "")
TEMPERATURE = 0.7
MAX_TOKENS = 8000
LLM_TIMEOUT = 240          # per chat/completions call — endpoint serializes; keep short so wedges recover
RUN_TIMEOUT = 5            # candidate run (catch infinite loops)
BUILD_TIMEOUT = 90         # candidate build/compile
LLM_RETRIES = 3

OUT = os.path.join(HERE, "results.jsonl")
LOG = os.path.join(HERE, "run.log")

_lock = threading.Lock()

def log(msg):
    with _lock:
        with open(LOG, "a") as f:
            f.write(time.strftime("%H:%M:%S") + " " + msg + "\n")

# ---------------- prompts ----------------
FEWSHOT = '''
# Two AIC examples.
# PRINTING RULE: [. x] prints x and ALWAYS appends exactly one newline.
#   - A bare number on its own line = ONE argument:  [. [N value]]
#   - Do NOT print a label word before a bare value, and do NOT embed "\\n"
#     in the printed string (it would double the newline).

[: fib [n] [D
  [? [<= n 1]
    [^ n]
    [^ [+ [fib [- n 1]] [fib [- n 2]]]]]
]]
[. [N [fib 10]]]

[: bubble_sort [[$ buf] len] [D
  [! i 0]
  [W [< i len] [D
    [! j 0]
    [! limit [- [- len i] 1]]
    [W [< j limit] [D
      [! a [@@ buf j]]
      [! b [@@ buf [+ j 1]]]
      [? [> a b] [D
        [@@! buf j b]
        [@@! buf [+ j 1] a]
      ] [D]]
      [! j [+ j 1]]
    ]]
    [! i [+ i 1]]
  ]]
  [^ 0]
]]
'''

def build_messages(lang, condition, task):
    """Return (system, user) for a cell."""
    spec = task["spec"]
    if lang == "aic":
        system = AIC_SYSTEM
        if condition == "spec_in_context":
            system = AIC_SYSTEM + "\n" + AIC_SPEC_CONTEXT
        user = FEWSHOT + "\n# Task\nWrite AIC code that does the following and prints exactly the expected output:\n" + spec
    else:
        role = "systems" if lang == "c" else "Python"
        system = ("You are an expert " + role + " engineer. Write correct, complete, "
                  "compilable/runnable code for the following task.")
        if condition == "spec_in_context":
            system += " You may use the standard library."
        user = "# Task\nWrite " + ("C" if lang == "c" else "Python") + " code that does the following and prints exactly the expected output:\n" + spec
    return system, user

# ---------------- LLM ----------------
def chat(system, user, model=MODEL):
    """One chat/completions call -> final content string. enable_thinking off."""
    payload = {
        "model": model,
        "messages": [
            {"role": "system", "content": system},
            {"role": "user", "content": user},
        ],
        "temperature": TEMPERATURE,
        "max_tokens": MAX_TOKENS,
        # This endpoint's reasoning model is slow with thinking ON (~150-400s/call
        # for AIC prompts), which makes 900 generations infeasible and causes
        # queue-timeouts. Thinking is disabled uniformly for EVERY cell (all
        # languages and conditions) so the comparison stays fair; documented as
        # a limitation in the report. chat_template_kwargs is the knob this
        # sglang build honors (top-level enable_thinking is ignored by it).
        "chat_template_kwargs": {"enable_thinking": False},
        "enable_thinking": False,
    }
    if API_KEY:
        hdrs = {"Content-Type": "application/json", "Authorization": "Bearer " + API_KEY}
    else:
        hdrs = {"Content-Type": "application/json"}
    body = json.dumps(payload).encode()
    url = BASE_URL + "/v1/chat/completions"
    last = None
    for attempt in range(LLM_RETRIES):
        try:
            req = urllib.request.Request(url, data=body, headers=hdrs, method="POST")
            with urllib.request.urlopen(req, timeout=LLM_TIMEOUT) as r:
                data = json.loads(r.read().decode())
            choice = data["choices"][0]
            content = choice["message"].get("content") or ""
            if content.strip():
                return content
            # empty content = endpoint dropped the answer (reasoning-only / truncation /
            # overload). Do NOT return it as a valid empty program — retry.
            last = "empty content (finish=%s)" % choice.get("finish_reason")
            time.sleep(3 * (attempt + 1))
            continue
        except urllib.error.HTTPError as e:
            code = e.code
            # 400 on enable_thinking -> retry once without it
            if code == 400 and attempt == 0:
                payload.pop("enable_thinking", None)
                body = json.dumps(payload).encode()
                last = "HTTP 400 (dropping enable_thinking)"
                continue
            last = "HTTP %d: %s" % (code, (e.read() or b"")[:200])
            time.sleep(3 * (attempt + 1))
        except Exception as e:
            last = str(e)
            time.sleep(3 * (attempt + 1))
    return "__LLM_ERROR__" + (last or "unknown")

# ---------------- extraction (ONE documented rule) ----------------
def extract_code(text):
    """First fenced code block; if none, the whole text (documented, uniform)."""
    if text is None:
        return ""
    if text.startswith("__LLM_ERROR__"):
        return ""
    m = re.search(r"```[a-zA-Z0-9_+-]*\n?(.*?)```", text, re.DOTALL)
    if m:
        return m.group(1).strip("\n") + "\n"
    return text.strip("\n") + "\n"

# ---------------- sandbox scoring ----------------
def _run_bin(binpath, cwd, stdin_data, timeout=RUN_TIMEOUT):
    inp = (stdin_data or "").encode()
    r = subprocess.run([binpath], capture_output=True, timeout=timeout, input=inp, cwd=cwd)
    return r.returncode, r.stdout.decode(errors="replace")

def score_aic(code, task):
    sd = FIXED_STDIN if task["uses_stdin"] else None
    with tempfile.TemporaryDirectory() as d:
        p = os.path.join(d, "prog.aic")
        open(p, "w").write(code)
        # ensure fixed input file in run cwd
        if task["uses_file"]:
            open(os.path.join(d, FIXED_FILE), "w").write(FIXED_FILE_CONTENT)
        # build from project root so lib/ imports resolve
        elf = os.path.join(d, "prog.elf")
        try:
            b = subprocess.run(["python3", os.path.join(BASE, "aic.py"), "build", p, "-o", elf],
                               capture_output=True, text=True, cwd=BASE, timeout=BUILD_TIMEOUT)
        except subprocess.TimeoutExpired:
            return dict(compiled=False, ran=False, output="", cat="timeout", silent=False, compiler_stderr="")
        outtext = (b.stdout or "") + (b.stderr or "")
        if b.returncode != 0:
            m = re.search(r":kind (\w+)", outtext)
            return dict(compiled=False, ran=False, output="", cat=(m.group(1) if m else "CODEGEN"),
                        silent=False, compiler_stderr=outtext.strip())
        try:
            r = subprocess.run([elf], capture_output=True, timeout=RUN_TIMEOUT,
                               input=((sd or "") + "").encode(), cwd=d)
        except subprocess.TimeoutExpired:
            return dict(compiled=True, ran=False, output="", cat="timeout", silent=False, compiler_stderr="")
        output = r.stdout.decode(errors="replace")
        if r.returncode != 0:
            return dict(compiled=True, ran=False, output=output, cat="RUNTIME", silent=False, compiler_stderr="")
        ok = (output == task["expected"])
        return dict(compiled=True, ran=True, output=output, cat="none" if ok else "none",
                    silent=(not ok))

def score_c(code, task):
    sd = FIXED_STDIN if task["uses_stdin"] else None
    with tempfile.TemporaryDirectory() as d:
        p = os.path.join(d, "prog.c"); o = os.path.join(d, "prog")
        open(p, "w").write(code)
        if task["uses_file"]:
            open(os.path.join(d, FIXED_FILE), "w").write(FIXED_FILE_CONTENT)
        c = subprocess.run(["gcc", "-O2", "-o", o, p], capture_output=True, text=True, timeout=BUILD_TIMEOUT)
        if c.returncode != 0:
            return dict(compiled=False, ran=False, output="", cat="CODEGEN", silent=False, compiler_stderr="")
        try:
            r = subprocess.run([o], capture_output=True, timeout=RUN_TIMEOUT,
                               input=((sd or "") + "").encode(), cwd=d)
        except subprocess.TimeoutExpired:
            return dict(compiled=True, ran=False, output="", cat="timeout", silent=False, compiler_stderr="")
        output = r.stdout.decode(errors="replace")
        if r.returncode != 0:
            return dict(compiled=True, ran=False, output=output, cat="RUNTIME", silent=False, compiler_stderr="")
        ok = (output == task["expected"])
        return dict(compiled=True, ran=True, output=output, cat="none", silent=(not ok), compiler_stderr="")

def score_py(code, task):
    sd = FIXED_STDIN if task["uses_stdin"] else None
    with tempfile.TemporaryDirectory() as d:
        if task["uses_file"]:
            open(os.path.join(d, FIXED_FILE), "w").write(FIXED_FILE_CONTENT)
        try:
            r = subprocess.run([sys.executable, "-c", code], capture_output=True, text=True,
                               timeout=BUILD_TIMEOUT + RUN_TIMEOUT, input=(sd or ""), cwd=d)
        except subprocess.TimeoutExpired:
            return dict(compiled=True, ran=False, output="", cat="timeout", silent=False, compiler_stderr="")
        outtext = r.stderr or ""
        if "SyntaxError" in outtext or "IndentationError" in outtext:
            return dict(compiled=False, ran=False, output=(r.stdout or ""), cat="PARSE", silent=False, compiler_stderr=outtext.strip())
        output = r.stdout or ""
        if r.returncode != 0:
            return dict(compiled=True, ran=False, output=output, cat="RUNTIME", silent=False, compiler_stderr="")
        ok = (output == task["expected"])
        return dict(compiled=True, ran=True, output=output, cat="none", silent=(not ok), compiler_stderr="")

SCORE = {"aic": score_aic, "c": score_c, "python": score_py}

# ---------------- cell runner ----------------
def completed_cells():
    """A cell is 'done' only if it has a record with real (non-empty) code.
    llm_failed / empty-code records do NOT count — those cells get retried on
    resume, so a transient endpoint failure never permanently loses a cell."""
    done = set()
    if not os.path.exists(OUT):
        return done
    with open(OUT) as f:
        for line in f:
            try:
                rec = json.loads(line)
                if (rec.get("raw_candidate_code") or "").strip():
                    done.add((rec["task_id"], rec["language"], rec["condition"], rec["sample_index"]))
            except Exception:
                pass
    return done

def process_cell(task, lang, condition, sample_index):
    system, user = build_messages(lang, condition, task)
    raw = chat(system, user)
    llm_failed = raw is None or raw.startswith("__LLM_ERROR__") or not (raw or "").strip()
    code = extract_code(raw)
    if llm_failed:
        # Infra failure: the model/endpoint produced no code. Record it DISTINCTLY
        # so it never contaminates pass@1 or the silent-wrong metric (an empty
        # program that "ran" would be wrongly flagged silent_wrong_output=True).
        rec = {
            "task_id": task["task_id"], "tier": task["tier"], "language": lang,
            "condition": condition, "model": MODEL, "sample_index": sample_index,
            "compiled_or_ran": False, "passed_functional_test": False,
            "error_category": "llm_failed", "silent_wrong_output": False,
            "raw_output": "", "raw_candidate_code": "", "compiler_stderr": "",
        }
    else:
        res = SCORE[lang](code, task)
        rec = {
            "task_id": task["task_id"], "tier": task["tier"], "language": lang,
            "condition": condition, "model": MODEL, "sample_index": sample_index,
            "compiled_or_ran": res["compiled"],
            "passed_functional_test": (res["ran"] and res["output"] == task["expected"]),
            "error_category": res["cat"] if not (res["ran"] and res["output"] == task["expected"]) else "none",
            "silent_wrong_output": res["silent"],
            "raw_output": res["output"], "raw_candidate_code": code,
            "compiler_stderr": res.get("compiler_stderr", ""),
        }
    with _lock:
        with open(OUT, "a") as f:
            f.write(json.dumps(rec) + "\n")
    if llm_failed:
        log("t%-2d %-6s %-8s s%d LLM_FAILED %s" %
            (task["task_id"], lang, condition[:3], sample_index, (raw or "")[-60:]))
    else:
        log("t%-2d %-6s %-8s s%d pass=%s silent=%s cat=%s" %
            (task["task_id"], lang, condition[:3], sample_index,
             rec["passed_functional_test"], rec["silent_wrong_output"], rec["error_category"]))

def all_cells():
    for task in TASKS:
        for lang in ("aic", "c", "python"):
            for cond in ("zero_shot", "spec_in_context"):
                for s in range(5):
                    yield (task, lang, cond, s)

def main():
    import argparse
    ap = argparse.ArgumentParser()
    ap.add_argument("--workers", type=int, default=12)
    ap.add_argument("--limit", type=int, default=0, help="process at most N cells (0=all)")
    ap.add_argument("--task", type=int, default=0, help="restrict to one task_id")
    ap.add_argument("--lang", default="", help="restrict to one language")
    args = ap.parse_args()

    open(LOG, "w").close()
    cells = list(all_cells())
    if args.task:
        cells = [c for c in cells if c[0]["task_id"] == args.task]
    if args.lang:
        cells = [c for c in cells if c[1] == args.lang]
    done = completed_cells()
    todo = [c for c in cells if (c[0]["task_id"], c[1], c[2], c[3]) not in done]
    if args.limit:
        todo = todo[:args.limit]
    log("START %d cells (%d already done), %d workers, model=%s base=%s" %
        (len(todo), len(done), args.workers, MODEL, BASE_URL))
    if not todo:
        log("nothing to do"); return

    from concurrent.futures import ThreadPoolExecutor, as_completed
    t0 = time.time()
    with ThreadPoolExecutor(max_workers=args.workers) as ex:
        futs = [ex.submit(process_cell, *c) for c in todo]
        for i, fu in enumerate(as_completed(futs), 1):
            try:
                fu.result()
            except Exception as e:
                import traceback
                log("CELL EXCEPTION: %s\n%s" % (e, traceback.format_exc()[-1500:]))
            if i % 25 == 0 or i == len(todo):
                log("progress %d/%d (%.0f min)" % (i, len(todo), (time.time() - t0) / 60))
    log("DONE in %.0f min" % ((time.time() - t0) / 60))

if __name__ == "__main__":
    main()
