#include <stdio.h>

char	*ft_recursive_skip_spaces(char *str)
{
	
}

int	main(void)
{
	printf("%s\n", ft_recursive_skip_spaces("   hello"));
	printf("%s\n", ft_recursive_skip_spaces("world"));
	printf("%s\n", ft_recursive_skip_spaces(""));
}

/*
Allowed functions: none

Goal:
Return pointer to first non-space character recursively

TODO:
1. Return str when current character is not a space
2. Recurse with str + 1 while current character is space
3. Stop safely at the null terminator

Test notes:
Tests leading spaces, no spaces, and empty string

Expected output:
hello
world

*/
