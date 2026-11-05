#include <stdio.h>

int	ft_recursive_count_digits(int n)
{
	
}

int	main(void)
{
	printf("%d\n", ft_recursive_count_digits(1234));
	printf("%d\n", ft_recursive_count_digits(7));
	printf("%d\n", ft_recursive_count_digits(0));
}

/*
Allowed functions: none

Goal:
Count digits recursively

TODO:
1. Return 1 when n is between 0 and 9
2. Return 1 plus recursive call with n / 10
3. Handle 0 as one digit

Test notes:
Tests multi-digit number, one digit, and zero boundary

Expected output:
4
1
1
*/
