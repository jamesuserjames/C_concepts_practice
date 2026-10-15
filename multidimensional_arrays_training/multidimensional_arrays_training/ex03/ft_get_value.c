#include "../training.h"

int	ft_get_value(int grid[4][4], int row, int col)
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

	printf("%d\n", ft_get_value(grid, 2, 3));
	printf("%d\n", ft_get_value(grid, 0, 0));
	return (0);
}

/*
Allowed functions: none

Goal:
Return one value from a 4x4 grid.

TODO:
1. Use row as first index.
2. Use col as second index.
3. Return grid[row][col].

Test notes:
Tests normal access and first cell access.

Expected output:
12
1
*/
