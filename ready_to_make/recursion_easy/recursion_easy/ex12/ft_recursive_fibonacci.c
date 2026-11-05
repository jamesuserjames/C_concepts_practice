#include <stdio.h>

int	ft_recursive_fibonacci(int index)
{
	
}

int	main(void)
{
	printf("%d\n", ft_recursive_fibonacci(7));
	printf("%d\n", ft_recursive_fibonacci(1));
	printf("%d\n", ft_recursive_fibonacci(0));
}

/*
Allowed functions: none

Goal:
Return fibonacci value recursively

TODO:
1. Return index when index is 0 or 1
2. Return fibonacci(index - 1) plus fibonacci(index - 2)
3. Return 0 for negative index

Test notes:
Tests normal fibonacci, edge case 1, and boundary case 0

Expected output:
13
1
0
*/
