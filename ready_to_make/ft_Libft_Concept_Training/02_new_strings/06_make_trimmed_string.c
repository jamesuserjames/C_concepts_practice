#include <stdio.h>
#include <stdlib.h>
#include <stddef.h>

char *ft_make_trimmed(const char *s, const char *set)
{
	
}

int	main(void)
{
	char *s=ft_make_trimmed("--hello--","-"); if(s){printf("%s\n",s);free(s);}
	return (0);
}

/*
ALLOWED FUNCTIONS: malloc, free (only when needed); printf is for tests only.

GOAL:
Create an allocated copy without characters in set at either end.

TODO:
1. Find trimmed start/end.
2. Allocate exact space.
3. Copy and terminate.

EXPECTED OUTPUT:
hello

TEST NOTES:
Run the program after implementing the function. Check output exactly.

LEARNING CHECK:
Explain what every pointer/index refers to, who owns memory, and any edge cases.
*/
