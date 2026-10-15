#include <stdio.h>

int	ft_recursive_factorial(int nb)
{
	
}

int	main(void)
{
	printf("%d\n", ft_recursive_factorial(5));
	printf("%d\n", ft_recursive_factorial(1));
	printf("%d\n", ft_recursive_factorial(0));
}

/*
Allowed functions: none

Goal:
Return factorial recursively

TODO:
1. Return 1 when nb is 0 or 1
2. Return nb times recursive call with nb - 1
3. Stop before nb becomes negative

Test notes:
Tests normal factorial, edge case 1, and boundary case 0

Expected output:
120
1
1
*/
