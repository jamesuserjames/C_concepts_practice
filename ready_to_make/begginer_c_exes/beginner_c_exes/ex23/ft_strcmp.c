#include <stdio.h>

int	ft_strcmp(char *s1, char *s2)
{
	
}

int	main(void)
{
	printf("%d\n", ft_strcmp("hello", "hello"));
	printf("%d\n", ft_strcmp("abc", "abd") < 0);
	printf("%d\n", ft_strcmp("abd", "abc") > 0);
	return (0);
}

/*
Allowed functions: none

Goal:
Compare two strings character by character like strcmp.

TODO:
1. Move through both strings while their characters are equal
2. Stop at the first difference or at the end of a string
3. Return the difference between the first unequal unsigned characters

Test notes:
The tests prove equality, a negative comparison, and a positive comparison without depending on the exact magnitude of nonzero results.

Expected output:
0
1
1
*/
