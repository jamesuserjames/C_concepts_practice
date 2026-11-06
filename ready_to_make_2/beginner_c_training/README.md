# 💻 Beginner C — Basic Output Training

30 progressive C exercises focused on writing characters, digits, strings, and formatted output with `write()`.

## 📁 Structure

```text
beginner_c_training/
├── README.md
├── reset_folders.sh
└── 00_basic_output/
    ├── 00_ft_print_a.c
    ├── ...
    ├── 29_ft_print_formatted_line.c
    └── create_exercises.sh
```

## 🎯 Learning Goals

| Exercises | Focus |
| --- | --- |
| 00–05 | Individual characters and `write()` |
| 06–11 | Alphabet and ASCII case |
| 12–17 | Digits and two-digit output |
| 18–23 | Strings and character traversal |
| 24–29 | ASCII codes, hexadecimal, escaping, formatting |

Each exercise contains an **empty implementation**, a goal, a guided TODO, expected output, a runnable test `main()`, and learning questions. Only `write()` is allowed in exercise implementations; `printf()` and `fflush()` are **test-only**.

## ⚙️ Reset Exercises

Reset the 30 basic-output exercises:

```bash
bash 00_basic_output/create_exercises.sh
```

Or use the master reset script:

```bash
bash reset_folders.sh
```

**Warning:** Resetting deliberately overwrites your exercise solutions. Back up work you want to keep.

## 🧪 Testing

After implementing an exercise, compile it with:

```bash
cc -Wall -Wextra -Werror 00_basic_output/02_ft_print_char.c -o test.out
./test.out
rm test.out
```

Empty non-void exercise functions intentionally aren't runnable solutions; implement them before executing their tests. This is a training collection rather than an official 42 submission.
