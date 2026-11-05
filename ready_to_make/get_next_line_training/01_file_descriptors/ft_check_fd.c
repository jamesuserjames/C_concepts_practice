#include <unistd.h>
#include <stdlib.h>
#include <stdarg.h>
#include <limits.h>
#include <stddef.h>
#include <stdint.h>

int ft_check_fd(int fd)
{
	
}

#include <stdio.h>
#include <string.h>

int main(void) {
printf("Test 1: %d\n", ft_check_fd(0));
printf("Test 2: %d\n", ft_check_fd(-1));
printf("Test 3: %d\n", ft_check_fd(1));
return (0);
}

/*
ALLOWED FUNCTIONS:
read for implementation; test main may use libc.

GOAL:
Check a file descriptor with a zero-byte read.

EXPLANATION:
Check a file descriptor with a zero-byte read.

TODO:
1. Understand the function contract and test inputs.
2. Return 1 if read(fd, buffer, 0) succeeds, -1 if it fails. Zero-byte calls do not guarantee later reads.
3. Handle boundaries and errors as documented.
4. Compare outputs with EXPECTED OUTPUT below.

EXPECTED OUTPUT:
Test 1: 1
Test 2: -1
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
