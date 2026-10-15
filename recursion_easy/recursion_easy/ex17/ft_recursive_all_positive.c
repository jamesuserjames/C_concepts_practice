#include <stdio.h>

int	ft_recursive_all_positive(int *arr, int size)
{
	
}

int	main(void)
{
	int	a[3] = {1, 2, 3};
	int	b[3] = {1, -2, 3};

	printf("%d\n", ft_recursive_all_positive(a, 3));
	printf("%d\n", ft_recursive_all_positive(b, 3));
	printf("%d\n", ft_recursive_all_positive(a, 0));
}

/*
Allowed functions: none

Goal:
Return 1 if all numbers in array are positive recursively

TODO:
1. Return 1 when size is 0
2. Return 0 if arr[0] is not positive
3. Recurse with arr + 1 and size - 1

Test notes:
Tests all positive, one negative, and empty boundary

Expected output:
1
0
1
*/
