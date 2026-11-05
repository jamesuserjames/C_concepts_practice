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
