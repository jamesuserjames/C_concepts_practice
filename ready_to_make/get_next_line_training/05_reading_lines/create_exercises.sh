#!/usr/bin/env bash
set -euo pipefail
DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

if [[ ! -e "$DIR/ft_read_line.c" ]]; then
	cat > "$DIR/ft_read_line.c" <<'GNL_EXERCISE_EOF'
#include <unistd.h>
#include <stdlib.h>
#include <stdarg.h>
#include <limits.h>
#include <stddef.h>
#include <stdint.h>

char *ft_read_line(int fd)
{
	
}

#include <stdio.h>
#include <string.h>

static void test_one(const char *s) {
int p[2];
char *line;
pipe(p);
write(p[1], s, strlen(s));
close(p[1]);
line = ft_read_line(p[0]);
printf("[%s]", line ? line : "NULL");
free(line);
line = ft_read_line(p[0]);
printf("[second:%s]\n", line ? line : "NULL");
free(line);
close(p[0]);
}
int main(void) {
printf("Test 1: ");
test_one("Hi\n");
printf("Test 2: ");
test_one("tail");
printf("Test 3: ");
test_one("");
return (0);
}

/*
ALLOWED FUNCTIONS:
read, malloc, free for implementation; test main may use libc.

GOAL:
Read and allocate one line from a file descriptor.

EXPLANATION:
Read and allocate one line from a file descriptor.

TODO:
1. Understand the function contract and test inputs.
2. Read one byte at a time; stop at newline or EOF; return NULL on empty EOF.
3. Handle boundaries and errors as documented.
4. Compare outputs with EXPECTED OUTPUT below.

EXPECTED OUTPUT:
Test 1: [Hi
][second:NULL]
Test 2: [tail][second:NULL]
Test 3: [NULL][second:NULL]

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
	echo "Created ft_read_line.c"
else
	echo "Skipped ft_read_line.c (already exists)"
fi

if [[ ! -e "$DIR/ft_read_multiple_lines.c" ]]; then
	cat > "$DIR/ft_read_multiple_lines.c" <<'GNL_EXERCISE_EOF'
#include <unistd.h>
#include <stdlib.h>
#include <stdarg.h>
#include <limits.h>
#include <stddef.h>
#include <stdint.h>

int ft_read_multiple_lines(int fd)
{
	
}

#include <stdio.h>
#include <string.h>

static int test_one(const char *s) {
int p[2];
int ret;
pipe(p);
write(p[1], s, strlen(s));
close(p[1]);
ret = ft_read_multiple_lines(p[0]);
close(p[0]);
return (ret);
}
int main(void) {
printf("Test 1: %d\n", test_one("a\nb\n"));
printf("Test 2: %d\n", test_one("a\nb"));
printf("Test 3: %d\n", test_one(""));
return (0);
}

/*
ALLOWED FUNCTIONS:
read for implementation; test main may use libc.

GOAL:
Count lines in a file descriptor (including an unterminated last line).

EXPLANATION:
Count lines in a file descriptor (including an unterminated last line).

TODO:
1. Understand the function contract and test inputs.
2. Read one byte at a time until EOF; return -1 on read error.
3. Handle boundaries and errors as documented.
4. Compare outputs with EXPECTED OUTPUT below.

EXPECTED OUTPUT:
Test 1: 2
Test 2: 2
Test 3: 0

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
	echo "Created ft_read_multiple_lines.c"
else
	echo "Skipped ft_read_multiple_lines.c (already exists)"
fi

if [[ ! -e "$DIR/ft_read_long_line.c" ]]; then
	cat > "$DIR/ft_read_long_line.c" <<'GNL_EXERCISE_EOF'
#include <unistd.h>
#include <stdlib.h>
#include <stdarg.h>
#include <limits.h>
#include <stddef.h>
#include <stdint.h>

int ft_read_long_line(int fd)
{
	
}

#include <stdio.h>
#include <string.h>

static int test_one(const char *s) {
int p[2];
int ret;
pipe(p);
write(p[1], s, strlen(s));
close(p[1]);
ret = ft_read_long_line(p[0]);
close(p[0]);
return (ret);
}
int main(void) {
printf("Test 1: %d\n", test_one("abcdefghij\nx"));
printf("Test 2: %d\n", test_one("tail"));
printf("Test 3: %d\n", test_one(""));
return (0);
}

/*
ALLOWED FUNCTIONS:
read for implementation; test main may use libc.

GOAL:
Count bytes in the first line, even if it exceeds a small buffer.

EXPLANATION:
Count bytes in the first line, even if it exceeds a small buffer.

TODO:
1. Understand the function contract and test inputs.
2. Read one byte at a time and include newline; return -1 on error.
3. Handle boundaries and errors as documented.
4. Compare outputs with EXPECTED OUTPUT below.

EXPECTED OUTPUT:
Test 1: 11
Test 2: 4
Test 3: 0

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
	echo "Created ft_read_long_line.c"
else
	echo "Skipped ft_read_long_line.c (already exists)"
fi

if [[ ! -e "$DIR/ft_read_without_newline.c" ]]; then
	cat > "$DIR/ft_read_without_newline.c" <<'GNL_EXERCISE_EOF'
#include <unistd.h>
#include <stdlib.h>
#include <stdarg.h>
#include <limits.h>
#include <stddef.h>
#include <stdint.h>

int ft_read_without_newline(int fd)
{
	
}

#include <stdio.h>
#include <string.h>

static int test_one(const char *s) {
int p[2];
int ret;
pipe(p);
write(p[1], s, strlen(s));
close(p[1]);
ret = ft_read_without_newline(p[0]);
close(p[0]);
return (ret);
}
int main(void) {
printf("Test 1: %d\n", test_one("abc\ndef"));
printf("Test 2: %d\n", test_one("tail"));
printf("Test 3: %d\n", test_one("\n"));
return (0);
}

/*
ALLOWED FUNCTIONS:
read for implementation; test main may use libc.

GOAL:
Count bytes up to newline or EOF, excluding newline itself.

EXPLANATION:
Count bytes up to newline or EOF, excluding newline itself.

TODO:
1. Understand the function contract and test inputs.
2. Consume newline when present, but do not include it in the count.
3. Handle boundaries and errors as documented.
4. Compare outputs with EXPECTED OUTPUT below.

EXPECTED OUTPUT:
Test 1: 3
Test 2: 4
Test 3: 0

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
	echo "Created ft_read_without_newline.c"
else
	echo "Skipped ft_read_without_newline.c (already exists)"
fi

