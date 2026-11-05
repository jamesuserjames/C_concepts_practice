# 🖨️ ft_printf Training

Step-by-step exercises for rebuilding formatted output using **`write()`**, **`va_list`**, recursion, and correct return-value counting.

## 🧭 Learning Path

```text
00_write_and_returns/   → Writing bytes and checking errors
01_strings_and_null/    → Strings, empty strings, and NULL
02_base10_and_recursion/→ Signed/unsigned numbers and recursion
03_hex_and_bases/       → Hexadecimal and generic base printing
04_pointers/            → Addresses and %p
05_variadic_arguments/  → va_start, va_arg, va_end
06_format_parsing/      → Specifier recognition and dispatch
07_error_handling/      → Byte counts, errors, and partial writes
08_ft_mini_printf/      → Integrating a small printf
09_bonus_practice/      → Binary, octal, and additional checks
```

## 🎯 Goal

Move from small printing helpers to a working formatted-output implementation while understanding every return value.

## ⚙️ How to Practice

Each exercise generally has a C file with an implementation stub or solution, a test `main()`, and a comment describing the expected output. Some directories also contain `create_exercises.sh` scripts.

```bash
cd 00_write_and_returns
bash create_exercises.sh   # Only if you want to generate exercise files
cc -Wall -Wextra -Werror ft_write_char.c -o test.out
./test.out
```

**Check a generator before running it:** a script may recreate or overwrite exercise files. Back up solutions first.

## ✅ Conversion Checklist

`%c` · `%s` · `%p` · `%d` · `%i` · `%u` · `%x` · `%X` · `%%`

Print the correct output **and** return the number of bytes written, or `-1` when a write fails. In these drills, NULL strings use `(null)` and NULL pointers use `(nil)`.

## 🧠 Style

Keep implementation functions small (aim for ≤25 lines), avoid unnecessary variables, and check errors throughout recursive calls.

> Training and bonus exercises are separate from the final 42 `ft_printf` project. Passing included tests is not proof of full correctness.
