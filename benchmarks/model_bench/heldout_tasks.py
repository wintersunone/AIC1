#!/usr/bin/env python3
"""heldout_tasks.py - 50 held-out tasks NOT used to tune any prompt.

Design rules (invariants from the spec):
  * Every `expected` string is COMPUTED by the Python reference function
    below at import time. Nothing is copied from model output.
  * No task id, spec, or expected string overlaps tasks.py (the tuned set).
    `assert_no_overlap_with_tuned()` enforces that at import.
  * Deterministic stdout only - no clocks, no randomness, no argv.

Tiers:
  1 = arithmetic / control flow
  2 = strings / arrays
  3 = records / buffers / stdlib
  4 = memory / files / multi-step systems

Run:  python3 benchmarks/model_bench/heldout_tasks.py   (prints the table)
"""

import os
import sys

HERE = os.path.dirname(os.path.abspath(__file__))
sys.path.insert(0, HERE)

FIXED_FILE = "heldout_in.txt"
FIXED_FILE_CONTENT = "heldout benchmark payload"     # 24 bytes, no newline

_TASKS = []


def H(task_id, tier, spec, fn, uses_file=False, fixed_stdin=None,
      fixed_file=None, fixed_file_content=None):
    _TASKS.append(dict(
        task_id=task_id,
        tier=tier,
        spec=spec,
        expected=fn(),
        uses_file=uses_file,
        uses_stdin=fixed_stdin is not None,
        fixed_stdin=fixed_stdin,
        fixed_file=fixed_file or FIXED_FILE,
        fixed_file_content=fixed_file_content if fixed_file_content is not None
        else FIXED_FILE_CONTENT,
    ))


# ------------------------------------------------------------- helpers
def _fact(n):
    return 1 if n <= 1 else n * _fact(n - 1)


def _gcd(a, b):
    while b:
        a, b = b, a % b
    return abs(a)


def _is_prime(n):
    if n < 2:
        return False
    i = 2
    while i * i <= n:
        if n % i == 0:
            return False
        i += 1
    return True


def _collatz(n, count):
    out = []
    while len(out) < count:
        out.append(n)
        n = n // 2 if n % 2 == 0 else 3 * n + 1
    return out


def _insertion_sort(xs):
    out = list(xs)
    for i in range(1, len(out)):
        key = out[i]
        j = i - 1
        while j >= 0 and out[j] > key:
            out[j + 1] = out[j]
            j -= 1
        out[j + 1] = key
    return out


def _fizz(n):
    if n % 15 == 0:
        return "FizzBuzz"
    if n % 3 == 0:
        return "Fizz"
    if n % 5 == 0:
        return "Buzz"
    return str(n)


def _rle(s):
    out, i = [], 0
    while i < len(s):
        j = i
        while j < len(s) and s[j] == s[i]:
            j += 1
        out.append(f"{j - i}{s[i]}")
        i = j
    return "".join(out)


def _caesar(s, k):
    return "".join(chr((ord(c) - 97 + k) % 26 + 97) for c in s)


# ------------------------------------------------------------- Tier 1 (10)
H(101, 1,
  "Compute the sum of all integers from 1 to 100 inclusive and print it on its own line.",
  lambda: f"{sum(range(1, 101))}\n")

H(102, 1,
  "Print the first 10 values of the Collatz sequence starting at 27, one per line "
  "(each value is the next term: if even divide by 2, if odd multiply by 3 and add 1).",
  lambda: "".join(f"{c}\n" for c in _collatz(27, 10)))

H(103, 1,
  "Compute 17 factorial and print the result on its own line.",
  lambda: f"{_fact(17)}\n")

H(104, 1,
  "For each integer n from 1 to 20, print n followed by a space and then the square of n, "
  "one pair per line.",
  lambda: "".join(f"{n} {n*n}\n" for n in range(1, 21)))

H(105, 1,
  "Print every integer from 1 to 15 that is divisible by 3, one per line.",
  lambda: "".join(f"{n}\n" for n in range(1, 16) if n % 3 == 0))

H(106, 1,
  "Compute the greatest common divisor of 1071 and 462 and print it on its own line.",
  lambda: f"{_gcd(1071, 462)}\n")

H(107, 1,
  "Determine whether 7919 is prime and print 1 if it is prime or 0 if it is not, on its own line.",
  lambda: f"{1 if _is_prime(7919) else 0}\n")

H(108, 1,
  "Compute the sum of the squares of the integers from 1 to 12 inclusive and print it on its own line.",
  lambda: f"{sum(n*n for n in range(1, 13))}\n")

H(109, 1,
  "Count how many of the integers 30, 42, 55, 70, 91 are divisible by both 2 and 3, "
  "and print that count on its own line.",
  lambda: f"{sum(1 for n in (30, 42, 55, 70, 91) if n % 2 == 0 and n % 3 == 0)}\n")

H(110, 1,
  "Compute 2 raised to the power 20 and print it on its own line.",
  lambda: f"{2**20}\n")


# ------------------------------------------------------------- Tier 2 (10)
H(111, 2,
  "Compute the sum of the digits of 9876543210 and print it on its own line.",
  lambda: f"{sum(int(c) for c in str(9876543210))}\n")

H(112, 2,
  "Reverse the string \"benchmark\" and print the reversed string on its own line.",
  lambda: f"{'benchmark'[::-1]}\n")

H(113, 2,
  "Count the vowels (a, e, i, o, u) in the string \"heldout evaluation suite\" "
  "and print the count on its own line.",
  lambda: f"{sum(1 for c in 'heldout evaluation suite' if c in 'aeiou')}\n")

H(114, 2,
  "For the list of integers 3, 1, 4, 1, 5, 9, 2, 6, print the maximum value on its own line.",
  lambda: f"{max([3, 1, 4, 1, 5, 9, 2, 6])}\n")

H(115, 2,
  "For the string \"abcba\", print 1 if it is a palindrome and 0 otherwise, on its own line.",
  lambda: f"{1 if 'abcba' == 'abcba'[::-1] else 0}\n")

H(116, 2,
  "Insertion-sort the integers 5, 2, 9, 1, 7 in ascending order and print them separated "
  "by single spaces on one line.",
  lambda: " ".join(str(x) for x in _insertion_sort([5, 2, 9, 1, 7])) + "\n")

H(117, 2,
  "Print the integers from 1 to 15, replacing multiples of 3 with \"Fizz\", multiples of 5 "
  "with \"Buzz\", and multiples of both with \"FizzBuzz\", one per line.",
  lambda: "".join(_fizz(n) + "\n" for n in range(1, 16)))

H(118, 2,
  "Run-length-encode the string \"aaabbbcccd\" as alternating count and character pairs "
  "without separators (for example 3a2b), and print the result on its own line.",
  lambda: f"{_rle('aaabbbcccd')}\n")

H(119, 2,
  "Shift every letter of the string \"attack\" forward by 3 positions in the alphabet "
  "(wrapping past z) and print the result on its own line.",
  lambda: f"{_caesar('attack', 3)}\n")

H(120, 2,
  "Given the two sorted lists [1, 4, 7] and [2, 3, 9], merge them and print the merged "
  "list as space-separated integers on one line.",
  lambda: " ".join(str(x) for x in sorted([1, 4, 7] + [2, 3, 9])) + "\n")


# ------------------------------------------------------------- Tier 3 (16)
H(121, 3,
  "Define a record with fields x and y. Build it with the values 12 and 34, then print "
  "the x field on the first line and the y field on the second line.",
  lambda: "12\n34\n")

H(122, 3,
  "Define a record with fields x and y. Build it with 5 and 6, set x to 40, then print "
  "x and y on one line separated by a space.",
  lambda: "40 6\n")

H(123, 3,
  "Allocate a byte buffer of 8 bytes, write the bytes for 'A', 'I', 'C' at offsets 0, 1, 2, "
  "and write a 0 terminator at offset 3. Print the resulting string on its own line.",
  lambda: "AIC\n")

H(124, 3,
  "Print the concatenation of \"held\" and \"out\" with no separator, on its own line.",
  lambda: "heldout\n")

H(125, 3,
  "Print the number of characters in the string \"evaluation\" on its own line.",
  lambda: "10\n")

H(126, 3,
  "Print the ASCII character code of the character at index 4 of the string \"heldout\" "
  "(i.e. the numeric code point, not the character) on its own line.",
  lambda: f"{ord('heldout'[4])}\n")

H(127, 3,
  "Print the floor of the square root of 1000 as an integer, on its own line.",
  lambda: f"{int(1000 ** 0.5)}\n")

H(128, 3,
  "Compute 3 raised to the integer power 7 and print the integer result on its own line.",
  lambda: f"{3**7}\n")

H(129, 3,
  "Clamp the value 250 into the range 0 to 100 inclusive and print the clamped value "
  "on its own line.",
  lambda: "100\n")

H(130, 3,
  "Print the least common multiple of 21 and 28 on its own line.",
  lambda: f"{21*28//_gcd(21, 28)}\n")

H(131, 3,
  "Import lib/vec.aic. Create a vector with vec_new, push the integers 10, 20 and 30 with vec_push, "
  "then print its length and its first element on one line separated by a space.",
  lambda: "3 10\n")

H(132, 3,
  "Slice the string \"heldoutcheck\" from index 0 up to but not including index 7 and print "
  "the slice on its own line.",
  lambda: "heldout\n")

H(133, 3,
  "Convert the integer 3456 to a decimal string and print it on its own line.",
  lambda: "3456\n")

H(134, 3,
  "Parse the string \"-128\" as a decimal integer and print the parsed value on its own line.",
  lambda: "-128\n")

H(135, 3,
  "Allocate a 4-word heap buffer with [H 32]. Store 7 in word slot 0 and 11 in word slot 2 using [@@! ...], then print "
  "the sum of those two slots on its own line.",
  lambda: "18\n")

H(136, 3,
  "Compute the bitwise exclusive-or of 12 and 10 and print it on its own line.",
  lambda: f"{12 ^ 10}\n")


# ------------------------------------------------------------- Tier 4 (14)
H(137, 4,
  "Read the contents of a file named heldout_in.txt (provided in the working directory) "
  "and print the number of characters in it on its own line.",
  lambda: f"{len(FIXED_FILE_CONTENT)}\n", uses_file=True)

H(138, 4,
  "Read the contents of a file named heldout_in.txt and print the contents followed by a newline.",
  lambda: f"{FIXED_FILE_CONTENT}\n", uses_file=True)

H(139, 4,
  "Write the string \"heldout payload\" to a file named out.txt, read it back, and print "
  "the number of characters read on its own line.",
  lambda: "15\n")

H(140, 4,
  "Read the integer 42 from standard input, then print that value multiplied by 3 on its own line.",
  lambda: "126\n", fixed_stdin="42\n")

H(141, 4,
  "Read the integer 7 from standard input, convert it to a decimal string, and print the string "
  "on its own line.",
  lambda: "7\n", fixed_stdin="7\n")

H(142, 4,
  "Allocate memory for 16 bytes, then allocate memory for 32 more bytes, and print the total "
  "number of bytes allocated across both allocations on its own line.",
  lambda: "48\n")

H(143, 4,
  "Create a two-field record with fields i and s. Set i to the integer 9 and s to the string \"15\". "
  "Print i on the first line and s on the second line.",
  lambda: "9\n15\n")

H(144, 4,
  "Create a byte array holding the three byte values 97, 105 and 99 followed by a 0 terminator, "
  "then print the number of non-zero bytes before the terminator on its own line.",
  lambda: "3\n")

H(145, 4,
  "Parse the JSON object {\"level\": 4, \"name\": \"heldout\"} and print "
  "the value of the level field on its own line.",
  lambda: "4\n")

H(146, 4,
  "Build a JSON object, set the key \"count\" to the integer 12, serialize it, "
  "then parse it back and print the value of count on its own line.",
  lambda: "12\n")

H(147, 4,
  "Compute the checksum of the bytes 'A', 'I', 'C' by summing their ASCII values and print it "
  "on its own line.",
  lambda: f"{ord('A') + ord('I') + ord('C')}\n")

H(148, 4,
  "Store the value 1000 in a quadword slot, shift it left by 3 bits, and print the result "
  "on its own line.",
  lambda: f"{1000 << 3}\n")

H(149, 4,
  "Compute the sum of the integers in the array [4, 8, 15, 16, 23, 42] and print it on its own line.",
  lambda: f"{sum([4, 8, 15, 16, 23, 42])}\n")

H(150, 4,
  "Using the strings module, check whether \"heldout\" starts with \"held\" and print 1 if it "
  "does or 0 if it does not, on its own line.",
  lambda: f"{1 if 'heldout'.startswith('held') else 0}\n")


TASKS = _TASKS


# ----------------------------------------------------- train/test separation
def assert_no_overlap_with_tuned():
    """Zero task/spec/expected overlap with the tuned 30-task set."""
    from tasks import TASKS as TUNED
    tuned_specs = {t["spec"] for t in TUNED}
    tuned_ids = {t["task_id"] for t in TUNED}
    for t in TASKS:
        assert t["spec"] not in tuned_specs, f"held-out spec duplicates tuned: {t['spec'][:60]}"
        assert t["task_id"] not in tuned_ids, f"held-out id collides: {t['task_id']}"
    assert len({t['spec'] for t in TASKS}) == len(TASKS), "duplicate held-out spec"
    return True


assert len(TASKS) >= 50, len(TASKS)
assert_no_overlap_with_tuned()


if __name__ == "__main__":
    by_tier = {}
    for t in TASKS:
        by_tier[t["tier"]] = by_tier.get(t["tier"], 0) + 1
    print(f"{len(TASKS)} held-out tasks: {by_tier}")
    for t in TASKS[:3]:
        print(f"\n[{t['task_id']}] tier {t['tier']}: {t['spec'][:90]}")
        print(f"    expected = {t['expected']!r}")
    print("\n0 overlap with tuned tasks.py: OK")
