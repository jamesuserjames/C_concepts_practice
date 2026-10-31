#include <unistd.h>

void	ft_init_combination(int arr[10], int n)
{
	
}

int	main(void)
{
	int	arr[10];

	ft_init_combination(arr, 3);
	write(1, "\n", 1);
	return (0);
}

/*
Allowed functions: none

Goal:
Initialize first combination.

TODO:
1. Fill array with 0..n-1.
2. Each next value increases by 1.

Test notes:
Normal case n = 3.
Edge case n = 1.
Boundary case n = 0.

Expected output:
012
*/
