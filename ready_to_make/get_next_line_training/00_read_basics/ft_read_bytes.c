#include <unistd.h>
#include <stdlib.h>
#include <stdarg.h>
#include <limits.h>
#include <stddef.h>
#include <stdint.h>

int ft_read_bytes(int fd, char *out, int len)
{
	
}

#include <stdio.h>
#include <string.h>

int main(void) {
int p[2];
char s[8] = {
0}
;
int ret;
pipe(p);
write(p[1], "abcdef", 6);
close(p[1]);
ret = ft_read_bytes(p[0], s, 3);
printf("Test 1: %d [%.*s]\n", ret, ret > 0 ? ret : 0, s);
ret = ft_read_bytes(p[0], s, 6);
printf("Test 2: %d [%.*s]\n", ret, ret > 0 ? ret : 0, s);
printf("Test 3: %d\n", ft_read_bytes(p[0], s, 2));
close(p[0]);
printf("Test 4: %d\n", ft_read_bytes(-1, s, 2));
return (0);
}

/*
ALLOWED FUNCTIONS:
read for implementation; test main may use libc.

GOAL:
Read up to len bytes into out and return the read count.

EXPLANATION:
Read up to len bytes into out and return the read count.

TODO:
1. Understand the function contract and test inputs.
2. Handle len <= 0 without accessing the buffer; make one read call otherwise.
3. Handle boundaries and errors as documented.
4. Compare outputs with EXPECTED OUTPUT below.

EXPECTED OUTPUT:
Test 1: 3 [abc]
Test 2: 3 [def]
Test 3: 0
Test 4: -1

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
