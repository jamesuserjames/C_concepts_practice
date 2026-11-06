# 📖 Get Next Line Training

Concept-based C practice for the 42 **Get Next Line** project. Work from the smallest `read()` exercises toward line extraction, persistent buffers, and multiple file descriptors.

## 📁 Learning Path

| Folder | Focus |
| --- | --- |
| `00_read_basics` | `read()`, return values, NUL termination, newlines |
| `01_file_descriptors` | Valid/invalid descriptors, files, standard input |
| `02_static_variables` | State preserved across calls |
| `03_strings_and_memory` | Helpers, allocation, strings, cleanup |
| `04_buffer_management` | Stash, newline extraction, remaining bytes |
| `05_reading_lines` | Complete lines, EOF, long lines |
| `06_memory_and_errors` | Error paths, cleanup, allocation failure |
| `07_integrations` | Mini, simple, and full GNL drills |
| `08_bonus_practice` | Multiple FDs and interleaved reads |
| `09_final_project` | Official mandatory and bonus filenames |

Exercises are numbered `00_`, `01_`, etc. **Solve them in order**. Each `.c` file has an empty implementation, a GOAL/TODO/EXPECTED OUTPUT block, readable test helpers when needed, a test `main()`, and an EDGE CASES/LEARNING CHECK/NOTE block.

## ⚙️ Reset Exercises

Reset just one topic:

```bash
bash 00_read_basics/create_exercises.sh
```

Reset **every** training topic:

```bash
bash reset_folders.sh
```

**Warning:** Both commands deliberately **overwrite existing exercise files**. Commit your solutions first if you want to keep them. Reset scripts never create folders or modify `09_final_project`.

## 🧪 Compile and Test

After implementing an exercise:

```bash
cc -Wall -Wextra -Werror 00_read_basics/02_ft_read_buffer.c -o test.out
./test.out
```

Test mains use helpers like `printf()`, `pipe()`, and `close()` **only for testing**. Observe the exercise's specified allowed functions for its implementation. Empty functions intentionally aren't ready for `-Werror` compilation. Test mains may be longer than the project submission's 25-line limit for clarity.

## 🎯 Final Project

Follow the supplied 42 subject: `get_next_line(int fd)`, return the line including `\n` when present, or `NULL` on EOF/error. Use `read`, `malloc`, `free`, and test multiple `BUFFER_SIZE` settings. Bonus exercises cover interleaved file descriptors. Official submission filenames in `09_final_project` are intentionally unnumbered.

## ✍️ Code Layout

Each exercise follows **includes → empty exercise function → goal/TODO/expected output → test helpers (if needed) → readable test `main()` → edge cases/learning check**. Test helpers are for testing only.

Test setups use pipes to avoid external fixture files; they validate setup failures and free allocated lines. The exercise implementations are intentionally incomplete, so compile after filling them in.
