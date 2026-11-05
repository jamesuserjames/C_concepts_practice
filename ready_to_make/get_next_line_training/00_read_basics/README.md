# 00 Read Basics

Solve functions one at a time. Every `.c` contains a blank implementation, test `main()`, and expected results.

```bash
bash 00_read_basics/create_exercises.sh
```

## Exercises

- **`ft_read_char.c`** — Read one byte into out; return read result (1, 0 or -1).
- **`ft_read_bytes.c`** — Read up to len bytes into out and return the read count.
- **`ft_read_buffer.c`** — Read at most capacity - 1 bytes and NUL-terminate the data.
- **`ft_read_until_newline.c`** — Read one byte at a time until newline, EOF, or buffer full.

> The generator does not overwrite existing `.c` solutions. Implementation functions should be ≤25 lines and use only the allowed functions shown in each file.
