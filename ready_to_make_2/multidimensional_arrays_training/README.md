# 🧊 Multidimensional Arrays Training

60 progressively harder C exercises on **2D and 3D arrays**, from indexing and traversal to matrix algorithms and cube operations. All exercises live in one folder.

## 📁 Structure

- `00_multidimensional_arrays/` — `00_`–`59_` exercise files and their reset generator.
- `reset_folders.sh` — resets the whole training folder.

## 🎯 Learning Goals

| Exercises | Topic |
|---|---|
| 00–09 | Basic 2D indexing, printing, and editing |
| 10–19 | Rows, columns, searches, and diagonals |
| 20–29 | Copying and transforming matrices |
| 30–39 | Matrix properties and arithmetic |
| 40–49 | Advanced matrix algorithms and rectangular arrays |
| 50–59 | 3D arrays, layers, and flattening |

## ⚙️ Reset Exercises

**Warning:** Resetting overwrites your answers with empty exercise functions.

```bash
bash 00_multidimensional_arrays/create_exercises.sh
bash reset_folders.sh
```

## 🧪 Testing

Implement an exercise function first, then compile and run its self-contained test:

```bash
cc -Wall -Wextra -Werror 00_multidimensional_arrays/03_ft_get_value.c -o test.out
./test.out
rm test.out
```

**Note:** Empty non-void function bodies are intentional and may trigger compiler warnings or undefined behavior if executed before implementation. `printf()` in `main()` is test-only, not permission to use it in the exercise function.

## 📚 Final Project

The advanced exercises combine traversal, transformations, and 3D indexing. This pack is general multidimensional-array practice, **not Rush01**.

## Expected output

Each exercise includes an `EXPECTED OUTPUT` block that matches the completed test program, including matrix layouts, labels, and blank lines. The exercises themselves may start empty; implement them before comparing output.
