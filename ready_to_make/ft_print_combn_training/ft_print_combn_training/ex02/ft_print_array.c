#include <unistd.h>

void	ft_print_array(int arr[10], int n)
{
	
}

int	main(void)
{
	int	arr[10] = {0, 1, 2, 3};
	ft_print_array(arr, 3);
	write(1, "\n", 1);
	return (0);
}

/*
Allowed functions: write

Goal:
Print first n digits of array.

TODO:
1. Loop through array.
2. Convert each digit.
3. Print each digit.

Test notes:
Normal case prints 012.
Edge case n = 1.
Boundary case n = 0.

Expected output:
012
*/
