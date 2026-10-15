#include "../training.h"

int	ft_sum_row(int grid[4][4], int row)
{
	
}

int	main(void)
{
	int	grid[4][4] = {
		{1, 2, 3, 4},
		{5, 6, 7, 8},
		{9, 10, 11, 12},
		{13, 14, 15, 16}
	};

	printf("%d\n", ft_sum_row(grid, 0));
	printf("%d\n", ft_sum_row(grid, 3));
	return (0);
}

/*
Allowed functions: none

Goal:
Return the sum of one row.

TODO:
1. Fix the row index.
2. Loop through columns.
3. Add every grid[row][col].

Test notes:
Tests first row and last row.

Expected output:
10
58
*/
