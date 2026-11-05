# 01 File Descriptors

Solve functions one at a time. Every `.c` contains a blank implementation, test `main()`, and expected results.

```bash
bash 01_file_descriptors/create_exercises.sh
```

## Exercises

- **`ft_read_stdin.c`** — Read from standard input (fd 0) and terminate the buffer.
- **`ft_read_file.c`** — Read a supplied file descriptor into a bounded NUL-terminated buffer.
- **`ft_check_fd.c`** — Check a file descriptor with a zero-byte read.
- **`ft_read_error.c`** — Translate read results into 1 (data), 0 (EOF), or -1 (error).

> The generator does not overwrite existing `.c` solutions. Implementation functions should be ≤25 lines and use only the allowed functions shown in each file.
