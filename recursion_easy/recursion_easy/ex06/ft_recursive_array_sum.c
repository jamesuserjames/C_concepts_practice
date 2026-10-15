#include <stdio.h>

int	ft_recursive_array_sum(int *arr, int size)
{
	
}

int	main(void)
{
	int	a[4] = {1, 2, 3, 4};
	int	b[1] = {7};

	printf("%d\n", ft_recursive_array_sum(a, 4));
	printf("%d\n", ft_recursive_array_sum(b, 1));
	printf("%d\n", ft_recursive_array_sum(a, 0));
}

/*
Allowed functions: none

Goal:
Return the sum of an int array recursively

TODO:
1. Return 0 when size is 0
2. Return arr[0] plus recursive call with arr + 1
3. Decrease size each recursive call

Test notes:
Tests normal array, one-element array, and zero-size boundary

Expected output:
10
7
0
*/
