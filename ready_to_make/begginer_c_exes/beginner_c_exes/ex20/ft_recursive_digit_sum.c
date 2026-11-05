#include <stdio.h>

int	ft_recursive_digit_sum(int n)
{
	
}

int	main(void)
{
	printf("%d\n", ft_recursive_digit_sum(5832));
	printf("%d\n", ft_recursive_digit_sum(7));
	printf("%d\n", ft_recursive_digit_sum(0));
	return (0);
}

/*
Allowed functions: none

Goal:
Return the sum of all decimal digits in a non-negative integer using recursion.

TODO:
1. Find the last digit of n
2. Remove the last digit for the recursive call
3. Identify when no digits remain

Test notes:
The tests cover a multi-digit number, a single-digit number, and zero as the boundary.

Expected output:
18
7
0
*/
