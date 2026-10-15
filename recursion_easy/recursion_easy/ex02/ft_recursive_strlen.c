#include <stdio.h>

int	ft_recursive_strlen(char *str)
{
	
}

int	main(void)
{
	printf("%d\n", ft_recursive_strlen("hello"));
	printf("%d\n", ft_recursive_strlen(""));
	printf("%d\n", ft_recursive_strlen("42"));
}

/*
Allowed functions: none

Goal:
Return string length recursively

TODO:
1. Return 0 when str points to '\0'
2. Return 1 plus recursive call with str + 1
3. Move through the string recursively

Test notes:
Tests normal string, empty string, and short string

Expected output:
5
0
2
*/
