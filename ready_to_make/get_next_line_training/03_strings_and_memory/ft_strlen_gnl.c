#include <unistd.h>
#include <stdlib.h>
#include <stdarg.h>
#include <limits.h>
#include <stddef.h>
#include <stdint.h>

int ft_strlen_gnl(const char *str)
{
	
}

#include <stdio.h>
#include <string.h>

int main(void) {
printf("Test 1: %d\n", ft_strlen_gnl("Hello"));
printf("Test 2: %d\n", ft_strlen_gnl(""));
printf("Test 3: %d\n", ft_strlen_gnl("a\nb"));
printf("Test 4: %d\n", ft_strlen_gnl(NULL));
return (0);
}

/*
ALLOWED FUNCTIONS:
none for implementation; test main may use libc.

GOAL:
Count the characters in a NUL-terminated string.

EXPLANATION:
Count the characters in a NUL-terminated string.

TODO:
1. Understand the function contract and test inputs.
2. Treat NULL as length 0 for this training exercise.
3. Handle boundaries and errors as documented.
4. Compare outputs with EXPECTED OUTPUT below.

EXPECTED OUTPUT:
Test 1: 5
Test 2: 0
Test 3: 3
Test 4: 0

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
