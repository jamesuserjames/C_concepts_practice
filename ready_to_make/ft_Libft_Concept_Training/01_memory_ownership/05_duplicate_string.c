#include <stdio.h>
#include <stdlib.h>
#include <stddef.h>

char *ft_duplicate_string(const char *src)
{
	
}

int	main(void)
{
	char original[]="cat"; char *copy=ft_duplicate_string(original); if(copy){original[0]='b';printf("%s %s\n",original,copy);free(copy);}
	return (0);
}

/*
ALLOWED FUNCTIONS: malloc, free (only when needed); printf is for tests only.

GOAL:
Make an independently owned copy of a string.

TODO:
1. Count source length.
2. Allocate length + 1.
3. Copy including the terminator.

EXPECTED OUTPUT:
bat cat

TEST NOTES:
The new string must not alias the original.

LEARNING CHECK:
Explain what every pointer/index refers to, who owns memory, and any edge cases.
*/
