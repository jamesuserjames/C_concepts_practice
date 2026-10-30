#include <stdio.h>
#include <stdlib.h>
#include <stddef.h>

static char test_upper(char c)
{
	return (c >= 'a' && c <= 'z') ? c - 32 : c;
}

char *ft_map_chars(const char *s, char (*f)(char))
{
	
}

int	main(void)
{
	char s[]="abc";char *r=ft_map_chars(s,test_upper);if(r){printf("%s %s\n",s,r);free(r);}
	return (0);
}

/*
ALLOWED FUNCTIONS: malloc, free (only when needed); printf is for tests only.

GOAL:
Allocate a new string containing transformed characters.

TODO:
1. Allocate source length + 1.
2. Call callback on each source character.
3. Keep source unchanged.

EXPECTED OUTPUT:
abc ABC

TEST NOTES:
Run the program after implementing the function. Check output exactly.

LEARNING CHECK:
Explain what every pointer/index refers to, who owns memory, and any edge cases.
*/
