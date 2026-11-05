#include <stdio.h>

int	ft_recursive_only_digits(char *str)
{
	
}

int	main(void)
{
	printf("%d\n", ft_recursive_only_digits("12345"));
	printf("%d\n", ft_recursive_only_digits("12a45"));
	printf("%d\n", ft_recursive_only_digits(""));
}

/*
Allowed functions: none

Goal:
Return 1 if all characters are digits recursively

TODO:
1. Return 1 at the null terminator
2. Return 0 if current character is not a digit
3. Otherwise recurse with str + 1

Test notes:
Tests all digits, mixed characters, and empty string

Expected output:
1
0
1
*/
