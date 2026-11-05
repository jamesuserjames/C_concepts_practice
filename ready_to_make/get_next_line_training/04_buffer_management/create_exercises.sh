#!/usr/bin/env bash
set -euo pipefail
DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

if [[ ! -e "$DIR/ft_buffer_size.c" ]]; then
	cat > "$DIR/ft_buffer_size.c" <<'GNL_EXERCISE_EOF'
#include <unistd.h>
#include <stdlib.h>
#include <stdarg.h>
#include <limits.h>
#include <stddef.h>
#include <stdint.h>

#ifndef BUFFER_SIZE
# define BUFFER_SIZE 42
#endif

int ft_buffer_size(void)
{
	
}

#include <stdio.h>
#include <string.h>

int main(void) {
printf("Test 1: %d\n", ft_buffer_size());
printf("Test 2: %d\n", ft_buffer_size());
return (0);
}

/*
ALLOWED FUNCTIONS:
none for implementation; test main may use libc.

GOAL:
Return the configured BUFFER_SIZE (or a fallback of 42).

EXPLANATION:
Return the configured BUFFER_SIZE (or a fallback of 42).

TODO:
1. Understand the function contract and test inputs.
2. Use #ifndef BUFFER_SIZE and #define BUFFER_SIZE 42 before the function.
3. Handle boundaries and errors as documented.
4. Compare outputs with EXPECTED OUTPUT below.

EXPECTED OUTPUT:
Test 1: 42
Test 2: 42

EDGE CASES:
Inspect empty inputs, EOF, failures, and allocation ownership where relevant.

LEARNING CHECK:
1. What does each parameter represent?
2. What changes between calls?
3. Who must free any returned allocation?
4. Which test exposes an off-by-one error?

NOTE:
Function intentionally empty. Complete it before compiling with -Werror.
Keep implementation functions at or below 25 lines and respect 42 Norm.
*/
GNL_EXERCISE_EOF
	echo "Created ft_buffer_size.c"
else
	echo "Skipped ft_buffer_size.c (already exists)"
fi

if [[ ! -e "$DIR/ft_find_newline.c" ]]; then
	cat > "$DIR/ft_find_newline.c" <<'GNL_EXERCISE_EOF'
#include <unistd.h>
#include <stdlib.h>
#include <stdarg.h>
#include <limits.h>
#include <stddef.h>
#include <stdint.h>

int ft_find_newline(const char *str)
{
	
}

#include <stdio.h>
#include <string.h>

int main(void) {
printf("Test 1: %d\n", ft_find_newline("abc\ndef"));
printf("Test 2: %d\n", ft_find_newline("no newline"));
printf("Test 3: %d\n", ft_find_newline("\n"));
printf("Test 4: %d\n", ft_find_newline(NULL));
return (0);
}

/*
ALLOWED FUNCTIONS:
none for implementation; test main may use libc.

GOAL:
Find the index of the first newline, or -1 when absent.

EXPLANATION:
Find the index of the first newline, or -1 when absent.

TODO:
1. Understand the function contract and test inputs.
2. NULL input returns -1.
3. Handle boundaries and errors as documented.
4. Compare outputs with EXPECTED OUTPUT below.

EXPECTED OUTPUT:
Test 1: 3
Test 2: -1
Test 3: 0
Test 4: -1

EDGE CASES:
Inspect empty inputs, EOF, failures, and allocation ownership where relevant.

LEARNING CHECK:
1. What does each parameter represent?
2. What changes between calls?
3. Who must free any returned allocation?
4. Which test exposes an off-by-one error?

NOTE:
Function intentionally empty. Complete it before compiling with -Werror.
Keep implementation functions at or below 25 lines and respect 42 Norm.
*/
GNL_EXERCISE_EOF
	echo "Created ft_find_newline.c"
else
	echo "Skipped ft_find_newline.c (already exists)"
fi

if [[ ! -e "$DIR/ft_append_buffer.c" ]]; then
	cat > "$DIR/ft_append_buffer.c" <<'GNL_EXERCISE_EOF'
#include <unistd.h>
#include <stdlib.h>
#include <stdarg.h>
#include <limits.h>
#include <stddef.h>
#include <stdint.h>

char *ft_append_buffer(char *stash, const char *buffer)
{
	
}

#include <stdio.h>
#include <string.h>

int main(void) {
char *s;
char *next;
s = malloc(3);
if (!s) return (1);
s[0] = 'H';
s[1] = 'i';
s[2] = 0;
next = ft_append_buffer(s, "!");
if (!next) {
free(s);
return (1);
}
printf("Test 1: [%s]\n", next);
s = ft_append_buffer(next, "\n");
if (!s) {
free(next);
return (1);
}
printf("Test 2: [%s]", s);
free(s);
return (0);
}

/*
ALLOWED FUNCTIONS:
malloc, free for implementation; test main may use libc.

GOAL:
Append buffer to a heap-allocated stash, returning a new allocation.

EXPLANATION:
Append buffer to a heap-allocated stash, returning a new allocation.

TODO:
1. Understand the function contract and test inputs.
2. Free old stash only after a successful allocation; on failure leave old stash owned by caller.
3. Handle boundaries and errors as documented.
4. Compare outputs with EXPECTED OUTPUT below.

EXPECTED OUTPUT:
Test 1: [Hi!]
Test 2: [Hi!
]

EDGE CASES:
Inspect empty inputs, EOF, failures, and allocation ownership where relevant.

LEARNING CHECK:
1. What does each parameter represent?
2. What changes between calls?
3. Who must free any returned allocation?
4. Which test exposes an off-by-one error?

NOTE:
Function intentionally empty. Complete it before compiling with -Werror.
Keep implementation functions at or below 25 lines and respect 42 Norm.
*/
GNL_EXERCISE_EOF
	echo "Created ft_append_buffer.c"
else
	echo "Skipped ft_append_buffer.c (already exists)"
fi

if [[ ! -e "$DIR/ft_extract_line.c" ]]; then
	cat > "$DIR/ft_extract_line.c" <<'GNL_EXERCISE_EOF'
#include <unistd.h>
#include <stdlib.h>
#include <stdarg.h>
#include <limits.h>
#include <stddef.h>
#include <stdint.h>

char *ft_extract_line(const char *stash)
{
	
}

#include <stdio.h>
#include <string.h>

int main(void) {
char *p;
p = ft_extract_line("Hello\nWorld");
printf("Test 1: [%s]", p ? p : "NULL");
free(p);
p = ft_extract_line("tail");
printf("Test 2: [%s]\n", p ? p : "NULL");
free(p);
printf("Test 3: %d\n", ft_extract_line("") == NULL);
return (0);
}

/*
ALLOWED FUNCTIONS:
malloc, free for implementation; test main may use libc.

GOAL:
Copy through the first newline, or all of stash if no newline.

EXPLANATION:
Copy through the first newline, or all of stash if no newline.

TODO:
1. Understand the function contract and test inputs.
2. Return NULL for NULL or empty stash; allocate the returned line.
3. Handle boundaries and errors as documented.
4. Compare outputs with EXPECTED OUTPUT below.

EXPECTED OUTPUT:
Test 1: [Hello
]Test 2: [tail]
Test 3: 1

EDGE CASES:
Inspect empty inputs, EOF, failures, and allocation ownership where relevant.

LEARNING CHECK:
1. What does each parameter represent?
2. What changes between calls?
3. Who must free any returned allocation?
4. Which test exposes an off-by-one error?

NOTE:
Function intentionally empty. Complete it before compiling with -Werror.
Keep implementation functions at or below 25 lines and respect 42 Norm.
*/
GNL_EXERCISE_EOF
	echo "Created ft_extract_line.c"
else
	echo "Skipped ft_extract_line.c (already exists)"
fi

if [[ ! -e "$DIR/ft_save_remainder.c" ]]; then
	cat > "$DIR/ft_save_remainder.c" <<'GNL_EXERCISE_EOF'
#include <unistd.h>
#include <stdlib.h>
#include <stdarg.h>
#include <limits.h>
#include <stddef.h>
#include <stdint.h>

char *ft_save_remainder(const char *stash)
{
	
}

#include <stdio.h>
#include <string.h>

int main(void) {
char *p;
p = ft_save_remainder("Hello\nWorld");
printf("Test 1: [%s]\n", p ? p : "NULL");
free(p);
p = ft_save_remainder("Hello\n");
printf("Test 2: %d\n", p == NULL);
free(p);
p = ft_save_remainder("Hello");
printf("Test 3: %d\n", p == NULL);
free(p);
return (0);
}

/*
ALLOWED FUNCTIONS:
malloc, free for implementation; test main may use libc.

GOAL:
Copy characters after the first newline into a new allocation.

EXPLANATION:
Copy characters after the first newline into a new allocation.

TODO:
1. Understand the function contract and test inputs.
2. Return NULL if no newline or if nothing remains after newline.
3. Handle boundaries and errors as documented.
4. Compare outputs with EXPECTED OUTPUT below.

EXPECTED OUTPUT:
Test 1: [World]
Test 2: 1
Test 3: 1

EDGE CASES:
Inspect empty inputs, EOF, failures, and allocation ownership where relevant.

LEARNING CHECK:
1. What does each parameter represent?
2. What changes between calls?
3. Who must free any returned allocation?
4. Which test exposes an off-by-one error?

NOTE:
Function intentionally empty. Complete it before compiling with -Werror.
Keep implementation functions at or below 25 lines and respect 42 Norm.
*/
GNL_EXERCISE_EOF
	echo "Created ft_save_remainder.c"
else
	echo "Skipped ft_save_remainder.c (already exists)"
fi

