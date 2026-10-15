#include <stdio.h>

int	ft_recursive_power(int nb, int power)
{
	
}

int	main(void)
{
	printf("%d\n", ft_recursive_power(2, 3));
	printf("%d\n", ft_recursive_power(5, 0));
	printf("%d\n", ft_recursive_power(3, 1));
}

/*
Allowed functions: none

Goal:
Return nb raised to power recursively

TODO:
1. Return 1 when power is 0
2. Return nb times recursive call with power - 1
3. Return 0 if power is negative

Test notes:
Tests normal power, zero power, and power one

Expected output:
8
1
3
*/
