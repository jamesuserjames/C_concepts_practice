#include <stdio.h>
#include <stdlib.h>
#include <stddef.h>
#include <stdint.h>
#include <limits.h>

size_t ft_copy_bounded(char *dst, const char *src, size_t size)
{

}

int main(void)
{
	char a[4]={'X','X','X','X'}; size_t n=ft_copy_bounded(a,"hello",3); printf("%zu %s %c\n",n,a,a[3]); char b[1]={'Z'}; printf("%zu %c\n",ft_copy_bounded(b,"hi",0),b[0]);
	return (0);
}

/*
ALLOWED FUNCTIONS:
malloc, free (only when needed); printf is for tests only.

GOAL:
Implement strlcpy-style bounded copying.

TODO:
1. Return full source length.
2. If size > 0, copy at most size - 1 bytes.
3. NUL-terminate when size > 0.

EXPECTED OUTPUT:
5 he X
2 Z

TEST NOTES:
The destination has at least size writable bytes; avoid overrun.

LEARNING CHECK:
Explain the pointer/ownership and boundary conditions for this function.
*/
