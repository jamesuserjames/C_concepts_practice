# 08 Bonus Practice

Solve functions one at a time. Every `.c` contains a blank implementation, test `main()`, and expected results.

```bash
bash 08_bonus_practice/create_exercises.sh
```

## Exercises

- **`ft_multiple_fds.c`** — Read one byte from each supplied fd; return their unsigned-byte sum.
- **`ft_fd_stash.c`** — Keep a separate running total for each fd 0..15.
- **`ft_interleaved_reads.c`** — Read alternating bytes from two fds until both hit EOF.

> The generator does not overwrite existing `.c` solutions. Implementation functions should be ≤25 lines and use only the allowed functions shown in each file.
