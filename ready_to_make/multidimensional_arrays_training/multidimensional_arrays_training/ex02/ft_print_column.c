#include "../training.h"

void	ft_print_column(int grid[4][4], int col)
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

	ft_print_column(grid, 1);
	return (0);
}

/*
Allowed functions: none

Goal:
Print one selected column from a 4x4 grid.

TODO:
1. Use col as the fixed second index.
2. Loop through rows.
3. Print grid[row][col].

Test notes:
Tests column access.

Expected output:
2
6
10
14
*/
