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
1. Identify what any number raised to power 0 should return
2. Reduce power by 1 in each recursive call
3. Combine nb with the result of the recursive call

Test notes:
The tests cover repeated recursion, a power of one, and the power-zero boundary.

Expected output:
16
7
1
*/
