#!/usr/bin/env python3
"""
tools/generate_dataset.py - AI Training Corpus & Synthetic Dataset Generator for AIC

Generates verified, multi-domain AIC training datasets in standard formats:
  - corpus/aic_instruct_dataset.jsonl (Instruction-Tuning with Chain-of-Thought)
  - corpus/aic_pretrain_stream.jsonl (Pretraining Document Stream)
  - corpus/tasks/*.aic (Individual verified source files)
"""

import sys
import os
import json
import subprocess
import shutil

# Ensure workspace root is on sys.path
BASE_DIR = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))
if BASE_DIR not in sys.path:
    sys.path.insert(0, BASE_DIR)

TASKS = [
    {
        "id": "math_factorial",
        "category": "math",
        "instruction": "Write an AIC function 'fact' that computes the factorial of non-negative integer n, returning 1 for n <= 1.",
        "thought": "We can implement factorial recursively or iteratively with while loop. In AIC, [W [> n 1] ...] with an accumulator produces efficient machine code without recursion overhead.",
        "code": """// Task: math_factorial
[import "lib/test.aic"]

[: fact [n] [D
  [! res 1]
  [! cur n]
  [W [> cur 1] [D
    [! res [* res cur]]
    [! cur [- cur 1]]
  ]]
  [^ res]
]]

[! runner [test_runner_init]]
[test_assert_eq runner [fact 0] 1 "fact(0) == 1"]
[test_assert_eq runner [fact 1] 1 "fact(1) == 1"]
[test_assert_eq runner [fact 5] 120 "fact(5) == 120"]
[test_assert_eq runner [fact 7] 5040 "fact(7) == 5040"]
[test_summary runner]
"""
    },
    {
        "id": "math_fibonacci_dp",
        "category": "math",
        "instruction": "Write an AIC function 'fib' that computes the nth Fibonacci number in O(n) time using two accumulator variables.",
        "thought": "Iterative Fibonacci maintains two variables: a = 0, b = 1. In each step of a bounded loop [@> n [i] ...], we compute temp = a + b, a = b, b = temp.",
        "code": """// Task: math_fibonacci_dp
[import "lib/test.aic"]

[: fib [n] [D
  [? [<= n 0] [^ 0] [D]]
  [? [== n 1] [^ 1] [D]]
  [! a 0]
  [! b 1]
  [@> [- n 1] [i] [D
    [! next [+ a b]]
    [! a b]
    [! b next]
  ]]
  [^ b]
]]

[! runner [test_runner_init]]
[test_assert_eq runner [fib 0] 0 "fib(0) == 0"]
[test_assert_eq runner [fib 1] 1 "fib(1) == 1"]
[test_assert_eq runner [fib 7] 13 "fib(7) == 13"]
[test_assert_eq runner [fib 10] 55 "fib(10) == 55"]
[test_summary runner]
"""
    },
    {
        "id": "math_is_prime",
        "category": "math",
        "instruction": "Write an AIC function 'is_prime' that tests if integer n is prime using trial division up to sqrt(n).",
        "thought": "Numbers <= 1 are not prime. 2 and 3 are prime. Even numbers > 2 are composite. For odd d from 3 with d*d <= n, test if n % d == 0.",
        "code": """// Task: math_is_prime
[import "lib/test.aic"]

[: is_prime [n] [D
  [? [<= n 1] [^ 0] [D]]
  [? [|| [== n 2] [== n 3]] [^ 1] [D]]
  [? [== [% n 2] 0] [^ 0] [D]]
  [! d 3]
  [! prime 1]
  [W [&& prime [<= [* d d] n]] [D
    [? [== [% n d] 0] [! prime 0] [D]]
    [! d [+ d 2]]
  ]]
  [^ prime]
]]

[! runner [test_runner_init]]
[test_assert_eq runner [is_prime 1] 0 "1 is not prime"]
[test_assert_eq runner [is_prime 2] 1 "2 is prime"]
[test_assert_eq runner [is_prime 17] 1 "17 is prime"]
[test_assert_eq runner [is_prime 25] 0 "25 is not prime"]
[test_assert_eq runner [is_prime 97] 1 "97 is prime"]
[test_summary runner]
"""
    },
    {
        "id": "math_collatz_length",
        "category": "math",
        "instruction": "Write an AIC function 'collatz_len' that computes the number of steps for n to reach 1 under the 3x+1 Collatz rule.",
        "thought": "While n > 1: if n is even, n = n / 2; if odd, n = 3*n + 1. Count each transition and return the step count.",
        "code": """// Task: math_collatz_length
[import "lib/test.aic"]

[: collatz_len [n] [D
  [! steps 0]
  [! x n]
  [W [> x 1] [D
    [? [== [& x 1] 0]
      [! x [/ x 2]]
      [! x [+ [* 3 x] 1]]]
    [! steps [+ steps 1]]
  ]]
  [^ steps]
]]

[! runner [test_runner_init]]
[test_assert_eq runner [collatz_len 1] 0 "collatz_len(1) == 0"]
[test_assert_eq runner [collatz_len 2] 1 "collatz_len(2) == 1"]
[test_assert_eq runner [collatz_len 6] 8 "collatz_len(6) == 8"]
[test_assert_eq runner [collatz_len 12] 9 "collatz_len(12) == 9"]
[test_summary runner]
"""
    },
    {
        "id": "algo_binary_search",
        "category": "algorithms",
        "instruction": "Write an AIC function 'binary_search' that searches for a target integer in a sorted 64-bit word buffer, returning its index or -1.",
        "thought": "Maintain low = 0 and high = len - 1. While low <= high: mid = (low + high) / 2. Read word at mid with [@@ buf mid]. If target matches, return mid. Adjust low or high accordingly.",
        "code": """// Task: algo_binary_search
[import "lib/test.aic"]

[: binary_search [[$ buf] len target] [D
  [! lo 0]
  [! hi [- len 1]]
  [! found -1]
  [W [&& [== found -1] [<= lo hi]] [D
    [! mid [/ [+ lo hi] 2]]
    [! val [@@ buf mid]]
    [? [== val target] [D
      [! found mid]
    ] [? [< val target] [D
      [! lo [+ mid 1]]
    ] [D
      [! hi [- mid 1]]
    ]]]
  ]]
  [^ found]
]]

[! runner [test_runner_init]]
[! arr [H [* 5 8]]]
[@@! arr 0 10]
[@@! arr 1 20]
[@@! arr 2 30]
[@@! arr 3 40]
[@@! arr 4 50]

[test_assert_eq runner [binary_search arr 5 30] 2 "find 30 at index 2"]
[test_assert_eq runner [binary_search arr 5 10] 0 "find 10 at index 0"]
[test_assert_eq runner [binary_search arr 5 50] 4 "find 50 at index 4"]
[test_assert_eq runner [binary_search arr 5 99] -1 "99 not found"]
[test_summary runner]
"""
    },
    {
        "id": "algo_bubble_sort",
        "category": "algorithms",
        "instruction": "Write an AIC function 'bubble_sort' to sort a 64-bit integer word buffer in-place in ascending order.",
        "thought": "Use nested loops: outer loop runs len times; inner loop compares adjacent elements [@@ buf j] and [@@ buf (+ j 1)], swapping them if out of order.",
        "code": """// Task: algo_bubble_sort
[import "lib/test.aic"]

[: bubble_sort [[$ buf] len] [D
  [@> len [i] [D
    [! limit [- [- len i] 1]]
    [@> limit [j] [D
      [! a [@@ buf j]]
      [! b [@@ buf [+ j 1]]]
      [? [> a b] [D
        [@@! buf j b]
        [@@! buf [+ j 1] a]
      ] [D]]
    ]]
  ]]
  [^ 0]
]]

[! runner [test_runner_init]]
[! arr [H [* 5 8]]]
[@@! arr 0 45]
[@@! arr 1 12]
[@@! arr 2 89]
[@@! arr 3 34]
[@@! arr 4 23]

[bubble_sort arr 5]

[test_assert_eq runner [@@ arr 0] 12 "sorted[0] == 12"]
[test_assert_eq runner [@@ arr 1] 23 "sorted[1] == 23"]
[test_assert_eq runner [@@ arr 2] 34 "sorted[2] == 34"]
[test_assert_eq runner [@@ arr 3] 45 "sorted[3] == 45"]
[test_assert_eq runner [@@ arr 4] 89 "sorted[4] == 89"]
[test_summary runner]
"""
    },
    {
        "id": "algo_reverse_array",
        "category": "algorithms",
        "instruction": "Write an AIC function 'reverse_words' that reverses an array of 64-bit words in-place.",
        "thought": "Two pointers: i = 0, j = len - 1. While i < j: swap elements at i and j, then increment i and decrement j.",
        "code": """// Task: algo_reverse_array
[import "lib/test.aic"]

[: reverse_words [[$ buf] len] [D
  [! i 0]
  [! j [- len 1]]
  [W [< i j] [D
    [! a [@@ buf i]]
    [! b [@@ buf j]]
    [@@! buf i b]
    [@@! buf j a]
    [! i [+ i 1]]
    [! j [- j 1]]
  ]]
  [^ 0]
]]

[! runner [test_runner_init]]
[! arr [H [* 4 8]]]
[@@! arr 0 100]
[@@! arr 1 200]
[@@! arr 2 300]
[@@! arr 3 400]

[reverse_words arr 4]

[test_assert_eq runner [@@ arr 0] 400 "reversed[0] == 400"]
[test_assert_eq runner [@@ arr 1] 300 "reversed[1] == 300"]
[test_assert_eq runner [@@ arr 2] 200 "reversed[2] == 200"]
[test_assert_eq runner [@@ arr 3] 100 "reversed[3] == 100"]
[test_summary runner]
"""
    },
    {
        "id": "algo_kadane_max_subarray",
        "category": "algorithms",
        "instruction": "Write an AIC function 'max_subarray_sum' implementing Kadane's algorithm to find the maximum contiguous subarray sum.",
        "thought": "Keep max_so_far = buf[0] and cur_max = buf[0]. For i from 1 to len-1: cur_max = max(buf[i], cur_max + buf[i]); max_so_far = max(max_so_far, cur_max).",
        "code": """// Task: algo_kadane_max_subarray
[import "lib/test.aic"]
[import "lib/math.aic"]

[: max_subarray [[$ buf] len] [D
  [! max_so_far [@@ buf 0]]
  [! cur_max [@@ buf 0]]
  [@> 1 len [i] [D
    [! val [@@ buf i]]
    [! cur_max [math_max val [+ cur_max val]]]
    [! max_so_far [math_max max_so_far cur_max]]
  ]]
  [^ max_so_far]
]]

[! runner [test_runner_init]]
[! arr [H [* 6 8]]]
[@@! arr 0 -2]
[@@! arr 1 1]
[@@! arr 2 -3]
[@@! arr 3 4]
[@@! arr 4 -1]
[@@! arr 5 2]

[test_assert_eq runner [max_subarray arr 6] 5 "max subarray [4, -1, 2] is 5"]
[test_summary runner]
"""
    },
    {
        "id": "string_is_palindrome",
        "category": "string",
        "instruction": "Write an AIC function 'is_palindrome' that checks if an ASCII string reads the same backwards as forwards.",
        "thought": "Length is [L s]. Set i = 0 and j = len - 1. While i < j: check if [@ s i] == [@ s j]. If mismatch, return 0. Return 1 at end.",
        "code": """// Task: string_is_palindrome
[import "lib/test.aic"]
[import "lib/string.aic"]

[: is_palindrome [[$ s]] [D
  [! n [L s]]
  [! i 0]
  [! j [- n 1]]
  [! ok 1]
  [W [&& ok [< i j]] [D
    [? [!= [@ s i] [@ s j]] [! ok 0] [D]]
    [! i [+ i 1]]
    [! j [- j 1]]
  ]]
  [^ ok]
]]

[! runner [test_runner_init]]
[test_assert_eq runner [is_palindrome "racecar"] 1 "'racecar' is palindrome"]
[test_assert_eq runner [is_palindrome "madam"] 1 "'madam' is palindrome"]
[test_assert_eq runner [is_palindrome "aic"] 0 "'aic' is not palindrome"]
[test_assert_eq runner [is_palindrome "a"] 1 "'a' is palindrome"]
[test_summary runner]
"""
    },
    {
        "id": "string_reverse_alloc",
        "category": "string",
        "instruction": "Write an AIC function 'str_reverse' that allocates and returns a newly reversed copy of string s.",
        "thought": "Allocate len+1 bytes with [H n]. Loop i from 0 to n-1: write [@ s (- (- n 1) i)] to out[i]. Null-terminate out[n] = 0.",
        "code": """// Task: string_reverse_alloc
[import "lib/test.aic"]
[import "lib/string.aic"]

[: [$ str_reverse] [[$ s]] [D
  [! n [L s]]
  [! out [H n]]
  [@> n [i] [D
    [! src_idx [- [- n 1] i]]
    [@! out i [@ s src_idx]]
  ]]
  [@! out n 0]
  [^ out]
]]

[! runner [test_runner_init]]
[! rev [str_reverse "Hello"]]
[test_assert_str_eq runner rev "olleH" "reversed Hello is olleH"]
[! rev_empty [str_reverse ""]]
[test_assert_str_eq runner rev_empty "" "reversed empty is empty"]
[test_summary runner]
"""
    },
    {
        "id": "vec_filter_evens",
        "category": "vector",
        "instruction": "Write an AIC function 'vec_filter_evens' that takes a Vec of integers and returns a new Vec containing only even numbers.",
        "thought": "Iterate over elements with [vec_get v i]. If element & 1 == 0, [vec_push out val]. Return the new vector.",
        "code": """// Task: vec_filter_evens
[import "lib/test.aic"]
[import "lib/vec.aic"]

[: [$ vec_filter_evens] [[$ v]] [D
  [! n [vec_len v]]
  [! out [vec_new 4]]
  [@> n [i] [D
    [! val [vec_get v i]]
    [? [== [& val 1] 0] [D
      [vec_push out val]
    ] [D]]
  ]]
  [^ out]
]]

[! runner [test_runner_init]]
[! v [vec_new 4]]
[vec_push v 1]
[vec_push v 2]
[vec_push v 3]
[vec_push v 4]
[vec_push v 5]
[vec_push v 6]

[! evens [vec_filter_evens v]]
[test_assert_eq runner [vec_len evens] 3 "3 even numbers"]
[test_assert_eq runner [vec_get evens 0] 2 "first even is 2"]
[test_assert_eq runner [vec_get evens 1] 4 "second even is 4"]
[test_assert_eq runner [vec_get evens 2] 6 "third even is 6"]
[test_summary runner]
"""
    },
    {
        "id": "map_word_count",
        "category": "map",
        "instruction": "Write an AIC test demonstrating Map frequency tracking for key-value entries.",
        "thought": "Using lib/map.aic, initialize a map with [map_new 8]. For each key, read previous count with [map_get m k], increment by 1, and write with [map_set m k (+ count 1)].",
        "code": """// Task: map_word_count
[import "lib/test.aic"]
[import "lib/map.aic"]

[: map_inc [[$ m] [$ key]] [D
  [! cur [map_get m key]]
  [map_set m key [+ cur 1]]
  [^ [+ cur 1]]
]]

[! runner [test_runner_init]]
[! m [map_new 8]]
[map_inc m "apple"]
[map_inc m "banana"]
[map_inc m "apple"]
[map_inc m "apple"]

[test_assert_eq runner [map_get m "apple"] 3 "apple count is 3"]
[test_assert_eq runner [map_get m "banana"] 1 "banana count is 1"]
[test_assert_eq runner [map_get m "orange"] 0 "orange count is 0"]
[test_summary runner]
"""
    },
    {
        "id": "json_tool_call_parser",
        "category": "json",
        "instruction": "Write an AIC function that parses an AI tool-call JSON string and verifies the command and arguments.",
        "thought": "Use [json_parse src], check [json_obj_contains root \"tool\"], and inspect parameters.",
        "code": """// Task: json_tool_call_parser
[import "lib/test.aic"]
[import "lib/json.aic"]

[! runner [test_runner_init]]

[! payload [json_obj]]
[json_obj_set payload "tool" [json_str "compile"]]
[json_obj_set payload "timeout" [json_int 30]]

[! json_str_data [json_stringify payload]]
[! parsed [json_parse json_str_data]]

[test_assert_eq runner [json_tag parsed] 5 "parsed tag is OBJ"]
[test_assert_true runner [json_obj_contains parsed "tool"] "contains tool"]

[! tool_val [json_obj_get parsed "tool"]]
[test_assert_str_eq runner [json_get_str tool_val] "compile" "tool is compile"]

[! timeout_val [json_obj_get parsed "timeout"]]
[test_assert_eq runner [json_get_int timeout_val] 30 "timeout is 30"]

[test_summary runner]
"""
    },
    {
        "id": "arena_matrix_allocation",
        "category": "arena",
        "instruction": "Write an AIC program allocating contiguous matrix row buffers from an Arena and initializing values.",
        "thought": "Arena allocator allows allocating contiguous words with [arena_alloc_words a count]. We can allocate rows from the arena buffer.",
        "code": """// Task: arena_matrix_allocation
[import "lib/test.aic"]
[import "lib/arena.aic"]

[! runner [test_runner_init]]
[! a [arena_new 2048]]

// Allocate row 0 (3 words) and row 1 (3 words)
[! r0_off [arena_alloc_words a 3]]
[! r1_off [arena_alloc_words a 3]]

[! buf [arena_buffer a]]
[@@! buf r0_off 11]
[@@! buf [+ r0_off 1] 12]
[@@! buf [+ r0_off 2] 13]

[@@! buf r1_off 21]
[@@! buf [+ r1_off 1] 22]
[@@! buf [+ r1_off 2] 23]

[test_assert_eq runner [@@ buf r0_off] 11 "r0[0] == 11"]
[test_assert_eq runner [@@ buf [+ r0_off 2]] 13 "r0[2] == 13"]
[test_assert_eq runner [@@ buf r1_off] 21 "r1[0] == 21"]
[test_assert_eq runner [@@ buf [+ r1_off 2]] 23 "r1[2] == 23"]
[test_assert_eq runner [arena_used a] 48 "48 bytes used (6 * 8)"]

[test_summary runner]
"""
    },
    {
        "id": "math_gcd_lcm",
        "category": "math",
        "instruction": "Write an AIC test asserting math_gcd and math_lcm behavior on common number pairs.",
        "thought": "GCD computes greatest common divisor via Euclidean algorithm; LCM computes least common multiple.",
        "code": """// Task: math_gcd_lcm
[import "lib/test.aic"]
[import "lib/math.aic"]

[! runner [test_runner_init]]
[test_assert_eq runner [math_gcd 54 24] 6 "gcd(54, 24) == 6"]
[test_assert_eq runner [math_gcd 48 18] 6 "gcd(48, 18) == 6"]
[test_assert_eq runner [math_lcm 12 18] 36 "lcm(12, 18) == 36"]
[test_assert_eq runner [math_lcm 7 5] 35 "lcm(7, 5) == 35"]
[test_summary runner]
"""
    },
    {
        "id": "algo_insertion_sort",
        "category": "algorithms",
        "instruction": "Write an AIC function 'insertion_sort' to sort a 64-bit integer word buffer in ascending order.",
        "thought": "Iterate i from 1 to len-1. Save key = buf[i]. Shift elements greater than key to the right. Insert key at correct location.",
        "code": """// Task: algo_insertion_sort
[import "lib/test.aic"]

[: insertion_sort [[$ buf] len] [D
  [@> 1 len [i] [D
    [! key [@@ buf i]]
    [! j [- i 1]]
    [! loop 1]
    [W loop [D
      [? [< j 0] [! loop 0] [D
        [! prev [@@ buf j]]
        [? [> prev key] [D
          [@@! buf [+ j 1] prev]
          [! j [- j 1]]
        ] [D
          [! loop 0]
        ]]
      ]]
    ]]
    [@@! buf [+ j 1] key]
  ]]
  [^ 0]
]]

[! runner [test_runner_init]]
[! arr [H [* 5 8]]]
[@@! arr 0 64]
[@@! arr 1 25]
[@@! arr 2 12]
[@@! arr 3 22]
[@@! arr 4 11]

[insertion_sort arr 5]
[test_assert_eq runner [@@ arr 0] 11 "arr[0] == 11"]
[test_assert_eq runner [@@ arr 1] 12 "arr[1] == 12"]
[test_assert_eq runner [@@ arr 2] 22 "arr[2] == 22"]
[test_assert_eq runner [@@ arr 3] 25 "arr[3] == 25"]
[test_assert_eq runner [@@ arr 4] 64 "arr[4] == 64"]
[test_summary runner]
"""
    },
    {
        "id": "algo_two_sum_sorted",
        "category": "algorithms",
        "instruction": "Write an AIC function 'has_two_sum' checking if a sorted word buffer has two elements that sum to target.",
        "thought": "Use two pointers lo = 0 and hi = len - 1. If sum == target return 1; if sum < target lo++; else hi--.",
        "code": """// Task: algo_two_sum_sorted
[import "lib/test.aic"]

[: has_two_sum [[$ buf] len target] [D
  [! lo 0]
  [! hi [- len 1]]
  [! found 0]
  [W [&& [== found 0] [< lo hi]] [D
    [! s [+ [@@ buf lo] [@@ buf hi]]]
    [? [== s target] [! found 1]
      [? [< s target] [! lo [+ lo 1]] [! hi [- hi 1]]]]
  ]]
  [^ found]
]]

[! runner [test_runner_init]]
[! arr [H [* 5 8]]]
[@@! arr 0 2]
[@@! arr 1 7]
[@@! arr 2 11]
[@@! arr 3 15]
[@@! arr 4 20]

[test_assert_eq runner [has_two_sum arr 5 9] 1 "2 + 7 = 9"]
[test_assert_eq runner [has_two_sum arr 5 26] 1 "11 + 15 = 26"]
[test_assert_eq runner [has_two_sum arr 5 100] 0 "no pair sums to 100"]
[test_summary runner]
"""
    },
    {
        "id": "string_count_char",
        "category": "string",
        "instruction": "Write an AIC function 'count_char' counting occurrences of an ASCII byte in string s.",
        "thought": "Iterate i from 0 to len-1 with [@> n [i] ...]. If [@ s i] == ch, increment counter.",
        "code": """// Task: string_count_char
[import "lib/test.aic"]
[import "lib/string.aic"]

[: count_char [[$ s] ch] [D
  [! n [L s]]
  [! cnt 0]
  [@> n [i] [D
    [? [== [@ s i] ch] [! cnt [+ cnt 1]] [D]]
  ]]
  [^ cnt]
]]

[! runner [test_runner_init]]
[test_assert_eq runner [count_char "banana" 97] 3 "3 'a's in banana"]
[test_assert_eq runner [count_char "mississippi" 115] 4 "4 's's in mississippi"]
[test_assert_eq runner [count_char "aic" 122] 0 "0 'z's in aic"]
[test_summary runner]
"""
    },
    {
        "id": "vec_prefix_sum",
        "category": "vector",
        "instruction": "Write an AIC function 'vec_prefix_sums' that computes running prefix sums of a Vec.",
        "thought": "Create new Vec. Running sum starts at 0. For each element, running += elem, push running to out.",
        "code": """// Task: vec_prefix_sum
[import "lib/test.aic"]
[import "lib/vec.aic"]

[: [$ vec_prefix_sums] [[$ v]] [D
  [! n [vec_len v]]
  [! out [vec_new n]]
  [! running 0]
  [@> n [i] [D
    [! running [+ running [vec_get v i]]]
    [vec_push out running]
  ]]
  [^ out]
]]

[! runner [test_runner_init]]
[! v [vec_new 4]]
[vec_push v 3]
[vec_push v 1]
[vec_push v 4]
[vec_push v 2]

[! p [vec_prefix_sums v]]
[test_assert_eq runner [vec_get p 0] 3 "prefix 0 is 3"]
[test_assert_eq runner [vec_get p 1] 4 "prefix 1 is 4"]
[test_assert_eq runner [vec_get p 2] 8 "prefix 2 is 8"]
[test_assert_eq runner [vec_get p 3] 10 "prefix 3 is 10"]
[test_summary runner]
"""
    },
    {
        "id": "json_nested_query",
        "category": "json",
        "instruction": "Write an AIC test demonstrating deep JSON object nesting, serialization, and retrieval.",
        "thought": "Create nested JsonVal objects, serialize to string, parse back, and query child properties.",
        "code": """// Task: json_nested_query
[import "lib/test.aic"]
[import "lib/json.aic"]

[! runner [test_runner_init]]

[! meta [json_obj]]
[json_obj_set meta "agent" [json_str "Antigravity"]]
[json_obj_set meta "epoch" [json_int 2026]]

[! root [json_obj]]
[json_obj_set root "status" [json_str "ok"]]
[json_obj_set root "meta" meta]

[! raw [json_stringify root]]
[! parsed [json_parse raw]]

[! p_meta [json_obj_get parsed "meta"]]
[test_assert_eq runner [json_tag p_meta] 5 "nested meta is OBJ"]

[! p_agent [json_obj_get p_meta "agent"]]
[test_assert_str_eq runner [json_get_str p_agent] "Antigravity" "agent is Antigravity"]

[! p_epoch [json_obj_get p_meta "epoch"]]
[test_assert_eq runner [json_get_int p_epoch] 2026 "epoch is 2026"]
[test_summary runner]
"""
    }
]

def main():
    corpus_dir = os.path.join(BASE_DIR, "corpus")
    tasks_dir = os.path.join(corpus_dir, "tasks")
    os.makedirs(tasks_dir, exist_ok=True)

    print("=" * 70)
    print(f"AIC Synthetic Training Corpus & Benchmark Generator")
    print("=" * 70)

    instruct_records = []
    pretrain_records = []

    passed_count = 0
    total_count = len(TASKS)

    for task in TASKS:
        t_id = task["id"]
        filename = f"{t_id}.aic"
        src_path = os.path.join(tasks_dir, filename)
        with open(src_path, "w", encoding="utf-8") as f:
            f.write(task["code"])

        # Verify task compilation & execution
        asm_path = os.path.join(tasks_dir, f"{t_id}.s")
        exe_path = os.path.join(tasks_dir, f"{t_id}.exe")

        print(f"[*] Verifying task [{t_id}]...", end=" ", flush=True)

        # 1. Compile with aic.exe
        aic_exe = os.path.join(BASE_DIR, "aic.exe")
        c_res = subprocess.run([aic_exe, src_path, asm_path], capture_output=True, text=True, cwd=BASE_DIR)
        if c_res.returncode != 0:
            print(f"[FAIL COMPILATION]\n{c_res.stderr or c_res.stdout}")
            continue

        # 2. Package with aic_pe_emitter
        import tools.aic_pe_emitter as pe_emitter
        with open(asm_path, "r", encoding="utf-8") as f:
            asm_code = f.read()
        pe_emitter.build_standalone_pe(asm_code, exe_path)

        # 3. Execute and verify
        run_res = subprocess.run([exe_path], capture_output=True, text=True, cwd=BASE_DIR)
        out = run_res.stdout.replace("\r\n", "\n")

        # Cleanup binaries
        for f_del in [asm_path, exe_path]:
            if os.path.exists(f_del):
                try: os.remove(f_del)
                except: pass

        if "(ALL PASSED)" in out and run_res.returncode == 0:
            print("[PASS]")
            passed_count += 1
            task["verified"] = True
            instruct_records.append({
                "id": t_id,
                "category": task["category"],
                "instruction": task["instruction"],
                "thought": task["thought"],
                "code": task["code"].strip(),
                "verified": True
            })
            pretrain_records.append({
                "id": t_id,
                "text": f"// Instruction: {task['instruction']}\n// Architecture: AIC 4.0\n\n{task['code'].strip()}"
            })
        else:
            print(f"[FAIL RUNTIME]\nOutput: {out}")

    # Write instruction dataset
    instruct_path = os.path.join(corpus_dir, "aic_instruct_dataset.jsonl")
    with open(instruct_path, "w", encoding="utf-8") as f:
        for r in instruct_records:
            f.write(json.dumps(r) + "\n")

    # Write pretraining stream
    pretrain_path = os.path.join(corpus_dir, "aic_pretrain_stream.jsonl")
    with open(pretrain_path, "w", encoding="utf-8") as f:
        for r in pretrain_records:
            f.write(json.dumps(r) + "\n")

    print("\n" + "=" * 70)
    print(f"CORPUS GENERATION COMPLETE: {passed_count}/{total_count} TASKS VERIFIED NATIVELY.")
    print(f"Instruction Dataset : {instruct_path} ({os.path.getsize(instruct_path):,} bytes)")
    print(f"Pretraining Stream  : {pretrain_path} ({os.path.getsize(pretrain_path):,} bytes)")
    print(f"Verified Source Dir : {tasks_dir}")
    print("=" * 70)

if __name__ == "__main__":
    main()
