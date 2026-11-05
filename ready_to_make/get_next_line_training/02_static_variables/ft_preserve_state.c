#include <unistd.h>
#include <stdlib.h>
#include <stdarg.h>
#include <limits.h>
#include <stddef.h>
#include <stdint.h>

int ft_preserve_state(int reset)
{
	
}

#include <stdio.h>
#include <string.h>

int main(void) {
printf("Test 1: %d\n", ft_preserve_state(0));
printf("Test 2: %d\n", ft_preserve_state(0));
printf("Test 3: %d\n", ft_preserve_state(1));
printf("Test 4: %d\n", ft_preserve_state(0));
return (0);
}

/*
ALLOWED FUNCTIONS:
none for implementation; test main may use libc.

GOAL:
Maintain a call counter; reset to zero when reset is nonzero.

EXPLANATION:
Maintain a call counter; reset to zero when reset is nonzero.

TODO:
1. Understand the function contract and test inputs.
2. Keep state in a static local variable and do not increment during reset.
3. Handle boundaries and errors as documented.
4. Compare outputs with EXPECTED OUTPUT below.

EXPECTED OUTPUT:
Test 1: 1
Test 2: 2
Test 3: 0
Test 4: 1

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
