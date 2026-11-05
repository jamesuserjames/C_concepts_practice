# 📖 Get Next Line — Concept Training

A progressive C exercise collection built around the **42 School get_next_line (Version 12)** project. Start with `read()`, learn static state and memory handling, then assemble a buffered line reader.

## 📁 Structure

| Folder | Focus |
| --- | --- |
| `00_read_basics` | `read()`, byte counts, newline handling |
| `01_file_descriptors` | stdin, fd validity, EOF and errors |
| `02_static_variables` | persistent state across function calls |
| `03_strings_and_memory` | string utilities, allocation and cleanup |
| `04_buffer_management` | newline detection, stash, remainder |
| `05_reading_lines` | lines, long lines, missing final newline |
| `06_memory_and_errors` | EOF, read failure, allocation, cleanup |
| `07_integrations` | mini / simple / buffered GNL |
| `08_bonus_practice` | multiple fds, separated state |
| `09_final_project` | clean mandatory and bonus submission scaffolds |

Each concept folder includes ready-to-solve `.c` exercises and an independent `create_exercises.sh` generator.

## ⚙️ Generate exercises

```bash
bash run_exercises.sh
# Or only one section:
bash 04_buffer_management/create_exercises.sh
```

**Existing `.c` files are never overwritten**, so your solutions are safe. If you want to regenerate a specific exercise, move or delete that particular `.c` file first.

## 🧪 Solve & test

The function body starts empty (with one blank tab-indented line). A `main()` at the bottom provides several sample calls and an `EXPECTED OUTPUT` comment.

```bash
cc -Wall -Wextra -Werror 02_static_variables/ft_static_counter.c -o test.out
./test.out
rm test.out
```

For `ft_buffer_size.c`, compare different values:

```bash
cc -Wall -Wextra -Werror -D BUFFER_SIZE=1 04_buffer_management/ft_buffer_size.c -o test.out
./test.out
```

The test harness may use `printf`, `pipe`, `dup2`, `strlen`, or `free` **only in the test section**. Implementation functions are restricted to the allowed functions stated in each exercise. Test helpers may exceed 25 lines; actual exercise implementations should stay within the 42 Norm limit.

## 🎯 Exercise format

Every file includes: allowed functions, goal, explanation, TODO, expected output, edge cases, learning checks, and `main()` tests. Most test files are standalone; integration drills may be substantially harder than earlier exercises. Keep your implementation clean, under **25 lines per function**, and check all `read()`/allocation return values.

## 📌 Project requirements (Version 12)

Required files: `get_next_line.c`, `get_next_line_utils.c`, `get_next_line.h`. Allowed external functions: `read`, `malloc`, `free`. Return one allocated line per call, including `\n` if it occurs; return `NULL` at EOF or on error. Compile both with and without `-D BUFFER_SIZE=n`. The mandatory project forbids libft, `lseek`, and globals. Bonus: one static variable and multiple simultaneous file descriptors.

Read your official subject before submission. The `09_final_project/` folder is intentionally a scaffold, **not a finished or tested submission**.

## 🧠 Learning sequence

`read → file descriptors → static → strings → buffers → lines → errors → integration → bonus`

> These exercises are educational scaffolds. A matching sample output is not proof of correctness on all inputs; use memory checkers and test small/large buffer sizes, invalid fds, empty files, long lines, and missing final newline.
