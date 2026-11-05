#include <stdio.h>

int	ft_recursive_count_up_sum(int current, int max)
{
	
}

int	main(void)
{
	printf("%d\n", ft_recursive_count_up_sum(1, 5));
	printf("%d\n", ft_recursive_count_up_sum(3, 3));
	printf("%d\n", ft_recursive_count_up_sum(5, 3));
}

/*
Allowed functions: none

Goal:
Return the sum from current up to max recursively

TODO:
1. Return 0 when current is greater than max
2. Return current plus recursive call with current + 1
3. Stop when current passes max

Test notes:
Tests normal range, one-value range, and invalid range

Expected output:
15
3
0
*/
