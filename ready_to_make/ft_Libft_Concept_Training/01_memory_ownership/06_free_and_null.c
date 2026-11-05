#include <stdio.h>
#include <stdlib.h>
#include <stddef.h>

void ft_free_and_null(void **ptr)
{
	
}

int	main(void)
{
	char *p=malloc(4); if(!p)return(1); ft_free_and_null((void **)&p); printf("%d\n",p==NULL);
	return (0);
}

/*
ALLOWED FUNCTIONS: malloc, free (only when needed); printf is for tests only.

GOAL:
Free an allocated pointer and set the caller’s pointer to NULL.

TODO:
1. Check ptr itself.
2. Free *ptr.
3. Assign NULL to *ptr.

EXPECTED OUTPUT:
1

TEST NOTES:
Why do you need a pointer-to-pointer?

LEARNING CHECK:
Explain what every pointer/index refers to, who owns memory, and any edge cases.
*/
