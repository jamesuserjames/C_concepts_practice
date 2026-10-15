#include <stdio.h>

int	ft_str_is_numeric(char *str)
{
	
}

int	main(void)
{
	printf("%d\n", ft_str_is_numeric("58391"));
	printf("%d\n", ft_str_is_numeric("58a91"));
	printf("%d\n", ft_str_is_numeric(""));
	return (0);
}

/*
Allowed functions: none

Goal:
Return 1 if every character in str is a decimal digit and return 0 otherwise.

TODO:
1. Inspect each character in the string
2. Check whether it is between 0 and 9
3. Return 1 only if the entire string is valid

Test notes:
The tests cover a numeric string, a string containing a non-digit, and the empty-string boundary case.

Expected output:
1
0
1
*/
