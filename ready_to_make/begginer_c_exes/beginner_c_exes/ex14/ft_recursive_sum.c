#include <stdio.h>

int	ft_recursive_sum(int n)
{
	
}

int	main(void)
{
	printf("%d\n", ft_recursive_sum(5));
	printf("%d\n", ft_recursive_sum(1));
	printf("%d\n", ft_recursive_sum(0));
	return (0);
}

/*
Allowed functions: none

Goal:
Return the sum of every integer from 1 through n using recursion.

TODO:
1. Identify the base case
2. Add n to a recursive call using n - 1
3. Ensure every call moves toward the base case

Test notes:
The tests cover a normal recursive chain, a one-step chain, and the base-case boundary.

Expected output:
15
1
0
*/
