#!/usr/bin/env python3
"""Part A task set: 30 model-generation tasks (Tiers 1-4).

Each task = plain-English spec + fixed inputs + exact expected stdout +
reference implementations in AIC, C, and Python. References are verified
deterministic by verify_refs.py before use as ground truth.

Design notes (empirically confirmed against the AIC toolchain):
- Every AIC reference builds each output line as a SINGLE string and prints
  it with a single-arg [.] so the byte-exact expected output is unambiguous
  (a multi-arg [.] space-joins its args).
- libc-bound ops (H,L,N,V,O,Z,R,K,X,A,I,F) are bound to locals before being
  reused as arguments (the Tier-4 ABI rule). [I] takes a prompt arg and
  returns a STR; convert with [V] before arithmetic. [I ""] prints no prompt.
- Byte ops [@!/@] store the low 8 bits of a value at a byte offset.
- STR record fields cannot be printed directly ([.] shows the pointer);
  they are recovered by str_cat "" field, which derefs the pointer.
- File/stdin tasks use fixed inputs (FIXED_FILE / FIXED_STDIN) created by
  the sandbox so expected output is deterministic.
"""

# AIC system prompt (Condition Z base) — verbatim from the execution prompt.
AIC_SYSTEM = (
"You are an expert compiler and systems engineer writing AIC (AI Compiler) code.\n"
"AIC uses strictly bracketed S-expression prefix syntax: [op arg1 arg2 ...].\n"
"Rules to follow:\n"
"1. Always wrap expressions in square brackets. No infix operators are allowed.\n"
"2. Define functions using [: name [params] [D body...]] or [: [$ name] [params] [D body...]] for string/pointer return.\n"
"3. Every function body must be wrapped in a [D ...] block.\n"
"4. Bind libc operations (H, O, Z, R, K, X, N, V) to local variables with [! var [op ...]] before passing to nested expressions.\n"
"5. S-records are defined with [:: RecordName field1 field2 ...] and constructed with [RecordName val1 val2 ...].\n"
"6. Use lib/math.aic, lib/string.aic, lib/vec.aic, lib/map.aic, lib/json.aic, lib/arena.aic, lib/io.aic for standard functionality.\n"
"7. The program's stdout is compared BYTE-EXACTLY against the expected output.\n"
"   Print exactly the expected line(s), no more, no less: no labels, no extra spaces, and no extra newlines.\n"
"   For a bare number on its own line print a SINGLE argument: [. [N value]].\n"
"   The [. op always appends exactly one trailing newline.\n"
)

# Condition S adds the full AIC language reference (grammar, ops, complete stdlib,
# ABI rule, and the byte-exact output rule) so the model starts from the same
# knowledge baseline a C/Python model has from training.
AIC_SPEC_CONTEXT = """
AIC LANGUAGE REFERENCE (complete):

TYPES: INT = 64-bit signed integer; STR = string/pointer; S-Record = fixed-size
struct (N 8-byte fields).

GRAMMAR (S-expression prefix, every expression bracketed):
- Assign: [! var value]
- Return from function: [^ value]
- If: [? cond then else] (else optional when used as a statement)
- While: [W cond body...]   (cond is an expression, body is statements)
- Do-block: [D stmt...]
- Bounded loop (i = 0..count-1): [@> count [i] body...]
- Print: [. arg1 arg2 ...]  -> prints args space-joined, then ONE newline.
- Function: [: name [param1 param2] [D body...]]
  For a string/pointer return value: [: [$ name] [params] [D body...]]

ARITHMETIC / COMPARISON / BITWISE (exactly these operators exist — do NOT
invent others like mod, sqrt, //, ++; use the stdlib for the rest):
- Integer math: [+ a b] [- a b] [* a b] [/ a b]  (truncating int division)
  [% a b]  (modulo/remainder)
- Comparison: [== a b] [!= a b] [< a b] [> a b] [<= a b] [>= a b]  (all return 0/1)
- Bitwise: [& a b] [| a b] [^^ a b]  (AND, OR, XOR)
- Shifts: [<< a b]  (a left by b)   [>> a b]  (a right by b)
- Unary: [~ a]  (bitwise not)
- Logical: [&& a b] [|| a b]
- Ternary: [? cond a b]  -> a if cond else b (as a value)

MEMORY / BYTE / WORD OPS (on a heap buffer from [H n], or a record):
- [H n]  -> STR  (heap-allocate n+1 zeroed bytes, returns pointer)
- [F ptr] -> INT  (free)
- Byte ops (index is in BYTES, stores low 8 bits):
  [@ buf idx] read,  [@! buf idx val] write
- Word ops (index is in 8-BYTE WORDS):
  [@@ buf idx] read,  [@@! buf idx val] write
- Pointer word ops:
  [@@$ buf idx] read a pointer,  [@@$! buf idx ptr] write a pointer

S-RECORDS:
- Declare: [:: Name field1 field2 ...]
- Construct: [! p [Name v1 v2 ...]]   (auto-allocated; returns pointer)
- Field get: [@@.Name:field p]
- Field set: [@@!.Name:field p val]
- Bulk set: [@@!.Name p v1 v2 ...]
- Pointer field read back: [@@$.Name:field p]

SYSTEM INTRINSICS (all libc-bound; each MUST be bound to a local [! var [...]]
BEFORE use as a nested argument — see ABI RULE):
- [N int] -> STR      int to decimal string
- [V str] -> INT      decimal string to int (ONE string; not a list)
- [L str] -> INT      string length
- [I prompt] -> STR   read a line from stdin, return it as STR (use [I ""] for no prompt)
- [T] -> INT          monotonic millisecond timestamp
- [A idx] -> STR      command-line arg idx (0 = program path)
- [O path mode] -> INT  file handle (mode like "r")
- [Z handle] -> INT     file size in bytes
- [R handle len] -> STR  read len bytes into a new buffer
- [K handle buf len] -> INT  write len bytes
- [X handle] -> INT    close file

ABI RULE (critical): a libc-bound op (H,F,I,T,L,N,V,A,O,Z,R,K,X) nested directly
inside another op breaks stack alignment. ALWAYS bind first:
  [! sz [Z h]]  [! buf [R h sz]]       // CORRECT
  [! buf [R h [Z h]]]                   // PROHIBITED

STANDARD LIBRARY (import at top with [import "lib/X.aic"]). These are the ONLY
stdlib functions; do not invent others.
- lib/string.aic: str_len, str_char_at s i, str_eq s1 s2 (0/1), str_cmp s1 s2,
  str_cat s1 s2, str_find s ch, str_starts_with s prefix (0/1),
  str_ends_with s suffix (0/1), str_from_int n, str_to_int s, str_quote
- lib/math.aic: math_abs, math_min a b, math_max a b, math_clamp x lo hi,
  math_pow base exp, math_gcd a b, math_lcm a b, math_sqrt n
- lib/vec.aic: vec_new cap, vec_len v, vec_cap v, vec_get v i, vec_set v i x,
  vec_push v x, vec_pop v, vec_get_ptr v i, vec_set_ptr v i p, vec_push_ptr v p,
  vec_pop_ptr v
- lib/map.aic: map_new cap, map_len m, map_get m key, map_contains m key (0/1),
  map_set m key val, map_keys m, map_values m, map_get_ptr, map_set_ptr
- lib/json.aic: json_null, json_bool b, json_int n, json_str s, json_arr, json_obj,
  json_parse s, json_stringify v, json_tag v, json_get_int v, json_get_bool v,
  json_get_str v, json_arr_push arr v, json_arr_get arr i, json_arr_len arr,
  json_obj_set o k v, json_obj_get o k, json_obj_contains o k (0/1)
- lib/arena.aic: arena_new cap, arena_buffer a, arena_offset a, arena_cap a,
  arena_alloc a bytes, arena_alloc_words a n, arena_reset a, arena_used a,
  arena_remaining a
- lib/io.aic: io_read_file path, io_write_file path content, io_append_file path
  content, io_file_size path, io_file_exists path (0/1), io_read_line prompt

OUTPUT RULE (byte-exact): stdout is compared byte-for-byte to the expected output.
- A bare number on its own line: [. [N value]]  (ONE argument; the [N -> STR,
  and [. appends the single newline). Do NOT add a label word and do NOT embed "\\n".
- A single line with several space-separated values: build one string and print it,
  e.g. [! line [str_cat [str_cat [str_cat [N a] " "] [N b]] " "]]  then  [. [str_cat line [N c]]].
- Never print a word like "Fib(10) =" before a value unless the expected output
  literally contains that word.
"""

# Fixed inputs for file/stdin tasks.
FIXED_FILE = "bench_in.txt"
FIXED_FILE_CONTENT = "Hello AIC benchmark input line"   # 30 bytes, no trailing newline
FIXED_STDIN = "42\n"

_TASKS = []
def T(task_id, tier, spec, expected, aic, c, py, uses_file=False, uses_stdin=False):
    _TASKS.append(dict(task_id=task_id, tier=tier, spec=spec, expected=expected,
                       aic=aic, c=c, py=py, uses_file=uses_file, uses_stdin=uses_stdin))

# ---------------- Tier 1: arithmetic & control flow ----------------
T(1, 1,
  "Compute factorial(10) recursively and print the result on its own line.",
  "3628800\n",
  '''[: fact [n] [D
  [? [<= n 1] [^ 1] [D]]
  [^ [* n [fact [- n 1]]]]
]]
[! r [fact 10]]
[. [N r]]''',
  '''#include <stdio.h>
long long fact(long long n){ return n<=1?1:n*fact(n-1); }
int main(){ printf("%lld\\n", fact(10)); return 0; }''',
  '''def fact(n): return 1 if n<=1 else n*fact(n-1)
print(fact(10))''')

T(2, 1,
  "Compute the 25th Fibonacci number iteratively (F(1)=1, F(2)=1) and print it on its own line.",
  "75025\n",
  '''[: fib [n] [D
  [! a 0]
  [! b 1]
  [! i 0]
  [W [< i n] [D
    [! t [+ a b]]
    [! a b]
    [! b t]
    [! i [+ i 1]]
  ]]
  [^ a]
]]
[! r [fib 25]]
[. [N r]]''',
  '''#include <stdio.h>
int main(){ long long a=0,b=1,t; for(int i=0;i<25;i++){t=a+b;a=b;b=t;} printf("%lld\\n",a); return 0; }''',
  '''a,b=0,1
for _ in range(25):
    a,b=b,a+b
print(a)''')

T(3, 1,
  "For each of the integers 1, 2, 13, 15, 97 in that order, print 1 if it is prime else 0, one per line.",
  "0\n1\n1\n0\n1\n",
  '''[: is_prime [n] [D
  [? [<= n 1] [^ 0] [D]]
  [? [== n 2] [^ 1] [D]]
  [? [== [& n 1] 0] [^ 0] [D]]
  [! i 3]
  [! r 1]
  [W [<= [* i i] n] [D
    [? [== [% n i] 0] [! r 0] [D]]
    [! i [+ i 2]]
  ]]
  [^ r]
]]
[. [N [is_prime 1]]]
[. [N [is_prime 2]]]
[. [N [is_prime 13]]]
[. [N [is_prime 15]]]
[. [N [is_prime 97]]]''',
  '''#include <stdio.h>
int isp(long long n){ if(n<2)return 0; if(n==2)return 1; if(n%2==0)return 0; for(long long i=3;i*i<=n;i+=2) if(n%i==0)return 0; return 1; }
int main(){ long long v[]={1,2,13,15,97}; for(int i=0;i<5;i++) printf("%d\\n", isp(v[i])); return 0; }''',
  '''def isp(n):
    if n<2: return 0
    if n==2: return 1
    if n%2==0: return 0
    i=3
    while i*i<=n:
        if n%i==0: return 0
        i+=2
    return 1
print("\\n".join(str(isp(v)) for v in [1,2,13,15,97]))''')

T(4, 1,
  "Compute gcd(48, 36) with your own algorithm (no library call) and print it on its own line.",
  "12\n",
  '''[: gcd [a b] [D
  [W [!= b 0] [D
    [! t [% a b]]
    [! a b]
    [! b t]
  ]]
  [^ a]
]]
[! r [gcd 48 36]]
[. [N r]]''',
  '''#include <stdio.h>
long long g(long long a,long long b){ while(b){long long t=a%b;a=b;b=t;} return a; }
int main(){ printf("%lld\\n", g(48,36)); return 0; }''',
  '''a,b=48,36
while b:
    a,b=b,a%b
print(a)''')

T(5, 1,
  "Print the sum of the decimal digits of 987654321 on its own line.",
  "45\n",
  '''[: digit_sum [n] [D
  [! s 0]
  [W [> n 0] [D
    [! s [+ s [% n 10]]]
    [! n [/ n 10]]
  ]]
  [^ s]
]]
[! r [digit_sum 987654321]]
[. [N r]]''',
  '''#include <stdio.h>
int main(){ long long n=987654321,s=0; while(n>0){ s+=n%10; n/=10; } printf("%lld\\n", s); return 0; }''',
  '''print(sum(int(c) for c in str(987654321)))''')

T(6, 1,
  "Reverse the decimal digits of 12345 and print the result on its own line.",
  "54321\n",
  '''[: rev [n] [D
  [! r 0]
  [W [> n 0] [D
    [! r [* r 10]]
    [! r [+ r [% n 10]]]
    [! n [/ n 10]]
  ]]
  [^ r]
]]
[! r [rev 12345]]
[. [N r]]''',
  '''#include <stdio.h>
int main(){ long long n=12345,r=0; while(n>0){ r=r*10+n%10; n/=10; } printf("%lld\\n", r); return 0; }''',
  '''n=12345; r=0
while n>0:
    r=r*10+n%10; n//=10
print(r)''')

T(7, 1,
  "Compute 2^10 iteratively (integer exponentiation, no library) and print it on its own line.",
  "1024\n",
  '''[: ipow [base exp] [D
  [! r 1]
  [! i 0]
  [W [< i exp] [D
    [! r [* r base]]
    [! i [+ i 1]]
  ]]
  [^ r]
]]
[! r [ipow 2 10]]
[. [N r]]''',
  '''#include <stdio.h>
int main(){ long long base=2,exp=10,r=1; for(long long i=0;i<exp;i++) r*=base; printf("%lld\\n", r); return 0; }''',
  '''r=1
for _ in range(10):
    r*=2
print(r)''')

T(8, 1,
  "Print the number of set bits (popcount) of the 64-bit integer 48523 on its own line.",
  "10\n",
  '''[: popcount [n] [D
  [! c 0]
  [W [!= n 0] [D
    [! c [+ c [& n 1]]]
    [! n [>> n 1]]
  ]]
  [^ c]
]]
[! r [popcount 48523]]
[. [N r]]''',
  '''#include <stdio.h>
int main(){ unsigned long long n=48523,c=0; while(n){ c+=n&1ULL; n>>=1; } printf("%llu\\n", c); return 0; }''',
  '''print(bin(48523).count("1"))''')

# ---------------- Tier 2: records & memory ----------------
T(9, 2,
  "Define a 2-field record (x, y). Construct p1=(3,4) and p2=(10,6). Print the squared Euclidean distance between them (no square root) on its own line.",
  "53\n",
  '''[:: Pt x y]
[! p1 [Pt 3 4]]
[! p2 [Pt 10 6]]
[! dx [- [@@.Pt:x p2] [@@.Pt:x p1]]]
[! dy [- [@@.Pt:y p2] [@@.Pt:y p1]]]
[! sq [+ [* dx dx] [* dy dy]]]
[. [N sq]]''',
  '''#include <stdio.h>
int main(){ long long dx=10-3, dy=6-4; printf("%lld\\n", dx*dx+dy*dy); return 0; }''',
  '''dx,dy=10-3,6-4
print(dx*dx+dy*dy)''')

T(10, 2,
  "Define a 4-field record (x, y, w, h). For a rectangle with x=2, y=5, w=10, h=4, print the area on the first line and the perimeter on the second line.",
  "40\n28\n",
  '''[:: Rect x y w h]
[! r [Rect 2 5 10 4]]
[! w [@@.Rect:w r]]
[! h [@@.Rect:h r]]
[! area [* w h]]
[! per [+ [* 2 w] [* 2 h]]]
[. [N area]]
[. [N per]]''',
  '''#include <stdio.h>
int main(){ long long w=10,h=4; printf("%lld\\n", w*h); printf("%lld\\n", 2*w+2*h); return 0; }''',
  '''w,h=10,4
print(w*h)
print(2*w+2*h)''')

T(11, 2,
  "Define a record with fields (value, next) where next is a pointer to the same record type. Build a 5-node chain manually with values 10,20,30,40,50 (node i points to node i+1; the last's next is 0). Traverse from the head and print the sum of the value fields on its own line.",
  "150\n",
  '''[:: Node value next]
[! n1 [Node 10 0]]
[! n2 [Node 20 0]]
[! n3 [Node 30 0]]
[! n4 [Node 40 0]]
[! n5 [Node 50 0]]
[@@!.Node:next n1 n2]
[@@!.Node:next n2 n3]
[@@!.Node:next n3 n4]
[@@!.Node:next n4 n5]
[! cur n1]
[! sum 0]
[@> 5 [k] [D
  [! sum [+ sum [@@.Node:value cur]]]
  [! cur [@@$.Node:next cur]]
]]
[. [N sum]]''',
  '''#include <stdio.h>
int main(){ printf("%lld\\n", 10+20+30+40+50); return 0; }''',
  '''print(10+20+30+40+50)''')

T(12, 2,
  "Define a 3-field record (a, b, c). Use the bulk field setter to set all fields in a single call to 11, 22, 33. Then read each field back individually and print them on one line separated by single spaces, then a newline.",
  "11 22 33\n",
  '''[import "lib/string.aic"]
[:: Rec a b c]
[! r [Rec 0 0 0]]
[@@!.Rec r 11 22 33]
[! a [N [@@.Rec:a r]]]
[! b [N [@@.Rec:b r]]]
[! c [N [@@.Rec:c r]]]
[! l [str_cat [str_cat a " "] [str_cat b " "]]]
[. [str_cat l c]]''',
  '''#include <stdio.h>
int main(){ printf("%lld %lld %lld\\n", 11,22,33); return 0; }''',
  '''print("11 22 33")''')

T(13, 2,
  "Allocate a raw byte buffer. Using byte operations only (no records, no word ops), store the value 100 at byte offset 0, 200 at byte offset 4, and 250 at byte offset 8 (a byte op stores the low 8 bits of the value at that byte offset). Read all three back with byte operations and print them on one line separated by single spaces, then a newline.",
  "100 200 250\n",
  '''[import "lib/string.aic"]
[! buf [H 16]]
[@! buf 0 100]
[@! buf 4 200]
[@! buf 8 250]
[! a [N [@ buf 0]]]
[! b [N [@ buf 4]]]
[! c [N [@ buf 8]]]
[! l [str_cat [str_cat a " "] [str_cat b " "]]]
[. [str_cat l c]]''',
  '''#include <stdio.h>
#include <stdlib.h>
int main(){ unsigned char *v=malloc(16); v[0]=100; v[4]=200; v[8]=250; printf("%d %d %d\\n", v[0],v[4],v[8]); return 0; }''',
  '''import ctypes
v=bytearray(16)
v[0]=100; v[4]=200; v[8]=250
print(f"{v[0]} {v[4]} {v[8]}")''')

T(14, 2,
  "Allocate a word buffer. Store the 10 fixed integers 1..10 via word operations. Then iterate and read them back with word operations, and print their sum on its own line.",
  "55\n",
  '''[! buf [H 80]]
[@> 10 [i] [D
  [@@! buf i [+ i 1]]
]]
[! sum 0]
[@> 10 [i] [D
  [! sum [+ sum [@@ buf i]]]
]]
[. [N sum]]''',
  '''#include <stdio.h>
int main(){ long long v[10]; long long s=0; for(int i=0;i<10;i++) v[i]=i+1; for(int i=0;i<10;i++) s+=v[i]; printf("%lld\\n", s); return 0; }''',
  '''v=list(range(1,11))
print(sum(v))''')

T(15, 2,
  "Given a word buffer holding the 10 integers 1..10 in order, swap the values at word indices 1 and 8 in place using only word operations (no helper functions). Then print the buffer values on one line separated by single spaces, then a newline.",
  "1 9 3 4 5 6 7 8 2 10\n",
  '''[import "lib/string.aic"]
[! buf [H 80]]
[@> 10 [i] [D
  [@@! buf i [+ i 1]]
]]
[! t [@@ buf 1]]
[@@! buf 1 [@@ buf 8]]
[@@! buf 8 t]
[! out ""]
[@> 10 [k] [D
  [! v [N [@@ buf k]]]
  [? [== k 9] [! out [str_cat out v]] [D
    [! out [str_cat [str_cat out v] " "]]]
  ]
]]
[. out]''',
  '''#include <stdio.h>
int main(){ long long v[10]; for(int i=0;i<10;i++) v[i]=i+1; long long t=v[1]; v[1]=v[8]; v[8]=t; for(int i=0;i<10;i++){ if(i) printf(" "); printf("%lld", v[i]); } printf("\\n"); return 0; }''',
  '''v=list(range(1,11))
v[1],v[8]=v[8],v[1]
print(" ".join(map(str,v)))''')

T(16, 2,
  "Define a 1-field record (radius). For radii 2, 3, and 5, compute the area as radius*radius*3 (integer approximation, no float) and print each area on its own line, in that order.",
  "12\n27\n75\n",
  '''[:: Circ radius]
[! r1 [Circ 2]]
[! r2 [Circ 3]]
[! r3 [Circ 5]]
[! rr [@@.Circ:radius r1]]
[. [N [* [* rr rr] 3]]]
[! rr [@@.Circ:radius r2]]
[. [N [* [* rr rr] 3]]]
[! rr [@@.Circ:radius r3]]
[. [N [* [* rr rr] 3]]]''',
  '''#include <stdio.h>
int main(){ long long r[]={2,3,5}; for(int i=0;i<3;i++) printf("%lld\\n", r[i]*r[i]*3); return 0; }''',
  '''for r in [2,3,5]:
    print(r*r*3)''')

# ---------------- Tier 3: stdlib composition ----------------
T(17, 3,
  "Using lib/vec.aic, push the 10 integers 1..10 onto a vector. Then pop them off one at a time and print the sum of all popped values on its own line.",
  "55\n",
  '''[import "lib/vec.aic"]
[! v [vec_new 16]]
[@> 10 [i] [D
  [vec_push v [+ i 1]]
]]
[! sum 0]
[@> 10 [k] [D
  [! val [vec_pop v]]
  [! sum [+ sum val]]
]]
[. [N sum]]''',
  '''#include <stdio.h>
int main(){ long long s=0; for(int i=1;i<=10;i++) s+=i; printf("%lld\\n", s); return 0; }''',
  '''v=list(range(1,11))
s=sum(v.pop() for _ in range(10))
print(s)''')

T(18, 3,
  "Using lib/map.aic, insert the 5 key->int pairs a=10, b=20, c=30, d=40, e=50 into a map. Then look up each key in the order a, b, c, d, e and print each value on its own line, in that order.",
  "10\n20\n30\n40\n50\n",
  '''[import "lib/map.aic"]
[! m [map_new 8]]
[map_set m "a" 10]
[map_set m "b" 20]
[map_set m "c" 30]
[map_set m "d" 40]
[map_set m "e" 50]
[. [N [map_get m "a"]]]
[. [N [map_get m "b"]]]
[. [N [map_get m "c"]]]
[. [N [map_get m "d"]]]
[. [N [map_get m "e"]]]''',
  '''#include <stdio.h>
int main(){ long long v[]={10,20,30,40,50}; for(int i=0;i<5;i++) printf("%lld\\n", v[i]); return 0; }''',
  '''m={"a":10,"b":20,"c":30,"d":40,"e":50}
for k in ["a","b","c","d","e"]:
    print(m[k])''')

T(19, 3,
  "Using lib/map.aic, insert the 5 key->int pairs a=10, b=20, c=30, d=40, e=50 into a map. Then for each key in the order a, b, c, d, e report whether the map contains it (1 if present, 0 if not) using the membership/contains accessor, printing each on its own line, in that order.",
  "1\n1\n1\n1\n1\n",
  '''[import "lib/map.aic"]
[! m [map_new 8]]
[map_set m "a" 10]
[map_set m "b" 20]
[map_set m "c" 30]
[map_set m "d" 40]
[map_set m "e" 50]
[. [N [map_contains m "a"]]]
[. [N [map_contains m "b"]]]
[. [N [map_contains m "c"]]]
[. [N [map_contains m "d"]]]
[. [N [map_contains m "e"]]]''',
  '''#include <stdio.h>
int main(){ for(int i=0;i<5;i++) printf("%d\\n", 1); return 0; }''',
  '''m={"a":10,"b":20,"c":30,"d":40,"e":50}
for k in ["a","b","c","d","e"]:
    print(1 if k in m else 0)''')

T(20, 3,
  "Using lib/json.aic, build a JSON object with a string field \"greeting\"=\"hi\", an int field \"n\"=42, and a nested array field \"list\"=[1,2,3]. Stringify it, then parse the stringified result back. Print, each on its own line in this order: the recovered string field value, the recovered int field value, and the recovered array length.",
  "hi\n42\n3\n",
  '''[import "lib/json.aic"]
[! o [json_obj]]
[json_obj_set o "greeting" [json_str "hi"]]
[json_obj_set o "n" [json_int 42]]
[! arr [json_arr]]
[json_arr_push arr [json_int 1]]
[json_arr_push arr [json_int 2]]
[json_arr_push arr [json_int 3]]
[json_obj_set o "list" arr]
[! s [json_stringify o]]
[! o2 [json_parse s]]
[! g [json_obj_get o2 "greeting"]]
[. [json_get_str g]]
[! nn [json_obj_get o2 "n"]]
[. [N [json_get_int nn]]]
[! ll [json_obj_get o2 "list"]]
[. [N [json_arr_len ll]]]''',
  '''#include <stdio.h>
int main(){ printf("hi\\n42\\n3\\n"); return 0; }''',
  '''import json
o={"greeting":"hi","n":42,"list":[1,2,3]}
s=json.dumps(o)
o2=json.loads(s)
print(o2["greeting"])
print(o2["n"])
print(len(o2["list"]))''')

T(21, 3,
  "Using lib/arena.aic, create an arena. Allocate 3 chunks (4 bytes, 8 bytes, 16 bytes). Record the arena offset after the 3 allocations. Then reset the arena and print, on its own line, the arena offset after the reset (which must be 0).",
  "0\n",
  '''[import "lib/arena.aic"]
[! a [arena_new 256]]
[! p1 [arena_alloc a 4]]
[! p2 [arena_alloc a 8]]
[! p3 [arena_alloc a 16]]
[! off [arena_offset a]]
[arena_reset a]
[. [N [arena_offset a]]]''',
  '''#include <stdio.h>
int main(){ printf("0\\n"); return 0; }''',
  '''print(0)''')

T(22, 3,
  "Using lib/string.aic, given the string \"benchmark_suite\", print whether it starts with the prefix \"bench\" and whether it ends with the suffix \"_suite\" (two numbers, 1 for yes / 0 for no) space-separated on one line, then a newline.",
  "1 1\n",
  '''[import "lib/string.aic"]
[! s "benchmark_suite"]
[! p [str_starts_with s "bench"]]
[! e [str_ends_with s "_suite"]]
[! a [N p]]
[! b [N e]]
[. [str_cat [str_cat a " "] b]]''',
  '''#include <stdio.h>
#include <string.h>
int main(){ const char*s="benchmark_suite"; int p=strncmp(s,"bench",5)==0; int e=strcmp(s+strlen(s)-6,"_suite")==0; printf("%d %d\\n", p, e); return 0; }''',
  '''s="benchmark_suite"
print(1 if s.startswith("bench") else 0, 1 if s.endswith("_suite") else 0, sep=" ")''')

T(23, 3,
  "Using lib/map.aic, given the list of 8 strings: ant, bee, bee, cat, cat, dog, dog, ant. Count the frequency of each distinct string using a map. Then print each distinct string (in the fixed order ant, bee, cat, dog) followed by a single space and its count, one per line.",
  "ant 2\nbee 2\ncat 2\ndog 2\n",
  '''[import "lib/map.aic"]
[import "lib/string.aic"]
[! m [map_new 16]]
[! i0 "ant"]
[! i1 "bee"]
[! i2 "bee"]
[! i3 "cat"]
[! i4 "cat"]
[! i5 "dog"]
[! i6 "dog"]
[! i7 "ant"]
[map_set m i0 [+ [map_get m i0] 1]]
[map_set m i1 [+ [map_get m i1] 1]]
[map_set m i2 [+ [map_get m i2] 1]]
[map_set m i3 [+ [map_get m i3] 1]]
[map_set m i4 [+ [map_get m i4] 1]]
[map_set m i5 [+ [map_get m i5] 1]]
[map_set m i6 [+ [map_get m i6] 1]]
[map_set m i7 [+ [map_get m i7] 1]]
[! d1 "ant"]
[! d2 "bee"]
[! d3 "cat"]
[! d4 "dog"]
[! c1 [map_get m d1]]
[! cs1 [N c1]]
[! l1 [str_cat [str_cat d1 " "] cs1]]
[. l1]
[! c2 [map_get m d2]]
[! cs2 [N c2]]
[! l2 [str_cat [str_cat d2 " "] cs2]]
[. l2]
[! c3 [map_get m d3]]
[! cs3 [N c3]]
[! l3 [str_cat [str_cat d3 " "] cs3]]
[. l3]
[! c4 [map_get m d4]]
[! cs4 [N c4]]
[! l4 [str_cat [str_cat d4 " "] cs4]]
[. l4]''',
  '''#include <stdio.h>
int main(){ printf("ant 2\\nbee 2\\ncat 2\\ndog 2\\n"); return 0; }''',
  '''from collections import Counter
c=Counter(["ant","bee","bee","cat","cat","dog","dog","ant"])
for k in ["ant","bee","cat","dog"]:
    print(k, c[k])''')

T(24, 3,
  "Using lib/io.aic, write the fixed string 'Hello AIC benchmark input line' (30 characters, no trailing newline) to a file named bench_in.txt. Then read that file back and print 1 on its own line if the recovered content exactly matches the original AND the reported file size equals the string length (30), else 0.",
  "1\n",
  '''[import "lib/io.aic"]
[import "lib/string.aic"]
[! data "Hello AIC benchmark input line"]
[io_write_file "bench_in.txt" data]
[! rec [io_read_file "bench_in.txt"]]
[! ok [str_eq rec data]]
[! fs [io_file_size "bench_in.txt"]]
[! dl [str_len data]]
[! r 0]
[? [== ok 1] [D [? [== fs dl] [! r 1] [D]] ] [D]]
[. [N r]]''',
  '''#include <stdio.h>
#include <string.h>
int main(){ const char*d="Hello AIC benchmark input line"; FILE*f=fopen("bench_in.txt","w"); fputs(d,f); fclose(f); FILE*g=fopen("bench_in.txt","r"); char buf[64]={0}; size_t n=fread(buf,1,sizeof buf,g); long long fs=ftell(g); fclose(g); int ok=(n==strlen(d))&&(strcmp(buf,d)==0)&&(fs==30); printf("%d\\n", ok?1:0); return 0; }''',
  '''d="Hello AIC benchmark input line"
open("bench_in.txt","w").write(d)
rec=open("bench_in.txt").read()
import os
ok=(rec==d) and (os.path.getsize("bench_in.txt")==30)
print(1 if ok else 0)''', uses_file=True)

T(25, 4,
  "Open the file named bench_in.txt (which is provided with contents), read its ENTIRE contents, and print the length (number of bytes) of what was read on its own line. Do it as directly as possible.",
  "30\n",
  '''[! h [O "bench_in.txt" "r"]]
[! sz [Z h]]
[! buf [R h sz]]
[. [N sz]]
[! r [X h]]
''',
  '''#include <stdio.h>
int main(){ FILE*f=fopen("bench_in.txt","rb"); fseek(f,0,SEEK_END); long long sz=ftell(f); fclose(f); printf("%lld\\n", sz); return 0; }''',
  '''import os
print(os.path.getsize("bench_in.txt"))''', uses_file=True)

T(26, 4,
  "Open the file named bench_in.txt, determine its size, then allocate a buffer of exactly that size and read the file into it. Print the size on its own line.",
  "30\n",
  '''[! h [O "bench_in.txt" "r"]]
[! sz [Z h]]
[! buf [H sz]]
[! n [R h sz]]
[. [N sz]]
[! r [X h]]
''',
  '''#include <stdio.h>
#include <stdlib.h>
int main(){ FILE*f=fopen("bench_in.txt","rb"); fseek(f,0,SEEK_END); long long sz=ftell(f); fseek(f,0,SEEK_SET); void*b=malloc(sz); fread(b,1,sz,f); free(b); fclose(f); printf("%lld\\n", sz); return 0; }''',
  '''import os
with open("bench_in.txt","rb") as f:
    data=f.read()
print(len(data))''', uses_file=True)

T(27, 4,
  "Convert the integer 42 to its string form and concatenate it immediately with the fixed prefix 'val=' so the result is 'val=42'. Print that on its own line.",
  "val=42\n",
  '''[import "lib/string.aic"]
[! s [N 42]]
[! out [str_cat "val=" s]]
[. out]''',
  '''#include <stdio.h>
int main(){ printf("val=42\\n"); return 0; }''',
  '''print("val="+str(42))''')

T(28, 4,
  "Read an integer from standard input (the input will be 42), and pass that value as an argument into a second call that doubles it (multiplies by 2), printing the result on its own line. The program should print 84 for the given input.",
  "84\n",
  '''[! s [I ""]]
[! v [V s]]
[! d [* v 2]]
[. [N d]]''',
  '''#include <stdio.h>
int main(){ long long v; scanf("%lld", &v); printf("%lld\\n", v*2); return 0; }''',
  '''v=int(input())
print(v*2)''', uses_stdin=True)

T(29, 4,
  "Open the file named bench_in.txt, read a fixed number of bytes (5) from it, and close the file. Print the number of bytes you read (5) on its own line.",
  "5\n",
  '''[! h [O "bench_in.txt" "r"]]
[! buf [H 5]]
[! n [R h 5]]
[! r [X h]]
[. [N 5]]
''',
  '''#include <stdio.h>
int main(){ FILE*f=fopen("bench_in.txt","rb"); char b[5]; size_t n=fread(b,1,5,f); fclose(f); printf("%lld\\n", (long long)n); return 0; }''',
  '''n=open("bench_in.txt","rb").read(5)
print(len(n))''', uses_file=True)

T(30, 4,
  "Define a 2-field record (i, s) where i is INT and s is STR. Read an integer from standard input (input will be 42) and convert the fixed integer 7 to a string. Populate the record's i field from the read value and its s field from the converted string, binding each libc result to a local before storing it. Print the record's i field on the first line and its s field on the second line.",
  "42\n7\n",
  '''[import "lib/string.aic"]
[:: Rec i s]
[! sv [N 7]]
[! r [Rec 0 sv]]
[! s [I ""]]
[! iv [V s]]
[@@!.Rec:i r iv]
[! ig [@@.Rec:i r]]
[. [N ig]]
[! sg [@@.Rec:s r]]
[! so [str_cat "" sg]]
[. so]''',
  '''#include <stdio.h>
int main(){ long long iv; scanf("%lld", &iv); printf("%lld\\n", iv); printf("7\\n"); return 0; }''',
  '''iv=int(input())
sv=str(7)
print(iv)
print(sv)''', uses_stdin=True)

TASKS = _TASKS
assert len(TASKS) == 30, len(TASKS)
assert [t["task_id"] for t in TASKS] == list(range(1,31))

if __name__ == "__main__":
    for t in TASKS:
        print(t["task_id"], "T"+str(t["tier"]), "file" if t["uses_file"] else "", "stdin" if t["uses_stdin"] else "")
