#include <stdio.h>

int	ft_recursive_reverse_number(int n, int result)
{
	
}

int	main(void)
{
	printf("%d\n", ft_recursive_reverse_number(123, 0));
	printf("%d\n", ft_recursive_reverse_number(7, 0));
	printf("%d\n", ft_recursive_reverse_number(0, 0));
}

/*
Allowed functions: none

Goal:
Reverse positive integer digits recursively

TODO:
1. Return result when n is 0
2. Add last digit to result times 10
3. Recurse with n / 10

Test notes:
Tests multi-digit number, single digit, and zero boundary

Expected output:
321
7
0
*/
