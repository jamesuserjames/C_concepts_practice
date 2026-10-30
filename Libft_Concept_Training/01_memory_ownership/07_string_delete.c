#include <stdio.h>
#include <stdlib.h>
#include <stddef.h>

void ft_delete_string(char **s)
{
	
}

int	main(void)
{
	char *s=malloc(4); if(!s)return(1); ft_delete_string(&s); printf("%d\n",s==NULL);
	return (0);
}

/*
ALLOWED FUNCTIONS: malloc, free (only when needed); printf is for tests only.

GOAL:
Release a heap-allocated string and clear its pointer.

TODO:
1. Check s.
2. Free *s.
3. Set *s to NULL.

EXPECTED OUTPUT:
1

TEST NOTES:
Run the program after implementing the function. Check output exactly.

LEARNING CHECK:
Explain what every pointer/index refers to, who owns memory, and any edge cases.
*/
