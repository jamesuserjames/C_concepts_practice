# ✨ Pattern Programming Training

60 progressively harder C pattern-printing exercises across five categories. Each exercise has an **empty function**, an expected-output example, self-contained tests, and learning questions. Complete them in numbered order.

## 📁 Structure

| Folder | Exercises | Focus |
| --- | ---: | --- |
| `00_basic_patterns/` | 12 | Lines, squares, rows, and simple triangles |
| `01_alignment_and_triangles/` | 12 | Alignment, symmetry, pyramids, diamonds |
| `02_hollow_shapes/` | 12 | Borders, diagonals, and hollow outlines |
| `03_numbers_and_letters/` | 12 | Counting, letter sequences, Pascal and Floyd |
| `04_advanced_patterns/` | 12 | Spirals, fractals, recursion, and waves |

## 🎯 Learning Goals

Practice `write()`, loops, nested loops, conditions, ASCII arithmetic, formatting, recursion, and small algorithms. The printing exercises should be implemented with `write()`; `printf()` in the tests is for displaying test labels only.

## ⚙️ Reset Exercises

**Warning:** Reset scripts **overwrite your completed exercise code** with empty implementations. They do not create directories.

```bash
bash 00_basic_patterns/create_exercises.sh  # Reset one category
bash reset_folders.sh                        # Reset all five categories
```

## 🧪 Testing

Implement the empty function before executing its test main. For example:

```bash
cc -Wall -Wextra -Wno-unused-parameter 00_basic_patterns/00_ft_print_square.c -o test.out
./test.out
rm test.out
```

When your implementation is finished, compile with `-Wall -Wextra -Werror`. While the function is empty, the unused parameter may require `-Wno-unused-parameter`. Compare the output (including leading spaces and newlines) against the `EXPECTED OUTPUT` comment. Tests are **not executable before the empty functions are implemented**.

## 📚 Final Challenge

Finish `04_advanced_patterns/` in order. Each exercise is independent; no official final-project sources are required for this standalone topic.
