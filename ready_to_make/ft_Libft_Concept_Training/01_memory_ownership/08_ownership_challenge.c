#include <stdio.h>
#include <stdlib.h>
#include <stddef.h>

char *ft_copy_or_null(const char *src)
{
	
}

int	main(void)
{
	char *s=ft_copy_or_null("hello"); if(s){printf("%s\n",s);free(s);} printf("%d\n",ft_copy_or_null(NULL)==NULL);
	return (0);
}

/*
ALLOWED FUNCTIONS: malloc, free (only when needed); printf is for tests only.

GOAL:
Return an owned copy of src, or NULL for NULL input.

TODO:
1. Decide who owns the returned memory.
2. Handle NULL input.
3. Copy the string into a fresh allocation.

EXPECTED OUTPUT:
hello
1

TEST NOTES:
Run the program after implementing the function. Check output exactly.

LEARNING CHECK:
Explain what every pointer/index refers to, who owns memory, and any edge cases.
*/
