#include <unistd.h>
#include <stdlib.h>
#include <stdarg.h>
#include <limits.h>
#include <stddef.h>
#include <stdint.h>

char *ft_substr_gnl(const char *str, int start, int len)
{
	
}

#include <stdio.h>
#include <string.h>

int main(void) {
char *p;
p = ft_substr_gnl("abcdef", 2, 3);
printf("Test 1: [%s]\n", p ? p : "NULL");
free(p);
p = ft_substr_gnl("abc", 10, 2);
printf("Test 2: [%s]\n", p ? p : "NULL");
free(p);
printf("Test 3: %d\n", ft_substr_gnl("abc", -1, 2) == NULL);
return (0);
}

/*
ALLOWED FUNCTIONS:
malloc, free for implementation; test main may use libc.

GOAL:
Allocate up to len bytes starting at index start.

EXPLANATION:
Allocate up to len bytes starting at index start.

TODO:
1. Understand the function contract and test inputs.
2. Return empty allocated string when start exceeds length; reject negative indices/lengths.
3. Handle boundaries and errors as documented.
4. Compare outputs with EXPECTED OUTPUT below.

EXPECTED OUTPUT:
Test 1: [cde]
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
