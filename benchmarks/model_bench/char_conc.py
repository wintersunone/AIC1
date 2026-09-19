#!/usr/bin/env python3
"""Concurrency characterization: fire N parallel real codegen calls, measure
per-call completion time + success. Tells us the safe concurrency for the
599-cell re-run. Uses distinct prompts so it's realistic."""
import os, sys, time, json, urllib.request, threading
os.chdir(os.path.dirname(os.path.abspath(__file__)))
sys.path.insert(0, os.path.dirname(os.path.abspath(__file__)))
import tasks, harness

MODEL = harness.MODEL
URL = harness.BASE_URL + "/v1/chat/completions"
results = []
lock = threading.Lock()

def one(lang, tid, idx):
    task = [t for t in tasks.TASKS if t["task_id"] == tid][0]
    s, u = harness.build_messages(lang, "zero_shot", task)
    payload = {"model": MODEL,
               "messages": [{"role":"system","content":s},{"role":"user","content":u}],
               "temperature": 0.7, "max_tokens": 8000, "enable_thinking": False}
    body = json.dumps(payload).encode()
    req = urllib.request.Request(URL, data=body, headers={"Content-Type":"application/json"}, method="POST")
    t0 = time.time()
    try:
        with urllib.request.urlopen(req, timeout=400) as r:
            data = json.loads(r.read().decode())
        el = time.time() - t0
        content = data["choices"][0]["message"].get("content") or ""
        with lock:
            results.append((lang, tid, idx, el, len(content), "ok"))
        print(f"  {lang} t{tid}: {el:.1f}s content={len(content)}B", flush=True)
    except Exception as e:
        with lock:
            results.append((lang, tid, idx, time.time()-t0, 0, "ERR:"+str(e)[:30]))
        print(f"  {lang} t{tid}: ERR {time.time()-t0:.0f}s {str(e)[:40]}", flush=True)

N = 4
# N distinct (lang,task) pairs
jobs = [("aic",1,0),("c",3,1),("python",4,2),("aic",2,3)]
t0 = time.time()
threads = [threading.Thread(target=one, args=j) for j in jobs]
for t in threads: t.start()
for t in threads: t.join()
tot = time.time()-t0
ok = sum(1 for r in results if r[5]=="ok")
print(f"\nN={N} parallel: {ok}/{len(results)} succeeded, total wall {tot:.0f}s")
print("max per-call:", f"{max(r[3] for r in results):.0f}s", "| mean:", f"{sum(r[3] for r in results)/len(results):.0f}s")
