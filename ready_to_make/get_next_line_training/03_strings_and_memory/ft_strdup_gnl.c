#include <unistd.h>
#include <stdlib.h>
#include <stdarg.h>
#include <limits.h>
#include <stddef.h>
#include <stdint.h>

char *ft_strdup_gnl(const char *str)
{
	
}

#include <stdio.h>
#include <string.h>

int main(void) {
char *p;
p = ft_strdup_gnl("Hello");
printf("Test 1: [%s]\n", p ? p : "NULL");
free(p);
p = ft_strdup_gnl("");
printf("Test 2: [%s]\n", p ? p : "NULL");
free(p);
printf("Test 3: %d\n", ft_strdup_gnl(NULL) == NULL);
return (0);
}

/*
ALLOWED FUNCTIONS:
malloc, free for implementation; test main may use libc.

GOAL:
Allocate a fresh copy of a NUL-terminated string.

EXPLANATION:
Allocate a fresh copy of a NUL-terminated string.

TODO:
1. Understand the function contract and test inputs.
2. Return NULL for NULL input or allocation failure; caller frees result.
3. Handle boundaries and errors as documented.
4. Compare outputs with EXPECTED OUTPUT below.

EXPECTED OUTPUT:
Test 1: [Hello]
Test 2: []
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
