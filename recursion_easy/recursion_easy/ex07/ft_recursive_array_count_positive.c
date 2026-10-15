#include <stdio.h>

int	ft_recursive_array_count_positive(int *arr, int size)
{
	
}

int	main(void)
{
	int	a[5] = {-1, 2, 0, 4, -5};
	int	b[1] = {-7};

	printf("%d\n", ft_recursive_array_count_positive(a, 5));
	printf("%d\n", ft_recursive_array_count_positive(b, 1));
	printf("%d\n", ft_recursive_array_count_positive(a, 0));
}

/*
Allowed functions: none

Goal:
Count positive numbers in an int array recursively

TODO:
1. Return 0 when size is 0
2. Add 1 if arr[0] is greater than 0
3. Recurse with arr + 1 and size - 1

Test notes:
Tests mixed values, no positive values, and empty boundary

Expected output:
2
0
0
*/
