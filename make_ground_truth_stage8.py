import sys
from aic_codegen import tokenize, parse, Analyzer, Codegen, Symbol

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

cg = Codegen(an.functions)
cg.slots = slots
cg.types = {}
cg.epilogue = ".Lret_test"

for n in main_stmts:
    cg.compile_stmt(n)

print("STMT_COUNT", len(main_stmts), file=sys.stderr)
print("LABELS_USED", cg.label_n, file=sys.stderr)

with open(out_path, "w") as f:
    f.write("\n".join(cg.lines) + "\n")
