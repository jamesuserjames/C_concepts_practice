#include <unistd.h>
#include <stdlib.h>
#include <stdarg.h>
#include <limits.h>
#include <stddef.h>
#include <stdint.h>

char *ft_simple_gnl(int fd)
{
	
}

#include <stdio.h>
#include <string.h>

static void test_one(const char *s) {
int p[2];
char *line;
pipe(p);
write(p[1], s, strlen(s));
close(p[1]);
line = ft_simple_gnl(p[0]);
printf("[%s]", line ? line : "NULL");
free(line);
line = ft_simple_gnl(p[0]);
printf("[second:%s]\n", line ? line : "NULL");
free(line);
close(p[0]);
}
int main(void) {
printf("Test 1: ");
test_one("Hi\n");
printf("Test 2: ");
test_one("tail");
printf("Test 3: ");
test_one("");
return (0);
}

/*
ALLOWED FUNCTIONS:
read, malloc, free for implementation; test main may use libc.

GOAL:
Read one line at a time across consecutive calls.

EXPLANATION:
Read one line at a time across consecutive calls.

TODO:
1. Understand the function contract and test inputs.
2. Use a byte-by-byte approach; no overreading, return NULL at EOF.
3. Handle boundaries and errors as documented.
4. Compare outputs with EXPECTED OUTPUT below.

EXPECTED OUTPUT:
Test 1: [Hi
][second:NULL]
Test 2: [tail][second:NULL]
Test 3: [NULL][second:NULL]

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
