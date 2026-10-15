#include <stdio.h>

int	ft_iterative_power(int nb, int power)
{
	
}

int	main(void)
{
	printf("%d\n", ft_iterative_power(3, 4));
	printf("%d\n", ft_iterative_power(-2, 3));
	printf("%d\n", ft_iterative_power(10, 0));
	return (0);
}

/*
Allowed functions: none

Goal:
Return nb raised to power using a loop instead of recursion.

TODO:
1. Create a result with the correct starting value
2. Multiply it by nb repeatedly
3. Handle power zero correctly

Test notes:
The tests cover repeated multiplication, a negative base with an odd power, and the power-zero boundary.

Expected output:
81
-8
1
*/
