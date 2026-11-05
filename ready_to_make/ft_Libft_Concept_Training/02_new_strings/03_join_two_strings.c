#include <stdio.h>
#include <stdlib.h>
#include <stddef.h>

char *ft_join_two(const char *a, const char *b)
{
	
}

int	main(void)
{
	char *s=ft_join_two("good","bye"); if(s){printf("%s\n",s);free(s);}
	return (0);
}

/*
ALLOWED FUNCTIONS: malloc, free (only when needed); printf is for tests only.

GOAL:
Allocate a string containing a followed by b.

TODO:
1. Measure both lengths.
2. Allocate combined length + 1.
3. Copy a, then b, then NUL.

EXPECTED OUTPUT:
goodbye

TEST NOTES:
Run the program after implementing the function. Check output exactly.

LEARNING CHECK:
Explain what every pointer/index refers to, who owns memory, and any edge cases.
*/
