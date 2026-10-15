#include <stdio.h>

int	ft_recursive_count_char(char *str, char c)
{
	
}

int	main(void)
{
	printf("%d\n", ft_recursive_count_char("banana", 'a'));
	printf("%d\n", ft_recursive_count_char("banana", 'x'));
	printf("%d\n", ft_recursive_count_char("", 'a'));
}

/*
Allowed functions: none

Goal:
Count how many times c appears in str recursively

TODO:
1. Return 0 at the null terminator
2. Add 1 when current character equals c
3. Recurse with str + 1

Test notes:
Tests repeated character, missing character, and empty string

Expected output:
3
0
0
*/
