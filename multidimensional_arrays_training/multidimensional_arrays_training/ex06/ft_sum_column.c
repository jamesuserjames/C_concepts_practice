#include "../training.h"

int	ft_sum_column(int grid[4][4], int col)
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

	printf("%d\n", ft_sum_column(grid, 0));
	printf("%d\n", ft_sum_column(grid, 3));
	return (0);
}

/*
Allowed functions: none

Goal:
Return the sum of one column.

TODO:
1. Fix the column index.
2. Loop through rows.
3. Add every grid[row][col].

Test notes:
Tests first column and last column.

Expected output:
28
40
*/
