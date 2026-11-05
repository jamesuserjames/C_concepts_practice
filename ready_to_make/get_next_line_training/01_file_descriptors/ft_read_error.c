#include <unistd.h>
#include <stdlib.h>
#include <stdarg.h>
#include <limits.h>
#include <stddef.h>
#include <stdint.h>

int ft_read_error(int fd)
{
	
}

#include <stdio.h>
#include <string.h>

int main(void) {
int p[2];
pipe(p);
write(p[1], "X", 1);
close(p[1]);
printf("Test 1: %d\n", ft_read_error(p[0]));
printf("Test 2: %d\n", ft_read_error(p[0]));
close(p[0]);
printf("Test 3: %d\n", ft_read_error(-1));
return (0);
}

/*
ALLOWED FUNCTIONS:
read for implementation; test main may use libc.

GOAL:
Translate read results into 1 (data), 0 (EOF), or -1 (error).

EXPLANATION:
Translate read results into 1 (data), 0 (EOF), or -1 (error).

TODO:
1. Understand the function contract and test inputs.
2. Read a single byte; distinguish all three read outcomes.
3. Handle boundaries and errors as documented.
4. Compare outputs with EXPECTED OUTPUT below.

EXPECTED OUTPUT:
Test 1: 1
Test 2: 0
Test 3: -1

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
