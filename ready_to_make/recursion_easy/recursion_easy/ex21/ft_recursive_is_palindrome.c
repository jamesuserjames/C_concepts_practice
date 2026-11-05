#include <stdio.h>

int	ft_recursive_is_palindrome(char *str, int left, int right)
{
	
}

int	main(void)
{
	printf("%d\n", ft_recursive_is_palindrome("level", 0, 4));
	printf("%d\n", ft_recursive_is_palindrome("hello", 0, 4));
	printf("%d\n", ft_recursive_is_palindrome("", 0, -1));
}

/*
Allowed functions: none

Goal:
Return 1 if a string is a palindrome recursively

TODO:
1. Return 1 when left is greater than or equal to right
2. Return 0 if str[left] and str[right] differ
3. Recurse with left + 1 and right - 1

Test notes:
Tests palindrome, non-palindrome, and empty string boundary

Expected output:
1
0
1
*/
