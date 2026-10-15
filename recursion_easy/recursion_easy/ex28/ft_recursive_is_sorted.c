#include <stdio.h>

int	ft_recursive_is_sorted(int *arr, int size)
{
	
}

int	main(void)
{
	int	a[4] = {1, 2, 3, 4};
	int	b[4] = {1, 3, 2, 4};

	printf("%d\n", ft_recursive_is_sorted(a, 4));
	printf("%d\n", ft_recursive_is_sorted(b, 4));
	printf("%d\n", ft_recursive_is_sorted(a, 1));
}

/*
Allowed functions: none

Goal:
Return 1 if an int array is sorted ascending recursively

TODO:
1. Return 1 when size is 0 or 1
2. Return 0 if arr[0] is greater than arr[1]
3. Recurse with arr + 1 and size - 1

Test notes:
Tests sorted array, unsorted array, and one-element boundary

Expected output:
1
0
1
*/
