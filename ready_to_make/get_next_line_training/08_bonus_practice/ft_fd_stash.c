#include <unistd.h>
#include <stdlib.h>
#include <stdarg.h>
#include <limits.h>
#include <stddef.h>
#include <stdint.h>

int ft_fd_stash(int fd, int value)
{
	
}

#include <stdio.h>
#include <string.h>

int main(void) {
printf("Test 1: %d\n", ft_fd_stash(3, 5));
printf("Test 2: %d\n", ft_fd_stash(4, 7));
printf("Test 3: %d\n", ft_fd_stash(3, 2));
printf("Test 4: %d\n", ft_fd_stash(-1, 1));
return (0);
}

/*
ALLOWED FUNCTIONS:
none for implementation; test main may use libc.

GOAL:
Keep a separate running total for each fd 0..15.

EXPLANATION:
Keep a separate running total for each fd 0..15.

TODO:
1. Understand the function contract and test inputs.
2. Return -1 for fd outside 0..15; use a single static array.
3. Handle boundaries and errors as documented.
4. Compare outputs with EXPECTED OUTPUT below.

EXPECTED OUTPUT:
Test 1: 5
Test 2: 7
Test 3: 7
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
