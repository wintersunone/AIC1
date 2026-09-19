#!/usr/bin/env python3
"""Characterize the SGLang endpoint under real codegen prompts (concurrency 1).
Reports per-call: elapsed, content length, finish_reason, empty-or-not.
This tells us whether empties are timeouts, token-limit truncation, or true empty.
"""
import os, sys, time, json, urllib.request
os.chdir(os.path.dirname(os.path.abspath(__file__)))
sys.path.insert(0, os.path.dirname(os.path.abspath(__file__)))
import tasks

MODEL = "qwen3.8-27b-sglang"
BASE = "http://100.124.137.82:8888"
URL = BASE + "/v1/chat/completions"

def one_call(system, user):
    payload = {"model": MODEL,
               "messages": [{"role":"system","content":system},{"role":"user","content":user}],
               "temperature": 0.7, "max_tokens": 8000, "enable_thinking": False}
    body = json.dumps(payload).encode()
    req = urllib.request.Request(URL, data=body, headers={"Content-Type":"application/json"}, method="POST")
    t0 = time.time()
    try:
        with urllib.request.urlopen(req, timeout=300) as r:
            data = json.loads(r.read().decode())
        el = time.time() - t0
        msg = data["choices"][0]["message"]
        fin = data["choices"][0].get("finish_reason")
        content = msg.get("content") or ""
        rc = msg.get("reasoning_content") or ""
        return el, len(content), len(rc), fin, content[:60].replace("\n"," ")
    except Exception as e:
        return time.time()-t0, -1, -1, "ERR:"+str(e)[:50], ""

# 3 real codegen prompts: aic t1, c t17, python t17
probes = [
    ("aic", 1), ("c", 17), ("python", 17),
]
for lang, tid in probes:
    task = [t for t in tasks.TASKS if t["task_id"]==tid][0]
    s, u = tasks.AIC_SYSTEM, ""  # placeholder; use harness builder
    import harness
    s, u = harness.build_messages(lang, "zero_shot", task)
    el, clen, rlen, fin, preview = one_call(s, u)
    print(f"{lang} t{tid}: {el:.1f}s content={clen}B reasoning={rlen}B finish={fin} preview={preview!r}")
