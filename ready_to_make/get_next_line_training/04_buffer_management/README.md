# 04 Buffer Management

Solve functions one at a time. Every `.c` contains a blank implementation, test `main()`, and expected results.

```bash
bash 04_buffer_management/create_exercises.sh
```

## Exercises

- **`ft_buffer_size.c`** — Return the configured BUFFER_SIZE (or a fallback of 42).
- **`ft_find_newline.c`** — Find the index of the first newline, or -1 when absent.
- **`ft_append_buffer.c`** — Append buffer to a heap-allocated stash, returning a new allocation.
- **`ft_extract_line.c`** — Copy through the first newline, or all of stash if no newline.
- **`ft_save_remainder.c`** — Copy characters after the first newline into a new allocation.

> The generator does not overwrite existing `.c` solutions. Implementation functions should be ≤25 lines and use only the allowed functions shown in each file.
