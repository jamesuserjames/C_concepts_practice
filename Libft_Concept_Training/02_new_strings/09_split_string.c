#include <stdio.h>
#include <stdlib.h>
#include <stddef.h>

char **ft_split_words(const char *s, char sep)
{
	
}

int	main(void)
{
	char **a=ft_split_words("a,,bb,c",',');size_t i=0;if(a){while(a[i]){printf("%s\n",a[i]);free(a[i++]);}free(a);}
	return (0);
}

/*
ALLOWED FUNCTIONS: malloc, free (only when needed); printf is for tests only.

GOAL:
Split into a NULL-terminated array of independently allocated words.

TODO:
1. Count words.
2. Allocate pointers plus NULL sentinel.
3. Allocate each word.
4. Clean up all allocations if one fails.

EXPECTED OUTPUT:
a
bb
c

TEST NOTES:
Important: the array and every word need their own free.

LEARNING CHECK:
Explain what every pointer/index refers to, who owns memory, and any edge cases.
*/
