# 06 Memory And Errors

Solve functions one at a time. Every `.c` contains a blank implementation, test `main()`, and expected results.

```bash
bash 06_memory_and_errors/create_exercises.sh
```

## Exercises

- **`ft_handle_eof.c`** — Return 0 on EOF, 1 on data, -1 on read error.
- **`ft_handle_read_error.c`** — Read one byte, returning -1 for failure or actual number read otherwise.
- **`ft_handle_malloc_error.c`** — Allocate len+1 zero-initialized bytes (NULL for negative len).
- **`ft_cleanup_stash.c`** — Release heap stash and set it to NULL.

> The generator does not overwrite existing `.c` solutions. Implementation functions should be ≤25 lines and use only the allowed functions shown in each file.
