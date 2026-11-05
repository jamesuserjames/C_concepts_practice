#include <unistd.h>
#include <stdlib.h>
#include <stdarg.h>
#include <limits.h>
#include <stddef.h>
#include <stdint.h>

char *ft_handle_malloc_error(int len)
{
	
}

#include <stdio.h>
#include <string.h>

int main(void) {
char *s;
s = ft_handle_malloc_error(3);
printf("Test 1: %d\n", s != NULL && s[0] == 0 && s[3] == 0);
free(s);
s = ft_handle_malloc_error(0);
printf("Test 2: %d\n", s != NULL && s[0] == 0);
free(s);
printf("Test 3: %d\n", ft_handle_malloc_error(-1) == NULL);
return (0);
}

/*
ALLOWED FUNCTIONS:
malloc, free for implementation; test main may use libc.

GOAL:
Allocate len+1 zero-initialized bytes (NULL for negative len).

EXPLANATION:
Allocate len+1 zero-initialized bytes (NULL for negative len).

TODO:
1. Understand the function contract and test inputs.
2. Check allocation and zero each byte; caller owns returned memory.
3. Handle boundaries and errors as documented.
4. Compare outputs with EXPECTED OUTPUT below.

EXPECTED OUTPUT:
Test 1: 1
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
