#include <stdio.h>

int	ft_next_combination(int arr[10], int n)
{
	
}

int	main(void)
{
	int	arr[3] = {0, 1, 2};

	printf("%d\n", ft_next_combination(arr, 3));
	return (0);
}

/*
Allowed functions: none

Goal:
Generate next combination.

TODO:
1. Find increment position.
2. Increase value.
3. Reset following values.

Test notes:
Normal case moves to next.
Edge case last combination.
Boundary case n = 1.

Expected output:
1
*/
