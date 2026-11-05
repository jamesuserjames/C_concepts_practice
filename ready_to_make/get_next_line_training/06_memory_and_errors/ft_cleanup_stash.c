#include <unistd.h>
#include <stdlib.h>
#include <stdarg.h>
#include <limits.h>
#include <stddef.h>
#include <stdint.h>

void ft_cleanup_stash(char **stash)
{
	
}

#include <stdio.h>
#include <string.h>

int main(void) {
char *p;
p = malloc(4);
if (!p) return (1);
ft_cleanup_stash(&p);
printf("Test 1: %d\n", p == NULL);
ft_cleanup_stash(&p);
printf("Test 2: %d\n", p == NULL);
ft_cleanup_stash(NULL);
printf("Test 3: ok\n");
return (0);
}

/*
ALLOWED FUNCTIONS:
free for implementation; test main may use libc.

GOAL:
Release heap stash and set it to NULL.

EXPLANATION:
Release heap stash and set it to NULL.

TODO:
1. Understand the function contract and test inputs.
2. Handle repeated calls safely and guard NULL pointer-to-pointer.
3. Handle boundaries and errors as documented.
4. Compare outputs with EXPECTED OUTPUT below.

EXPECTED OUTPUT:
Test 1: 1
Test 2: 1
Test 3: ok

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
