#include "../training.h"

void	ft_print_row(int grid[4][4], int row)
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

	ft_print_row(grid, 2);
	return (0);
}

/*
Allowed functions: none

Goal:
Print one selected row from a 4x4 grid.

TODO:
1. Use row as the fixed first index.
2. Loop through columns.
3. Print grid[row][col].

Test notes:
Tests accessing one row only.

Expected output:
9 10 11 12
*/
