#include <stdio.h>

int	ft_recursive_digit_sum(int n)
{
	
}

int	main(void)
{
	printf("%d\n", ft_recursive_digit_sum(1234));
	printf("%d\n", ft_recursive_digit_sum(7));
	printf("%d\n", ft_recursive_digit_sum(0));
}

/*
Allowed functions: none

Goal:
Return the sum of digits recursively

TODO:
1. Return 0 when n is 0
2. Add n % 10
3. Recurse with n / 10

Test notes:
Tests multi-digit number, one digit, and zero boundary

Expected output:
10
7
0
*/
