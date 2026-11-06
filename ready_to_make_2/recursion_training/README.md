# 🧠 Recursion Training

**60 C exercises** in five progressively harder categories. Each exercise has an empty implementation, a test `main()`, exact expected output, and four learning questions.

## 📁 Structure

| Folder | Exercises | Concepts |
| --- | ---: | --- |
| `00_recursion_basics/` | 12 | Base cases, counting, arithmetic, recursive returns |
| `01_recursive_strings/` | 12 | Pointer advancement, string processing, unwinding |
| `02_recursive_arrays/` | 12 | Array slices, recursion with indices, searching |
| `03_recursive_math/` | 12 | Branching recursion and number theory |
| `04_advanced_recursion/` | 12 | Output, backtracking, sorting, pathfinding |

Exercises within **each folder restart at `00_`** and are ordered by increasing challenge.

## 🎯 Learning goals

Master recursion base cases, return-value accumulation, recursive state, stack unwinding, divide-and-conquer and backtracking. These are independent practice exercises, not a prescribed 42 submission.

## ⚙️ Reset exercises

> **Warning:** Resetting permanently overwrites your answers in the exercise `.c` files. Save your work elsewhere first.

Reset one category:

```bash
bash 01_recursive_strings/create_exercises.sh
```

Reset all categories:

```bash
bash reset_folders.sh
```

The generators never create directories and never change files outside their own category.

## 🧪 Testing

After implementing an exercise, compile and run it from the project root:

```bash
cc -Wall -Wextra -Werror 00_recursion_basics/00_ft_recursive_countdown_sum.c -o test.out
./test.out
rm test.out
```

`printf()` in test mains is **test-only**; follow each exercise's allowed-function requirements in your implementation. The exercise functions are intentionally empty, so do not run their tests until you implement them. Some exercises need your own small static helper functions to keep implementations under 25 lines.

## 📚 Final exercises

The last category introduces branching, flood fill, maze solving, merge sort, quicksort and N-Queens. Finish them after the basic, string, array and math practice.
