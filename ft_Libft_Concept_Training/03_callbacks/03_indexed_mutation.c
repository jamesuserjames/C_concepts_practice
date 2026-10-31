#include <stdio.h>
#include <stdlib.h>
#include <stddef.h>

static void test_index(unsigned int i, char *c)
{
	*c = (char)(*c + i);
}

void ft_mutate_indexed(char *s, void (*f)(unsigned int, char *))
{
	
}

int	main(void)
{
	char s[]="aaaa";ft_mutate_indexed(s,test_index);printf("%s\n",s);
	return (0);
}

/*
ALLOWED FUNCTIONS: malloc, free (only when needed); printf is for tests only.

GOAL:
Pass both the index and character address to a callback.

TODO:
1. Track unsigned index.
2. Call f(index, &s[index]).
3. Preserve NUL terminator.

EXPECTED OUTPUT:
abcd

TEST NOTES:
Run the program after implementing the function. Check output exactly.

LEARNING CHECK:
Explain what every pointer/index refers to, who owns memory, and any edge cases.
*/
