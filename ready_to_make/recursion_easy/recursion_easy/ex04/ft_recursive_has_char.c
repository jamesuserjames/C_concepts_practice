#include <stdio.h>

int	ft_recursive_has_char(char *str, char c)
{
	
}

int	main(void)
{
	printf("%d\n", ft_recursive_has_char("hello", 'e'));
	printf("%d\n", ft_recursive_has_char("hello", 'z'));
	printf("%d\n", ft_recursive_has_char("", 'a'));
}

/*
Allowed functions: none

Goal:
Return 1 if c exists in str recursively

TODO:
1. Return 0 at the null terminator
2. Return 1 if current character equals c
3. Otherwise recurse with str + 1

Test notes:
Tests found character, missing character, and empty string

Expected output:
1
0
0
*/
