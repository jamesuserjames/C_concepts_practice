#include <stdio.h>
#include <stdlib.h>
#include <stddef.h>

char *ft_extract(const char *s, unsigned int start, size_t len)
{
	
}

int	main(void)
{
	char *s=ft_extract("abcdef",2,3); if(s){printf("%s\n",s);free(s);}
	return (0);
}

/*
ALLOWED FUNCTIONS: malloc, free (only when needed); printf is for tests only.

GOAL:
Allocate a new substring.

TODO:
1. Determine the actual copy length.
2. Allocate length + 1.
3. Copy and terminate.

EXPECTED OUTPUT:
cde

TEST NOTES:
The caller owns the returned string.

LEARNING CHECK:
Explain what every pointer/index refers to, who owns memory, and any edge cases.
*/
