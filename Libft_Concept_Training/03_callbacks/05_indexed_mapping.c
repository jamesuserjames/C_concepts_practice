#include <stdio.h>
#include <stdlib.h>
#include <stddef.h>

static char test_index_char(unsigned int i, char c)
{
	return (char)(c + i);
}

char *ft_map_indexed(const char *s, char (*f)(unsigned int, char))
{
	
}

int	main(void)
{
	char *r=ft_map_indexed("aaaa",test_index_char);if(r){printf("%s\n",r);free(r);}
	return (0);
}

/*
ALLOWED FUNCTIONS: malloc, free (only when needed); printf is for tests only.

GOAL:
Create a new string where each character depends on its index.

TODO:
1. Allocate.
2. Call f(i,s[i]).
3. NUL-terminate and return.

EXPECTED OUTPUT:
abcd

TEST NOTES:
Run the program after implementing the function. Check output exactly.

LEARNING CHECK:
Explain what every pointer/index refers to, who owns memory, and any edge cases.
*/
