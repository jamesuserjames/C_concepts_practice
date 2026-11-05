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
