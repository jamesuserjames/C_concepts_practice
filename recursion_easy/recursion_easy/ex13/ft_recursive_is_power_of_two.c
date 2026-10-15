#include <stdio.h>

int	ft_recursive_is_power_of_two(int n)
{
	
}

int	main(void)
{
	printf("%d\n", ft_recursive_is_power_of_two(8));
	printf("%d\n", ft_recursive_is_power_of_two(7));
	printf("%d\n", ft_recursive_is_power_of_two(1));
}

/*
Allowed functions: none

Goal:
Return 1 if n is a power of two recursively

TODO:
1. Return 1 when n is 1
2. Return 0 if n is less than 1 or odd
3. Recurse with n / 2

Test notes:
Tests power of two, non-power, and boundary case 1

Expected output:
1
0
1
*/
