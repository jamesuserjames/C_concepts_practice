#include <stdio.h>

int	ft_recursive_strlen(char *str)
{
	
}

int	main(void)
{
	printf("%d\n", ft_recursive_strlen("codam"));
	printf("%d\n", ft_recursive_strlen("a"));
	printf("%d\n", ft_recursive_strlen(""));
	return (0);
}

/*
Allowed functions: none

Goal:
Return the length of a null-terminated string using recursion.

TODO:
1. Examine the current character
2. Identify the end-of-string base case
3. Move to the next character recursively

Test notes:
The tests cover a normal string, a one-character string, and the empty-string boundary.

Expected output:
5
1
0
*/
