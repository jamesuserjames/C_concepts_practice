#include <stdio.h>

int	ft_str_is_alpha(char *str)
{
	
}

int	main(void)
{
	printf("%d\n", ft_str_is_alpha("Hello"));
	printf("%d\n", ft_str_is_alpha("Hello42"));
	printf("%d\n", ft_str_is_alpha(""));
	return (0);
}

/*
Allowed functions: none

Goal:
Return 1 if every character in str is a letter and return 0 otherwise.

TODO:
1. Inspect each character in the string
2. Accept uppercase and lowercase letters
3. Return 1 only if the entire string is valid

Test notes:
The tests cover a valid alphabetic string, a string containing digits, and the empty-string boundary case.

Expected output:
1
0
1
*/
