#include <stdio.h>

int	ft_recursive_array_max(int *arr, int size)
{
	
}

int	main(void)
{
	int	a[4] = {3, 9, 2, 5};
	int	b[1] = {-4};

	printf("%d\n", ft_recursive_array_max(a, 4));
	printf("%d\n", ft_recursive_array_max(b, 1));
	printf("%d\n", ft_recursive_array_max(a, 0));
}

/*
Allowed functions: none

Goal:
Return the largest value in an int array recursively

TODO:
1. Return 0 when size is 0
2. Compare arr[0] with max of the rest
3. Return the larger value

Test notes:
Tests normal array, one-element array, and zero-size boundary

Expected output:
9
-4
0
*/
