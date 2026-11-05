#include <stdio.h>

int	ft_is_last_combination(int arr[10], int n)
{
	
}

int	main(void)
{
	int	a[3] = {7, 8, 9};
	int	b[3] = {1, 2, 3};

	printf("%d\n", ft_is_last_combination(a, 3));
	printf("%d\n", ft_is_last_combination(b, 3));
	return (0);
}

/*
Allowed functions: none

Goal:
Check if combination is last.

TODO:
1. Compare each position.
2. Expected max value is 10 - n + i.
3. Return 1 if all match.

Test notes:
Normal case: last combination.
Edge case: first combination.
Boundary case n = 1.

Expected output:
1
0
*/
