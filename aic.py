#!/usr/bin/env python3
"""
aic.py - Unified Toolchain CLI for the AIC (AI Compiler / AI C) Language

Provides a single unified command-line interface to compile, link, execute,
test, and verify AIC programs across Windows (PE32+) and Linux (ELF64).
"""

import sys
import os
import argparse
import shutil
import subprocess
from compiler import read_source_with_imports, eval_node, tokenize, parse, Scope, OPS

def cmd_build(args):
    src_file = args.input
    if not os.path.exists(src_file):
        print(f"[ERR] Source file '{src_file}' not found.")
        sys.exit(1)

    target = args.target
    if target == "auto":
        if sys.platform == "win32":
            target = "pe"
        elif sys.platform == "darwin":
            target = "macho"
        else:
            target = "elf"

    fmt = getattr(args, "format", "auto")
    if fmt == "auto":
        fmt = "shared" if getattr(args, "header", False) else "exe"
    if fmt == "obj":
        print("[ERR] --format obj not implemented in Milestone 1 (emitters target exe/shared only).")
        sys.exit(1)

    out_file = args.output
    if not out_file:
        base = os.path.splitext(src_file)[0]
        if fmt == "shared":
            stem = os.path.basename(base)
            if target == "pe":
                out_file = f"{base}.dll"
            elif target == "macho":
                out_file = os.path.join(os.path.dirname(base), f"lib{stem}.dylib")
            else:
                out_file = os.path.join(os.path.dirname(base), f"lib{stem}.so")
        else:
            if target == "pe":
                out_file = f"{base}.exe"
            elif target == "macho":
                out_file = f"{base}.macho"
            else:
                out_file = f"{base}.elf"

    asm_file = f"{os.path.splitext(src_file)[0]}.s"

    # 1. Compile to assembly. Prefer the native self-hosted compiler
    #    (aic.exe on Windows / aic.elf on Linux); if it is missing or
    #    crashes (stale/corrupt artifact), fall back to the Python host
    #    codegen, which emits the same asm + the platform bridge.
    #    The C-runtime bridge is host-ABI-specific (MinGW vs SysV/glibc);
    #    pass it as argv[3] so the native compiler's output matches this host.
    _native = "./aic.exe" if sys.platform == "win32" else "./aic.elf"
    aic_exe = _native if os.path.exists(_native) else None
    # The C-runtime bridge must match the artifact's *target* ABI, not the host.
    # A true Windows artifact (PE DLL via --format shared, or any PE on a Win
    # host) needs the WinCRT bridge; everything else (Linux, or the cross-built
    # "pe exe" that actually links as a static x86-64 ELF under binfmt) uses the
    # SysV/glibc bridge. This preserves the existing host-bridge convention for
    # exe builds while making --target pe --format shared emit a real PE DLL.
    _win_target = target == "pe" and (sys.platform == "win32" or fmt == "shared")
    _bridge = "tools/aic_wincrt_bridge.s" if _win_target else "tools/aic_linux_bridge.s"
    native_ok = False
    opt_level = getattr(args, "opt", False) or getattr(args, "_opt", False)
    macos = target == "macho"
    arch = "arm64" if macos else getattr(args, "arch", "x86_64")
    if arch == "arm64":
        # ponytail: the native bootstrap compiler (compiler.aic) has no ARM64
        # backend, so --arch arm64 always goes through the Python host codegen.
        from aic_codegen_arm64 import compile_file_arm64
        try:
            compile_file_arm64(src_file, asm_file, macos_prefix=macos)
        except Exception as e:
            print(f"[ERR] Host compilation failed: {e}")
            sys.exit(1)
        native_ok = True
    elif aic_exe and not args.force_python and not opt_level:
        res = subprocess.run([aic_exe, src_file, asm_file, _bridge], capture_output=True, text=True)
        out_msg = (res.stderr or "") + "\n" + (res.stdout or "")
        if res.returncode == 0 and "[ERR :code" not in out_msg and os.path.exists(asm_file):
            native_ok = True
        else:
            # ponytail: native compiler crashed or reported a compile error.
            # A crash (no [ERR :code], no asm) means the artifact is stale ->
            # fall back to Python host codegen instead of failing the build.
            # A real compile error (asm absent, [ERR :code] present) is kept.
            if "[ERR :code" not in out_msg:
                print(f"[warn] native {os.path.basename(aic_exe)} failed (rc={res.returncode}); using Python host codegen")
            else:
                print(f"[ERR] Native compilation failed:\n{out_msg.strip()}")
                sys.exit(res.returncode if res.returncode != 0 else 1)
    if not native_ok:
        from aic_codegen import compile_file
        try:
            compile_file(src_file, asm_file, bridge_file=os.path.abspath(_bridge), opt_level=opt_level)
        except Exception as e:
            print(f"[ERR] Host compilation failed: {e}")
            sys.exit(1)

    # 2. Package directly using zero-dependency emitters
    if target == "macho":
        # ponytail: Darwin has no free native syscall ABI for the libc helpers
        # the codegen emits, so the Mach-O path binds libSystem via dyld
        # (LC_DYLD_INFO_ONLY) and carries the macos_runtime bridge.
        from tools.macos_runtime import MACOS_RUNTIME_ASM
        with open(asm_file, "r", encoding="utf-8") as f:
            asm_content = f.read()
        import tools.aic_macho_emitter as macho
        exports = []
        if fmt == "shared":
            from aic_codegen import Analyzer, tokenize, parse, read_source_with_imports
            src = read_source_with_imports(src_file)
            toks, lines = tokenize(src)
            nodes = []
            while toks:
                nodes.append(parse(toks, lines))
            an = Analyzer()
            an.analyze(nodes)
            exports = [f.name for f in an.functions.values()]
            macho.build_dylib(asm_content, out_file, export_names=exports,
                              runtime_asm=MACOS_RUNTIME_ASM)
            print(f"[OK] Standalone AArch64 Mach-O dylib: {out_file} ({os.path.getsize(out_file):,} bytes, {len(exports)} exports)")
        else:
            macho.build_executable(asm_content, out_file, runtime_asm=MACOS_RUNTIME_ASM)
            print(f"[OK] Standalone AArch64 Mach-O executable: {out_file} ({os.path.getsize(out_file):,} bytes)")
        if getattr(args, "header", False):
            import tools.generate_header
            tools.generate_header.generate_header(src_file, os.path.splitext(out_file)[0] + ".h")
    elif arch == "arm64":
        import tools.aic_arm64_emitter as arm_emitter
        with open(asm_file, "r", encoding="utf-8") as f:
            asm_content = f.read()
        if fmt == "shared":
            arm_emitter.build_shared_arm64_elf(asm_content, out_file)
            print(f"[OK] Standalone AArch64 shared object: {out_file} ({os.path.getsize(out_file):,} bytes)")
        else:
            arm_emitter.build_standalone_arm64_elf(asm_content, out_file)
            print(f"[OK] Standalone AArch64 ELF64 executable: {out_file} ({os.path.getsize(out_file):,} bytes)")
        if getattr(args, "header", False):
            import tools.generate_header
            tools.generate_header.generate_header(src_file, os.path.splitext(out_file)[0] + ".h")
    elif fmt == "shared":
        # Shared objects always go through the pure-Python emitters (the
        # zero-dep invariant); gcc/MinGW aren't used here.
        if target == "pe":
            import tools.aic_pe_emitter as pe_emitter
            with open(asm_file, "r", encoding="utf-8") as f:
                asm_content = f.read()
            pe_emitter.build_standalone_dll(asm_content, out_file)
            print(f"[OK] Standalone PE32+ DLL: {out_file} ({os.path.getsize(out_file):,} bytes)")
        elif target == "elf":
            import tools.aic_elf_emitter as elf_emitter
            with open(asm_file, "r", encoding="utf-8") as f:
                asm_content = f.read()
            elf_emitter.build_shared_elf(asm_content, out_file)
            print(f"[OK] Standalone Linux shared ELF64: {out_file} ({os.path.getsize(out_file):,} bytes)")
        else:
            print(f"[ERR] Unknown target '{target}'")
            sys.exit(1)
        if getattr(args, "header", False):
            import tools.generate_header
            header_path = os.path.splitext(out_file)[0] + ".h"
            tools.generate_header.generate_header(src_file, header_path)
    elif target == "pe":
        import tools.aic_pe_emitter as pe_emitter
        with open(asm_file, "r", encoding="utf-8") as f:
            asm_content = f.read()
        pe_emitter.build_standalone_pe(asm_content, out_file)
        print(f"[OK] Standalone PE32+ executable: {out_file} ({os.path.getsize(out_file):,} bytes)")
    elif target == "elf":
        # ponytail: On Linux prefer cross/native GCC (the SysV bridge + glibc
        # path, verified running under qemu/binfmt). The zero-dep ELF emitter
        # is a fallback only — its embedded shims segfault under qemu for
        # real programs. On a native x86-64 Linux box, plain `gcc` works; on
        # other arches we need the cross compiler. Add a per-arch toolchain
        # table if more targets are needed.
        gcc = ("gcc" if (sys.platform == "linux" and os.uname().machine == "x86_64")
               else "x86_64-linux-gnu-gcc") if sys.platform != "win32" else None
        used_gcc = False
        if gcc and shutil.which(gcc):
            res = subprocess.run([gcc, "-static", "-O2", asm_file, "-o", out_file],
                                 capture_output=True, text=True)
            if res.returncode == 0 and os.path.exists(out_file):
                used_gcc = True
                print(f"[OK] Standalone ELF64 executable ({gcc}): {out_file} ({os.path.getsize(out_file):,} bytes)")
        if not used_gcc:
            import tools.aic_elf_emitter as elf_emitter
            with open(asm_file, "r", encoding="utf-8") as f:
                asm_content = f.read()
            elf_emitter.build_standalone_elf(asm_content, out_file)
            print(f"[OK] Standalone Linux ELF64 executable (direct emitter): {out_file} ({os.path.getsize(out_file):,} bytes)")
    else:
        print(f"[ERR] Unknown target '{target}'")
        sys.exit(1)

    # Direct emitters write plain files with no execute bit. Set it for
    # exe output so `./app.elf` (and the benchmark sandbox) can run it.
    if fmt == "exe" and os.path.exists(out_file):
        try:
            os.chmod(out_file, os.stat(out_file).st_mode | 0o111)
        except OSError:
            pass

    if not args.keep_asm and os.path.exists(asm_file):
        try: os.remove(asm_file)
        except: pass

def cmd_run(args):
    src_file = args.input
    if not os.path.exists(src_file):
        print(f"[ERR] Source file '{src_file}' not found.")
        sys.exit(1)

    extra = getattr(args, "extra_args", [])
    if extra and extra[0] == "--":
        extra = extra[1:]

    if args.interp:
        import compiler
        old_argv = sys.argv
        sys.argv = [src_file] + extra
        try:
            src = read_source_with_imports(src_file)
            tokens, lines = tokenize(src)
            env = Scope()
            env.table["__name__"] = "__main__"
            while tokens:
                node = parse(tokens, lines)
                if node is not None:
                    eval_node(node, env)
        finally:
            sys.argv = old_argv
        return

    # Native compile & run
    base = os.path.splitext(src_file)[0]
    target = getattr(args, "target", "auto")
    if target == "macho":
        out_file = f"{base}_run.macho"
    elif target == "pe" or sys.platform == "win32":
        out_file = f"{base}_run.exe"
    else:
        out_file = f"{base}_run.elf"
    args.output = out_file
    args.target = target
    args.force_python = False
    args.keep_asm = False
    args._opt = getattr(args, "opt", False)
    args.arch = getattr(args, "arch", "x86_64")
    if target == "macho":
        args.arch = "arm64"
    cmd_build(args)

    try:
        exe_path = os.path.abspath(out_file)
        os.chmod(exe_path, 0o755)
        if target == "macho" and sys.platform != "darwin":
            print(f"[ERR] cannot execute a Mach-O binary on {sys.platform}; "
                  f"built {out_file} for macOS arm64 only")
            os.remove(out_file)
            sys.exit(1)
        rc = subprocess.run([exe_path] + extra).returncode
    finally:
        if os.path.exists(out_file):
            try: os.remove(out_file)
            except: pass
    if rc != 0:
        print(f"[ERR] '{src_file}' exited with code {rc}")
        sys.exit(rc)

def cmd_test(args):
    suites = [
        "tests/test_stdlib.aic",
        "tests/test_json.aic",
        "tests/test_system.aic",
        "tests/test_edge_cases.aic",
    ]
    all_passed = True
    print("=" * 60)
    print("AIC Standard Test Suite")
    print("=" * 60)
    for suite in suites:
        print(f"\n[*] Running suite: {suite}")
        cmd_args = argparse.Namespace(
            input=suite,
            output=None,
            target="auto",
            force_python=False,
            keep_asm=False,
            interp=False,
            format="auto",
            header=False
        )
        try:
            cmd_run(cmd_args)
        except Exception as e:
            print(f"[FAIL] Error in {suite}: {e}")
            all_passed = False

    if all_passed:
        print("\n" + "=" * 60)
        print("ALL TEST SUITES PASSED CLEANLY.")
        print("=" * 60)
    else:
        sys.exit(1)

def cmd_verify(args):
    import verify_bootstrap
    verify_bootstrap.main()

def cmd_bench(args):
    import benchmarks.speed.run_speed_benchmarks as speed_bench
    speed_bench.main()

def cmd_agent(args):
    from agent.loop import run_agent_loop
    llm_fn = None
    if args.mock:
        # Deterministic responder for offline runs: one canned reply.
        canned = args.mock
        def responder(messages):
            return canned
        llm_fn = responder
    artifact = run_agent_loop(
        args.task,
        args.out,
        max_iterations=args.max_iters,
        opt=args.opt,
        llm_fn=llm_fn,
    )
    print(artifact)
    if artifact.status != "SUCCESS":
        sys.exit(1)

def cmd_repl(args):
    print("================================================================")
    print("AIC (AI Compiler / AI C) Interactive REPL v5.0")
    print("Type AIC expressions or statements. Type 'exit' or ':q' to quit.")
    print("Example: [! x 10] [+ x 5]")
    print("================================================================")
    from compiler import tokenize, parse, eval_node, Scope, AICError, Symbol
    env = Scope()
    env.table["__name__"] = "__repl__"
    buf = ""
    while True:
        try:
            prompt = "... " if buf else "aic> "
            try:
                line = input(prompt)
            except EOFError:
                print()
                break
            line_str = line.strip()
            if not buf and line_str in ("exit", "quit", ":q"):
                break
            if not line_str and not buf:
                continue
            buf += line + "\n"
            open_b = buf.count("[")
            close_b = buf.count("]")
            if open_b > close_b:
                continue
            tokens, lines = tokenize(buf)
            buf = ""
            while tokens:
                ast = parse(tokens, lines)
                res = eval_node(ast, env)
                is_statement = (
                    isinstance(ast, list) and ast and
                    isinstance(ast[0], Symbol) and
                    ast[0].name in (".", "!", "§", ":", "::", "W", "D")
                )
                if res is not None and not is_statement:
                    print(f"=> {res}")
        except KeyboardInterrupt:
            print("\nKeyboardInterrupt")
            buf = ""
        except AICError as e:
            print(f"AIC Error: {e}")
            buf = ""
        except Exception as e:
            print(f"Error: {e}")
            buf = ""

def main(argv=None):
    argv = list(sys.argv[1:] if argv is None else argv)

    # `run` forwards everything after "--" to the program. Splitting here keeps
    # --target/--arch/-O1 usable in ANY position (argparse.REMAINDER used to
    # swallow them as program arguments).
    prog_args = []
    if argv and argv[0] == "run" and "--" in argv:
        cut = argv.index("--")
        prog_args = argv[cut + 1:]
        argv = argv[:cut]

    parser = argparse.ArgumentParser(
        description="AIC (AI Compiler / AI C) - Systems Language Engineered for Artificial Intelligence",
        formatter_class=argparse.RawDescriptionHelpFormatter
    )
    subparsers = parser.add_subparsers(dest="command", required=True)

    # build
    p_build = subparsers.add_parser("build", help="Compile an .aic program to a standalone native binary")
    p_build.add_argument("input", help="Input .aic file")
    p_build.add_argument("-o", "--output", help="Output binary file path")
    p_build.add_argument("--target", choices=["auto", "pe", "elf", "macho"], default="auto",
                         help="Target binary format: pe (Windows), elf (Linux), or auto (default)")
    p_build.add_argument("--format", choices=["auto", "exe", "shared", "obj"], default="auto",
                         help="Output form: exe (default), shared (.so/.dll), or obj (not yet)")
    p_build.add_argument("--header", action="store_true",
                         help="Generate a C header (.h) sidecar alongside the shared library")
    p_build.add_argument("--keep-asm", action="store_true", help="Keep intermediate .s file")
    p_build.add_argument("--force-python", action="store_true", help="Force Python compiler instead of native aic.exe")
    p_build.add_argument("--arch", choices=["x86_64", "arm64"], default="x86_64",
                         help="Target machine architecture (default: x86_64)")
    p_build.add_argument("-O1", "--opt", action="store_true", help="Enable -O1: linear scan register allocation")
    p_build.set_defaults(func=cmd_build)

    # run
    p_run = subparsers.add_parser("run", help="Compile and run an .aic program natively")
    p_run.add_argument("input", help="Input .aic file")
    p_run.add_argument("--interp", action="store_true", help="Run via reference interpreter instead of native binary")
    p_run.add_argument("--target", choices=["auto", "pe", "elf", "macho"], default="auto",
                       help="Target binary format for the run build (default: auto)")
    p_run.add_argument("--arch", choices=["x86_64", "arm64"], default="x86_64",
                       help="Target machine architecture (default: x86_64)")
    p_run.add_argument("--opt", "-O1", action="store_true", help="Enable -O1 register allocation")
    p_run.set_defaults(func=cmd_run)

    # test
    p_test = subparsers.add_parser("test", help="Run the full standard library and integration test suites")
    p_test.set_defaults(func=cmd_test)

    # verify
    p_verify = subparsers.add_parser("verify", help="Run the full 18-stage self-hosting bootstrap verification pipeline")
    p_verify.set_defaults(func=cmd_verify)

    # bench
    p_bench = subparsers.add_parser("bench", help="Run execution speed benchmarks (AIC vs C GCC -O2 vs Node.js vs Python)")
    p_bench.set_defaults(func=cmd_bench)

    # repl
    p_repl = subparsers.add_parser("repl", help="Start an interactive read-eval-print loop (REPL)")
    p_repl.set_defaults(func=cmd_repl)

    # agent (Milestone 3 - Agent Zero)
    p_agent = subparsers.add_parser(
        "agent", help="Agent Zero: turn a plain-English task into a verified .so/.dll + .h")
    p_agent.add_argument("task", help="Plain-English systems task")
    p_agent.add_argument("-o", "--out", default="libagent",
                         help="Output library prefix (produces <out>.so/.dll + <out>.h)")
    p_agent.add_argument("--opt", "-O1", action="store_true",
                         help="Compile candidates with -O1 register allocation")
    p_agent.add_argument("--max-iters", type=int, default=5,
                         help="Maximum generate/verify iterations (default 5)")
    p_agent.add_argument("--mock", default=None,
                         help="Offline: use this literal reply for every attempt (no LLM call)")
    p_agent.set_defaults(func=cmd_agent)

    args = parser.parse_args(argv)
    args.extra_args = prog_args
    args.func(args)

if __name__ == "__main__":
    main()
