#include <unistd.h>
#include <stdlib.h>
#include <stdarg.h>
#include <limits.h>
#include <stddef.h>
#include <stdint.h>

int ft_multiple_fds(int fd1, int fd2)
{
	
}

#include <stdio.h>
#include <string.h>

int main(void) {
int a[2];
int b[2];
pipe(a);
pipe(b);
write(a[1], "A", 1);
write(b[1], "B", 1);
close(a[1]);
close(b[1]);
printf("Test 1: %d\n", ft_multiple_fds(a[0], b[0]));
printf("Test 2: %d\n", ft_multiple_fds(a[0], b[0]));
close(a[0]);
close(b[0]);
return (0);
}

/*
ALLOWED FUNCTIONS:
read for implementation; test main may use libc.

GOAL:
Read one byte from each supplied fd; return their unsigned-byte sum.

EXPLANATION:
Read one byte from each supplied fd; return their unsigned-byte sum.

TODO:
1. Understand the function contract and test inputs.
2. Return -1 if either read fails or reaches EOF.
3. Handle boundaries and errors as documented.
4. Compare outputs with EXPECTED OUTPUT below.

EXPECTED OUTPUT:
Test 1: 131
Test 2: -1

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
