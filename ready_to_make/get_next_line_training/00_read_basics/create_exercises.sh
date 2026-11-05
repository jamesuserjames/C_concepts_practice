#!/usr/bin/env bash
set -euo pipefail
DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

if [[ ! -e "$DIR/ft_read_char.c" ]]; then
	cat > "$DIR/ft_read_char.c" <<'GNL_EXERCISE_EOF'
#include <unistd.h>
#include <stdlib.h>
#include <stdarg.h>
#include <limits.h>
#include <stddef.h>
#include <stdint.h>

int ft_read_char(int fd, char *out)
{
	
}

#include <stdio.h>
#include <string.h>

int main(void) {
int p[2];
char c = '?';
int ret;
pipe(p);
write(p[1], "AB", 2);
close(p[1]);
ret = ft_read_char(p[0], &c);
printf("Test 1: %d %c\n", ret, c);
ret = ft_read_char(p[0], &c);
printf("Test 2: %d %c\n", ret, c);
printf("Test 3: %d\n", ft_read_char(p[0], &c));
close(p[0]);
printf("Test 4: %d\n", ft_read_char(-1, &c));
return (0);
}

/*
ALLOWED FUNCTIONS:
read for implementation; test main may use libc.

GOAL:
Read one byte into out; return read result (1, 0 or -1).

EXPLANATION:
Read one byte into out; return read result (1, 0 or -1).

TODO:
1. Understand the function contract and test inputs.
2. Call read once with a one-byte buffer; do not treat EOF as an error.
3. Handle boundaries and errors as documented.
4. Compare outputs with EXPECTED OUTPUT below.

EXPECTED OUTPUT:
Test 1: 1 A
Test 2: 1 B
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
	echo "Created ft_read_char.c"
else
	echo "Skipped ft_read_char.c (already exists)"
fi

if [[ ! -e "$DIR/ft_read_bytes.c" ]]; then
	cat > "$DIR/ft_read_bytes.c" <<'GNL_EXERCISE_EOF'
#include <unistd.h>
#include <stdlib.h>
#include <stdarg.h>
#include <limits.h>
#include <stddef.h>
#include <stdint.h>

int ft_read_bytes(int fd, char *out, int len)
{
	
}

#include <stdio.h>
#include <string.h>

int main(void) {
int p[2];
char s[8] = {
0}
;
int ret;
pipe(p);
write(p[1], "abcdef", 6);
close(p[1]);
ret = ft_read_bytes(p[0], s, 3);
printf("Test 1: %d [%.*s]\n", ret, ret > 0 ? ret : 0, s);
ret = ft_read_bytes(p[0], s, 6);
printf("Test 2: %d [%.*s]\n", ret, ret > 0 ? ret : 0, s);
printf("Test 3: %d\n", ft_read_bytes(p[0], s, 2));
close(p[0]);
printf("Test 4: %d\n", ft_read_bytes(-1, s, 2));
return (0);
}

/*
ALLOWED FUNCTIONS:
read for implementation; test main may use libc.

GOAL:
Read up to len bytes into out and return the read count.

EXPLANATION:
Read up to len bytes into out and return the read count.

TODO:
1. Understand the function contract and test inputs.
2. Handle len <= 0 without accessing the buffer; make one read call otherwise.
3. Handle boundaries and errors as documented.
4. Compare outputs with EXPECTED OUTPUT below.

EXPECTED OUTPUT:
Test 1: 3 [abc]
Test 2: 3 [def]
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
	echo "Created ft_read_bytes.c"
else
	echo "Skipped ft_read_bytes.c (already exists)"
fi

if [[ ! -e "$DIR/ft_read_buffer.c" ]]; then
	cat > "$DIR/ft_read_buffer.c" <<'GNL_EXERCISE_EOF'
#include <unistd.h>
#include <stdlib.h>
#include <stdarg.h>
#include <limits.h>
#include <stddef.h>
#include <stdint.h>

int ft_read_buffer(int fd, char *out, int capacity)
{
	
}

#include <stdio.h>
#include <string.h>

int main(void) {
int p[2];
char s[6];
int ret;
pipe(p);
write(p[1], "hello!", 6);
close(p[1]);
ret = ft_read_buffer(p[0], s, 4);
printf("Test 1: %d [%s]\n", ret, s);
ret = ft_read_buffer(p[0], s, 6);
printf("Test 2: %d [%s]\n", ret, s);
printf("Test 3: %d\n", ft_read_buffer(p[0], s, 6));
close(p[0]);
printf("Test 4: %d\n", ft_read_buffer(-1, s, 6));
return (0);
}

/*
ALLOWED FUNCTIONS:
read for implementation; test main may use libc.

GOAL:
Read at most capacity - 1 bytes and NUL-terminate the data.

EXPLANATION:
Read at most capacity - 1 bytes and NUL-terminate the data.

TODO:
1. Understand the function contract and test inputs.
2. If capacity <= 0 return -1; preserve the number of bytes read.
3. Handle boundaries and errors as documented.
4. Compare outputs with EXPECTED OUTPUT below.

EXPECTED OUTPUT:
Test 1: 3 [hel]
Test 2: 3 [lo!]
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
	echo "Created ft_read_buffer.c"
else
	echo "Skipped ft_read_buffer.c (already exists)"
fi

if [[ ! -e "$DIR/ft_read_until_newline.c" ]]; then
	cat > "$DIR/ft_read_until_newline.c" <<'GNL_EXERCISE_EOF'
#include <unistd.h>
#include <stdlib.h>
#include <stdarg.h>
#include <limits.h>
#include <stddef.h>
#include <stdint.h>

int ft_read_until_newline(int fd, char *out, int capacity)
{
	
}

#include <stdio.h>
#include <string.h>

int main(void) {
int p[2];
char s[16];
int ret;
pipe(p);
write(p[1], "ab\ncd", 5);
close(p[1]);
ret = ft_read_until_newline(p[0], s, 16);
printf("Test 1: %d [%s]\n", ret, s);
ret = ft_read_until_newline(p[0], s, 16);
printf("Test 2: %d [%s]\n", ret, s);
ret = ft_read_until_newline(p[0], s, 16);
printf("Test 3: %d [%s]\n", ret, s);
close(p[0]);
return (0);
}

/*
ALLOWED FUNCTIONS:
read for implementation; test main may use libc.

GOAL:
Read one byte at a time until newline, EOF, or buffer full.

EXPLANATION:
Read one byte at a time until newline, EOF, or buffer full.

TODO:
1. Understand the function contract and test inputs.
2. Return the bytes stored; preserve the newline when found; terminate with NUL.
3. Handle boundaries and errors as documented.
4. Compare outputs with EXPECTED OUTPUT below.

EXPECTED OUTPUT:
Test 1: 3 [ab
]
Test 2: 2 [cd]
Test 3: 0 []

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
	echo "Created ft_read_until_newline.c"
else
	echo "Skipped ft_read_until_newline.c (already exists)"
fi

