#include <unistd.h>
#include <stdlib.h>
#include <stdarg.h>
#include <limits.h>
#include <stddef.h>
#include <stdint.h>

int ft_read_file(int fd, char *out, int capacity)
{
	
}

#include <stdio.h>
#include <string.h>

int main(void) {
int p[2];
char s[12];
int ret;
pipe(p);
write(p[1], "sample", 6);
close(p[1]);
ret = ft_read_file(p[0], s, 12);
printf("Test 1: %d [%s]\n", ret, s);
printf("Test 2: %d\n", ft_read_file(p[0], s, 12));
close(p[0]);
printf("Test 3: %d\n", ft_read_file(-1, s, 12));
return (0);
}

/*
ALLOWED FUNCTIONS:
read for implementation; test main may use libc.

GOAL:
Read a supplied file descriptor into a bounded NUL-terminated buffer.

EXPLANATION:
Read a supplied file descriptor into a bounded NUL-terminated buffer.

TODO:
1. Understand the function contract and test inputs.
2. Handle EOF and invalid fds; return -1 on errors.
3. Handle boundaries and errors as documented.
4. Compare outputs with EXPECTED OUTPUT below.

EXPECTED OUTPUT:
Test 1: 6 [sample]
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
