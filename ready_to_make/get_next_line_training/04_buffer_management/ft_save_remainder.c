#include <unistd.h>
#include <stdlib.h>
#include <stdarg.h>
#include <limits.h>
#include <stddef.h>
#include <stdint.h>

char *ft_save_remainder(const char *stash)
{
	
}

#include <stdio.h>
#include <string.h>

int main(void) {
char *p;
p = ft_save_remainder("Hello\nWorld");
printf("Test 1: [%s]\n", p ? p : "NULL");
free(p);
p = ft_save_remainder("Hello\n");
printf("Test 2: %d\n", p == NULL);
free(p);
p = ft_save_remainder("Hello");
printf("Test 3: %d\n", p == NULL);
free(p);
return (0);
}

/*
ALLOWED FUNCTIONS:
malloc, free for implementation; test main may use libc.

GOAL:
Copy characters after the first newline into a new allocation.

EXPLANATION:
Copy characters after the first newline into a new allocation.

TODO:
1. Understand the function contract and test inputs.
2. Return NULL if no newline or if nothing remains after newline.
3. Handle boundaries and errors as documented.
4. Compare outputs with EXPECTED OUTPUT below.

EXPECTED OUTPUT:
Test 1: [World]
Test 2: 1
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
