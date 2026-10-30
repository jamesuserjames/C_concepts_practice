#include <stdio.h>
#include <stdlib.h>
#include <stddef.h>

static char test_upper(char c) 
{
	return ((c >= 'a' && c <= 'z') ? c - 32 : c);
}

char ft_apply_char(char c, char (*f)(char))
{
	
}

int	main(void)
{
	printf("%c\n",ft_apply_char('a',test_upper));
	return (0);
}

/*
ALLOWED FUNCTIONS: malloc, free (only when needed); printf is for tests only.

GOAL:
Call a function through a function pointer.

TODO:
1. Understand the f parameter.
2. Pass c to f.
3. Return the result.

EXPECTED OUTPUT:
A

TEST NOTES:
Run the program after implementing the function. Check output exactly.

LEARNING CHECK:
Explain what every pointer/index refers to, who owns memory, and any edge cases.
*/
