# 🧪 Testing checklist

**Compilation:** `cc -Wall -Wextra -Werror file.c -o test.out` after filling the function body.

**Reading:** test EOF (`read()` returns 0), invalid fd (`read()` returns -1), newlines, empty files, long lines, and stdin. Remember `read()` may return fewer bytes than requested.

**Allocations:** on failure, return `NULL`, avoid leaking old stash and buffers, ensure NUL termination, and free the returned line in callers. Memory ownership must remain clear.

**Buffer sizes:** compile with `-D BUFFER_SIZE=1`, `2`, `42`, `9999`, and without a flag. The buffered integrations need more testing than the small drills.

**Bonus:** interleave calls across separate descriptors and ensure no data leaks from one fd into another.

**Norm:** keep implementation functions ≤25 lines, at most five functions per source file in final project, and run your local `norminette`. The exercise test `main()` blocks are not intended for official submission.

**Note:** The tests cover representative inputs. They are not a comprehensive grading suite.
