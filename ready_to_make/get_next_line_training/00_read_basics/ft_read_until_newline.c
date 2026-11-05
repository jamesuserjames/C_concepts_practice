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
