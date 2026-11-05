#include <unistd.h>
#include <stdlib.h>
#include <stdarg.h>
#include <limits.h>
#include <stddef.h>
#include <stdint.h>

int ft_read_stdin(char *out, int capacity)
{
	
}

#include <stdio.h>
#include <string.h>

int main(void) {
int p[2];
int saved;
char s[12];
int ret;
pipe(p);
write(p[1], "input", 5);
close(p[1]);
saved = dup(0);
dup2(p[0], 0);
close(p[0]);
ret = ft_read_stdin(s, 12);
dup2(saved, 0);
close(saved);
printf("Test 1: %d [%s]\n", ret, s);
return (0);
}

/*
ALLOWED FUNCTIONS:
read for implementation; test main may use libc.

GOAL:
Read from standard input (fd 0) and terminate the buffer.

EXPLANATION:
Read from standard input (fd 0) and terminate the buffer.

TODO:
1. Understand the function contract and test inputs.
2. Use read(0, ...); return bytes read; capacity must reserve NUL.
3. Handle boundaries and errors as documented.
4. Compare outputs with EXPECTED OUTPUT below.

EXPECTED OUTPUT:
Test 1: 5 [input]

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
