#include <stdio.h>

int	ft_recursive_power(int nb, int power)
{
	
}

int	main(void)
{
	printf("%d\n", ft_recursive_power(2, 4));
	printf("%d\n", ft_recursive_power(7, 1));
	printf("%d\n", ft_recursive_power(5, 0));
	return (0);
}

/*
Allowed functions: none

Goal:
Return nb raised to power using recursion.

TODO:
1. Identify the base case for a power of zero
2. Multiply nb by a recursive call with power - 1
3. Ensure every call moves toward the base case

Test notes:
The tests cover repeated multiplication, a power of one, and a power of zero as the boundary case.

Expected output:
16
7
1
*/
