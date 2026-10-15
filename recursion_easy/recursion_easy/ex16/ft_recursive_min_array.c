#include <stdio.h>

int	ft_recursive_min_array(int *arr, int size)
{
	
}

int	main(void)
{
	int	a[4] = {4, 2, 9, 1};
	int	b[1] = {-3};

	printf("%d\n", ft_recursive_min_array(a, 4));
	printf("%d\n", ft_recursive_min_array(b, 1));
	printf("%d\n", ft_recursive_min_array(a, 0));
}

/*
Allowed functions: none

Goal:
Return the smallest value in an int array recursively

TODO:
1. Return 0 when size is 0
2. Compare arr[0] with min of the rest
3. Return the smaller value

Test notes:
Tests normal array, one-element array, and zero-size boundary

Expected output:
1
-3
0
*/
