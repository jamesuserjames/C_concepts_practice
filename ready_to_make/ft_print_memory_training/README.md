# ft_print_memory — Ready to Make

Seven standalone 42/C02 practice exercises in the same order you learned them:

`00_hex_digit` → `01_hex_byte` → `02_hex_part` → `03_ascii_part` → `04_address` → `05_print_line` → `06_print_memory`.

Each `.c` file includes **empty function bodies**, a test `main()`, allowed functions, TODOs, and expected output. No solutions are included.

## Use

Open any exercise, implement its function(s), then compile and run:

```sh
cc -Wall -Wextra ft_print_hex_digit.c -o test && ./test
```

The empty starter functions may produce compiler warnings until implemented. `05_print_line` and `06_print_memory` intentionally include empty earlier helpers so the tests are self-contained.

To **reset all exercises** to their original empty state, run `bash create_exercises.sh` from this folder. **Warning:** this overwrites any solutions in the `.c` files.

The final public function is `void *ft_print_memory(void *addr, unsigned int size)`. Remove test `main()` before submission. Follow your school's Norm rules, including the limit on functions per `.c` file.
