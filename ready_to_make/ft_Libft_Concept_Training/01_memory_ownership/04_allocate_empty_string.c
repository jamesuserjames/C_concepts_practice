#include <stdio.h>
#include <stdlib.h>
#include <stddef.h>

char *ft_make_empty_string(size_t len)
{

}

int	main(void)
{
	char *s=ft_make_empty_string(3); if(s){printf("%d %d %d %d\n",s[0],s[1],s[2],s[3]);free(s);}
	return (0);
}

/*
ALLOWED FUNCTIONS: malloc, free (only when needed); printf is for tests only.

GOAL:
Allocate room for len characters plus a terminator and initialize all bytes to zero.

TODO:
1. Guard against len + 1 overflow.
2. Allocate len + 1 bytes.
3. Zero all bytes.

EXPECTED OUTPUT:
0 0 0 0

TEST NOTES:
Unlike malloc, this initializes the string buffer.

LEARNING CHECK:
Explain what every pointer/index refers to, who owns memory, and any edge cases.
*/
