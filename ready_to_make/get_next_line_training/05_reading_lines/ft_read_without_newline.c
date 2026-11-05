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
