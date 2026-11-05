#include <unistd.h>
#include <stdlib.h>
#include <stdarg.h>
#include <limits.h>
#include <stddef.h>
#include <stdint.h>

char ft_static_char(char c)
{
	
}

#include <stdio.h>
#include <string.h>

int main(void) {
printf("Test 1: %d\n", (int)ft_static_char('A'));
printf("Test 2: %c\n", ft_static_char('B'));
printf("Test 3: %c\n", ft_static_char('C'));
return (0);
}

/*
ALLOWED FUNCTIONS:
none for implementation; test main may use libc.

GOAL:
Return the previous input character (initially NUL), then remember c.

EXPLANATION:
Return the previous input character (initially NUL), then remember c.

TODO:
1. Understand the function contract and test inputs.
2. Use a static char and update it after saving the previous value.
3. Handle boundaries and errors as documented.
4. Compare outputs with EXPECTED OUTPUT below.

EXPECTED OUTPUT:
Test 1: 0
Test 2: A
Test 3: B

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
