#include <stdio.h>

int	ft_recursive_gcd(int a, int b)
{
	
}

int	main(void)
{
	printf("%d\n", ft_recursive_gcd(12, 8));
	printf("%d\n", ft_recursive_gcd(7, 3));
	printf("%d\n", ft_recursive_gcd(5, 0));
}

/*
Allowed functions: none

Goal:
Return greatest common divisor recursively

TODO:
1. Return a when b is 0
2. Recurse with b and a % b
3. Stop when remainder reaches 0

Test notes:
Tests common divisor, coprime numbers, and zero boundary

Expected output:
4
1
5
*/
