"""Zero-dependency OpenAI-compatible chat client (stdlib urllib only).

Config (env vars, args override):
  AIC_LLM_BASE_URL / OPENAI_BASE_URL   default http://127.0.0.1:8888/v1
  AIC_LLM_API_KEY  / OPENAI_API_KEY    default "local"
  AIC_LLM_MODEL                        default nvidia/Qwen3.6-35B-A3B-NVFP4
  AIC_LLM_TIMEOUT                      default 120 s

ponytail: no streaming, no retries beyond one 5xx/429 retry, no tool-calling.
Add streaming only if a caller needs incremental output.
"""

import json
import os
import time
import urllib.error
import urllib.request


class LLMError(RuntimeError):
    pass


def _cfg(name, *fallbacks, default=None):
    for key in (name,) + fallbacks:
        val = os.environ.get(key)
        if val:
            return val
    return default


DEFAULT_MODEL = "nvidia/Qwen3.6-35B-A3B-NVFP4"


def chat(messages, model=None, base_url=None, api_key=None, timeout=None,
         max_tokens=2000, temperature=0.2, extra_body=None):
    """POST /chat/completions, return the assistant text."""
    base = (base_url or _cfg("AIC_LLM_BASE_URL", "OPENAI_BASE_URL",
                             default="http://127.0.0.1:8888/v1")).rstrip("/")
    key = api_key or _cfg("AIC_LLM_API_KEY", "OPENAI_API_KEY", default="local")
    mdl = model or _cfg("AIC_LLM_MODEL", default=DEFAULT_MODEL)
    tmo = timeout or float(_cfg("AIC_LLM_TIMEOUT", default="120"))

    body = {
        "model": mdl,
        "messages": messages,
        "max_tokens": max_tokens,
        "temperature": temperature,
    }
    if extra_body:
        body.update(extra_body)

    req = urllib.request.Request(
        f"{base}/chat/completions",
        data=json.dumps(body).encode("utf-8"),
        headers={"Content-Type": "application/json",
                 "Authorization": f"Bearer {key}"},
    )

    last = None
    payload = None
    for attempt in (1, 2):
        try:
            with urllib.request.urlopen(req, timeout=tmo) as r:
                payload = json.loads(r.read().decode("utf-8"))
            break
        except urllib.error.HTTPError as e:
            last = f"HTTP {e.code}: {e.read()[:400]!r}"
            if e.code in (429, 500, 502, 503, 504) and attempt == 1:
                time.sleep(1.0)
                continue
            raise LLMError(last) from e
        except (urllib.error.URLError, OSError, json.JSONDecodeError) as e:
            last = str(e)
            if attempt == 1:
                time.sleep(1.0)
                continue
            raise LLMError(last) from e

    try:
        choice = payload["choices"][0]["message"]
    except (KeyError, IndexError) as e:
        raise LLMError(f"malformed completion: {payload!r}") from e

    # Reasoning models (e.g. Qwen/SGLang with thinking on) may put the whole
    # answer in reasoning_content and leave content empty when the token budget
    # is exhausted. Prefer content; fall back to reasoning_content.
    text = choice.get("content") or choice.get("reasoning_content") or ""
    if not text.strip():
        raise LLMError("empty completion (raise max_tokens or disable thinking)")
    return text


def make_llm(**kwargs):
    """Return a Callable[[list[dict]], str] for injection into the agent loop."""
    def respond(messages):
        return chat(messages, **kwargs)
    return respond
