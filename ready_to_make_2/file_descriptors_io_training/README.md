# 📂 File Descriptors & I/O Training

60 self-contained C exercises covering Unix file descriptors, `read`, `write`, files, offsets, pipes, redirection, and robust streaming. Work in numeric order; each function begins empty.

## 📁 Structure

| Folder | Exercises | Focus |
| --- | ---: | --- |
| `00_fd_fundamentals` | 12 | Standard descriptors, byte output, reading, `dup`, `close` |
| `01_read_and_write` | 12 | Partial reads, EOF, lines, streaming counts and copies |
| `02_files_and_offsets` | 12 | `open`, flags, `lseek`, offset positioning, writing to files |
| `03_pipes_and_redirection` | 12 | `pipe`, `dup2`, EOF, redirected streams and pipelines |
| `04_advanced_io` | 12 | Robust transfers, allocated lines, binary records, checksums |

## 🎯 Learning goals

Distinguish EOF (`0`) from errors (`-1`), avoid descriptor leaks, use correct buffer capacities, and understand how streams and regular files differ. Test helpers may use `printf`, `mkstemp`, and other POSIX functions; practice-function requirements appear in each GOAL/TODO block. For C submissions governed by an official 42 subject, follow that subject's allowed-function rules instead.

## ⚙️ Reset exercises

**Warning:** these scripts overwrite your solutions without asking.

```bash
bash 00_fd_fundamentals/create_exercises.sh
bash reset_folders.sh
```

Each folder generator writes its own twelve `.c` files and creates no directories.

## 🧪 Testing

```bash
cc -Wall -Wextra -Werror 00_fd_fundamentals/00_ft_write_char.c -o test.out
./test.out
rm -f test.out
```

Exercise functions are intentionally empty until implemented, so compiling with `-Werror` may initially report an unfinished-function warning. Complete the function before running its tests. Expected output is listed inside every exercise. Text inside brackets can span multiple lines when the exercise outputs newline bytes.

## 📚 Final goal

Combine these I/O techniques in future projects such as Get Next Line, command-line tools, file copiers, and pipe-based programs.
