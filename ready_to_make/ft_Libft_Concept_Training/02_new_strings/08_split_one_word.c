#include <stdio.h>
#include <stdlib.h>
#include <stddef.h>

char *ft_copy_word(const char *start, size_t len)
{
	
}

int	main(void)
{
	char *s=ft_copy_word("abcdef"+2,3);if(s){printf("%s\n",s);free(s);}
	return (0);
}

/*
ALLOWED FUNCTIONS: malloc, free (only when needed); printf is for tests only.

GOAL:
Allocate and copy one word of exactly len characters.

TODO:
1. Allocate len + 1.
2. Copy len bytes.
3. Add NUL.

EXPECTED OUTPUT:
cde

TEST NOTES:
Run the program after implementing the function. Check output exactly.

LEARNING CHECK:
Explain what every pointer/index refers to, who owns memory, and any edge cases.
*/
