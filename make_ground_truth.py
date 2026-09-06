import sys
from aic_codegen import tokenize, parse, Analyzer, Codegen, Symbol, _is_form

src_path = sys.argv[1]
out_path = sys.argv[2]

with open(src_path) as f:
    text = f.read()

tokens, lines = tokenize(text)
nodes = []
while tokens:
    nodes.append(parse(tokens, lines))

an = Analyzer()
main_stmts = an.register(nodes)

for n in main_stmts:
    an.collect_declarations(n, an.declared, None)

print("DECL_COUNT", len(an.declared), file=sys.stderr)
slots = {name: i for i, name in enumerate(sorted(an.declared))}
print("SORTED", sorted(an.declared), file=sys.stderr)
print("v slot", slots.get("v"), "-> offset", -8*(slots.get("v",0)+1), file=sys.stderr)

cg = Codegen(an.functions)
cg.slots = slots
cg.types = {}

stmt_count = 0
for n in main_stmts:
    if isinstance(n, list) and n and isinstance(n[0], Symbol) and n[0].name == "!":
        cg.compile_expr(n[2])
        stmt_count += 1

print("STMT_COUNT", stmt_count, file=sys.stderr)

with open(out_path, "w") as f:
    f.write("\n".join(cg.lines) + "\n")
