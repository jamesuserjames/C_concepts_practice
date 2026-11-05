#include <stdio.h>

int	ft_recursive_countdown_sum(int n)
{
	
}

int	main(void)
{
	printf("%d\n", ft_recursive_countdown_sum(5));
	printf("%d\n", ft_recursive_countdown_sum(1));
	printf("%d\n", ft_recursive_countdown_sum(0));
}

/*
Allowed functions: none

Goal:
Return the sum from n down to 0 recursively

TODO:
1. Return 0 when n is 0
2. Return n plus recursive call with n - 1
3. Stop recursion correctly

Test notes:
Tests normal case, edge case 1, and boundary case 0

Expected output:
15
1
0
*/
