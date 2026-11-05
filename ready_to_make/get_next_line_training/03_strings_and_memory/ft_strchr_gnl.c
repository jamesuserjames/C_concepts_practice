#include <unistd.h>
#include <stdlib.h>
#include <stdarg.h>
#include <limits.h>
#include <stddef.h>
#include <stdint.h>

char *ft_strchr_gnl(const char *str, int c)
{
	
}

#include <stdio.h>
#include <string.h>

int main(void) {
char s[] = "ab\ncd";
char *p;
p = ft_strchr_gnl(s, '\n');
printf("Test 1: %ld\n", p ? (long)(p - s) : -1L);
p = ft_strchr_gnl(s, 'z');
printf("Test 2: %d\n", p == NULL);
p = ft_strchr_gnl(s, 0);
printf("Test 3: %ld\n", p ? (long)(p - s) : -1L);
printf("Test 4: %d\n", ft_strchr_gnl(NULL, 'a') == NULL);
return (0);
}

/*
ALLOWED FUNCTIONS:
none for implementation; test main may use libc.

GOAL:
Find the first occurrence of c, including the final NUL.

EXPLANATION:
Find the first occurrence of c, including the final NUL.

TODO:
1. Understand the function contract and test inputs.
2. Return a pointer into the original string or NULL; NULL input returns NULL.
3. Handle boundaries and errors as documented.
4. Compare outputs with EXPECTED OUTPUT below.

EXPECTED OUTPUT:
Test 1: 2
Test 2: 1
Test 3: 5
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
