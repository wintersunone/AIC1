# AIC Benchmark — All 30 Tasks (Part B)

Model-generation benchmark: the model writes a program in AIC, C, or Python
that produces **byte-exact** stdout for each task. 30 tasks × 3 languages ×
2 prompt conditions (zero-shot / spec-in-context) × 5 samples = 900 cells.

## Scoring pipeline (identical for all languages)

1. Model is asked to write code producing exactly the expected output.
2. Code is extracted (first fenced block, or whole response if unfenced).
3. Compiled in a fresh sandbox (AIC: `aic.py build` → ELF; C: `gcc -O2`;
   Python: `python3 -c`) with 90s build timeout.
4. Run with 5s timeout; file/stdin tasks get fixed deterministic inputs.
5. stdout compared **byte-for-byte** to the expected output.
   - Pass = exact match. Silent-wrong = ran clean but output ≠ expected.
   - Compile/parse/runtime errors recorded distinctly.

## Tier structure

| Tier | Theme | Tasks |
|------|-------|-------|
| 1 | Arithmetic & control flow (recursion, loops, bitwise) | 1–8 |
| 2 | Records, pointers, raw memory (byte/word ops) | 9–16 |
| 3 | Stdlib composition (vec, map, json, arena, string, io) | 17–24 |
| 4 | ABI-landmine tasks: libc-bound ops that tempt unsafe nesting, file/stdin intrinsics | 25–30 |

---

## Task list

### Task 1 — Tier 1
**Spec:** Compute factorial(10) recursively and print the result on its own line.
**Expected output (byte-exact):** `3628800\n`

### Task 2 — Tier 1
**Spec:** Compute the 25th Fibonacci number iteratively (F(1)=1, F(2)=1) and print it on its own line.
**Expected output (byte-exact):** `75025\n`

### Task 3 — Tier 1
**Spec:** For each of the integers 1, 2, 13, 15, 97 in that order, print 1 if it is prime else 0, one per line.
**Expected output (byte-exact):** `0\n1\n1\n0\n1\n`

### Task 4 — Tier 1
**Spec:** Compute gcd(48, 36) with your own algorithm (no library call) and print it on its own line.
**Expected output (byte-exact):** `12\n`

### Task 5 — Tier 1
**Spec:** Print the sum of the decimal digits of 987654321 on its own line.
**Expected output (byte-exact):** `45\n`

### Task 6 — Tier 1
**Spec:** Reverse the decimal digits of 12345 and print the result on its own line.
**Expected output (byte-exact):** `54321\n`

### Task 7 — Tier 1
**Spec:** Compute 2^10 iteratively (integer exponentiation, no library) and print it on its own line.
**Expected output (byte-exact):** `1024\n`

### Task 8 — Tier 1
**Spec:** Print the number of set bits (popcount) of the 64-bit integer 48523 on its own line.
**Expected output (byte-exact):** `10\n`

### Task 9 — Tier 2
**Spec:** Define a 2-field record (x, y). Construct p1=(3,4) and p2=(10,6). Print the squared Euclidean distance between them (no square root) on its own line.
**Expected output (byte-exact):** `53\n`

### Task 10 — Tier 2
**Spec:** Define a 4-field record (x, y, w, h). For a rectangle with x=2, y=5, w=10, h=4, print the area on the first line and the perimeter on the second line.
**Expected output (byte-exact):** `40\n28\n`

### Task 11 — Tier 2
**Spec:** Define a record with fields (value, next) where next is a pointer to the same record type. Build a 5-node chain manually with values 10,20,30,40,50 (node i points to node i+1; the last's next is 0). Traverse from the head and print the sum of the value fields on its own line.
**Expected output (byte-exact):** `150\n`

### Task 12 — Tier 2
**Spec:** Define a 3-field record (a, b, c). Use the bulk field setter to set all fields in a single call to 11, 22, 33. Then read each field back individually and print them on one line separated by single spaces, then a newline.
**Expected output (byte-exact):** `11 22 33\n`

### Task 13 — Tier 2
**Spec:** Allocate a raw byte buffer. Using byte operations only (no records, no word ops), store the value 100 at byte offset 0, 200 at byte offset 4, and 250 at byte offset 8 (a byte op stores the low 8 bits of the value at that byte offset). Read all three back with byte operations and print them on one line separated by single spaces, then a newline.
**Expected output (byte-exact):** `100 200 250\n`

### Task 14 — Tier 2
**Spec:** Allocate a word buffer. Store the 10 fixed integers 1..10 via word operations. Then iterate and read them back with word operations, and print their sum on its own line.
**Expected output (byte-exact):** `55\n`

### Task 15 — Tier 2
**Spec:** Given a word buffer holding the 10 integers 1..10 in order, swap the values at word indices 1 and 8 in place using only word operations (no helper functions). Then print the buffer values on one line separated by single spaces, then a newline.
**Expected output (byte-exact):** `1 9 3 4 5 6 7 8 2 10\n`

### Task 16 — Tier 2
**Spec:** Define a 1-field record (radius). For radii 2, 3, and 5, compute the area as radius*radius*3 (integer approximation, no float) and print each area on its own line, in that order.
**Expected output (byte-exact):** `12\n27\n75\n`

### Task 17 — Tier 3
**Spec:** Using lib/vec.aic, push the 10 integers 1..10 onto a vector. Then pop them off one at a time and print the sum of all popped values on its own line.
**Expected output (byte-exact):** `55\n`

### Task 18 — Tier 3
**Spec:** Using lib/map.aic, insert the 5 key->int pairs a=10, b=20, c=30, d=40, e=50 into a map. Then look up each key in the order a, b, c, d, e and print each value on its own line, in that order.
**Expected output (byte-exact):** `10\n20\n30\n40\n50\n`

### Task 19 — Tier 3
**Spec:** Using lib/map.aic, insert the 5 key->int pairs a=10, b=20, c=30, d=40, e=50 into a map. Then for each key in the order a, b, c, d, e report whether the map contains it (1 if present, 0 if not) using the membership/contains accessor, printing each on its own line, in that order.
**Expected output (byte-exact):** `1\n1\n1\n1\n1\n`

### Task 20 — Tier 3
**Spec:** Using lib/json.aic, build a JSON object with a string field "greeting"="hi", an int field "n"=42, and a nested array field "list"=[1,2,3]. Stringify it, then parse the stringified result back. Print, each on its own line in this order: the recovered string field value, the recovered int field value, and the recovered array length.
**Expected output (byte-exact):** `hi\n42\n3\n`

### Task 21 — Tier 3
**Spec:** Using lib/arena.aic, create an arena. Allocate 3 chunks (4 bytes, 8 bytes, 16 bytes). Record the arena offset after the 3 allocations. Then reset the arena and print, on its own line, the arena offset after the reset (which must be 0).
**Expected output (byte-exact):** `0\n`

### Task 22 — Tier 3
**Spec:** Using lib/string.aic, given the string "benchmark_suite", print whether it starts with the prefix "bench" and whether it ends with the suffix "_suite" (two numbers, 1 for yes / 0 for no) space-separated on one line, then a newline.
**Expected output (byte-exact):** `1 1\n`

### Task 23 — Tier 3
**Spec:** Using lib/map.aic, given the list of 8 strings: ant, bee, bee, cat, cat, dog, dog, ant. Count the frequency of each distinct string using a map. Then print each distinct string (in the fixed order ant, bee, cat, dog) followed by a single space and its count, one per line.
**Expected output (byte-exact):** `ant 2\nbee 2\ncat 2\ndog 2\n`

### Task 24 — Tier 3
**Spec:** Using lib/io.aic, write the fixed string 'Hello AIC benchmark input line' (30 characters, no trailing newline) to a file named bench_in.txt. Then read that file back and print 1 on its own line if the recovered content exactly matches the original AND the reported file size equals the string length (30), else 0.
**Expected output (byte-exact):** `1\n`
**Fixed inputs:** uses fixed file `bench_in.txt` (30 bytes: "Hello AIC benchmark input line")

### Task 25 — Tier 4
**Spec:** Open the file named bench_in.txt (which is provided with contents), read its ENTIRE contents, and print the length (number of bytes) of what was read on its own line. Do it as directly as possible.
**Expected output (byte-exact):** `30\n`
**Fixed inputs:** uses fixed file `bench_in.txt` (30 bytes: "Hello AIC benchmark input line")

### Task 26 — Tier 4
**Spec:** Open the file named bench_in.txt, determine its size, then allocate a buffer of exactly that size and read the file into it. Print the size on its own line.
**Expected output (byte-exact):** `30\n`
**Fixed inputs:** uses fixed file `bench_in.txt` (30 bytes: "Hello AIC benchmark input line")

### Task 27 — Tier 4
**Spec:** Convert the integer 42 to its string form and concatenate it immediately with the fixed prefix 'val=' so the result is 'val=42'. Print that on its own line.
**Expected output (byte-exact):** `val=42\n`

### Task 28 — Tier 4
**Spec:** Read an integer from standard input (the input will be 42), and pass that value as an argument into a second call that doubles it (multiplies by 2), printing the result on its own line. The program should print 84 for the given input.
**Expected output (byte-exact):** `84\n`
**Fixed inputs:** reads stdin (fixed: "42\n")

### Task 29 — Tier 4
**Spec:** Open the file named bench_in.txt, read a fixed number of bytes (5) from it, and close the file. Print the number of bytes you read (5) on its own line.
**Expected output (byte-exact):** `5\n`
**Fixed inputs:** uses fixed file `bench_in.txt` (30 bytes: "Hello AIC benchmark input line")

### Task 30 — Tier 4
**Spec:** Define a 2-field record (i, s) where i is INT and s is STR. Read an integer from standard input (input will be 42) and convert the fixed integer 7 to a string. Populate the record's i field from the read value and its s field from the converted string, binding each libc result to a local before storing it. Print the record's i field on the first line and its s field on the second line.
**Expected output (byte-exact):** `42\n7\n`
**Fixed inputs:** reads stdin (fixed: "42\n")
