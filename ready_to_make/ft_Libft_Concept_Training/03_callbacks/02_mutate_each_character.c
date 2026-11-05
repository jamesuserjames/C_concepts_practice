#include <stdio.h>
#include <stdlib.h>
#include <stddef.h>

static void test_upper_ptr(char *c)
{
	if (*c >= 'a' && *c <= 'z') *c -= 32;
}

void ft_mutate_chars(char *s, void (*f)(char *))
{
	
}

int	main(void)
{
	char s[]="abc";ft_mutate_chars(s,test_upper_ptr);printf("%s\n",s);
	return (0);
}

/*
ALLOWED FUNCTIONS: malloc, free (only when needed); printf is for tests only.

GOAL:
Apply a callback to every character in a string in place.

TODO:
1. Loop over the original string.
2. Pass the address of each character.
3. Do not allocate a new string.

EXPECTED OUTPUT:
ABC

TEST NOTES:
Run the program after implementing the function. Check output exactly.

LEARNING CHECK:
Explain what every pointer/index refers to, who owns memory, and any edge cases.
*/
