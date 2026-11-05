#include <unistd.h>
#include <stdlib.h>
#include <stdarg.h>
#include <limits.h>
#include <stddef.h>
#include <stdint.h>

char *ft_append_buffer(char *stash, const char *buffer)
{
	
}

#include <stdio.h>
#include <string.h>

int main(void) {
char *s;
char *next;
s = malloc(3);
if (!s) return (1);
s[0] = 'H';
s[1] = 'i';
s[2] = 0;
next = ft_append_buffer(s, "!");
if (!next) {
free(s);
return (1);
}
printf("Test 1: [%s]\n", next);
s = ft_append_buffer(next, "\n");
if (!s) {
free(next);
return (1);
}
printf("Test 2: [%s]", s);
free(s);
return (0);
}

/*
ALLOWED FUNCTIONS:
malloc, free for implementation; test main may use libc.

GOAL:
Append buffer to a heap-allocated stash, returning a new allocation.

EXPLANATION:
Append buffer to a heap-allocated stash, returning a new allocation.

TODO:
1. Understand the function contract and test inputs.
2. Free old stash only after a successful allocation; on failure leave old stash owned by caller.
3. Handle boundaries and errors as documented.
4. Compare outputs with EXPECTED OUTPUT below.

EXPECTED OUTPUT:
Test 1: [Hi!]
Test 2: [Hi!
]

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
