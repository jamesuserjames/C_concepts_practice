#include <stdio.h>

int	ft_fibonacci(int index)
{
	
}

int	main(void)
{
	printf("%d\n", ft_fibonacci(6));
	printf("%d\n", ft_fibonacci(1));
	printf("%d\n", ft_fibonacci(0));
	return (0);
}

/*
Allowed functions: none

Goal:
Return the Fibonacci number at the given index using recursion.

TODO:
1. Determine the values at indexes 0 and 1
2. Express a Fibonacci number using the previous two indexes
3. Recursively calculate both previous values

Test notes:
The tests cover a normal recursive Fibonacci calculation and both base-case boundaries.

Expected output:
8
1
0
*/
