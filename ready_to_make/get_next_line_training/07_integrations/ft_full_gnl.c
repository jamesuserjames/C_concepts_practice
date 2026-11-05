#include <unistd.h>
#include <stdlib.h>
#include <stdarg.h>
#include <limits.h>
#include <stddef.h>
#include <stdint.h>

char *ft_full_gnl(int fd)
{
	
}

#include <stdio.h>
#include <string.h>

int main(void) {
int p[2];
char *s;
pipe(p);
write(p[1], "Hello\nWorld\nlast", 16);
close(p[1]);
s = ft_full_gnl(p[0]);
printf("Test 1: [%s]", s ? s : "NULL");
free(s);
s = ft_full_gnl(p[0]);
printf("Test 2: [%s]", s ? s : "NULL");
free(s);
s = ft_full_gnl(p[0]);
printf("Test 3: [%s]\n", s ? s : "NULL");
free(s);
s = ft_full_gnl(p[0]);
printf("Test 4: %d\n", s == NULL);
free(s);
close(p[0]);
return (0);
}

/*
ALLOWED FUNCTIONS:
read, malloc, free for implementation; test main may use libc.

GOAL:
Build a buffered line reader with retained extra bytes.

EXPLANATION:
Build a buffered line reader with retained extra bytes.

TODO:
1. Understand the function contract and test inputs.
2. Respect BUFFER_SIZE and use a static stash; free on error and end-of-file.
3. Handle boundaries and errors as documented.
4. Compare outputs with EXPECTED OUTPUT below.

EXPECTED OUTPUT:
Test 1: [Hello
]Test 2: [World
]Test 3: [last]
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
