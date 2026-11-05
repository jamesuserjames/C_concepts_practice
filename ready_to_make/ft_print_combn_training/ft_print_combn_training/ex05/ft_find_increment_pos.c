#include <stdio.h>

int	ft_find_increment_pos(int arr[10], int n)
{
	
}

int	main(void)
{
	int	arr[3] = {0, 1, 9};

	printf("%d\n", ft_find_increment_pos(arr, 3));
	return (0);
}

/*
Allowed functions: none

Goal:
Find index that can be incremented.

TODO:
1. Start from last index.
2. Check if value < max allowed.
3. Return index or -1.

Test notes:
Normal case finds valid index.
Edge case no index possible.
Boundary case n = 1.

Expected output:
1
*/
