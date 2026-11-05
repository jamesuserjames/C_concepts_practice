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
