#include "../training.h"

void	ft_print_grid(int grid[4][4])
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

	ft_print_grid(grid);
	return (0);
}

/*
Allowed functions: none

Goal:
Print every value in a 4x4 grid.

TODO:
1. Use a row loop.
2. Use a column loop.
3. Print grid[row][col].

Test notes:
Tests basic 2D array traversal.

Expected output:
1 2 3 4
5 6 7 8
9 10 11 12
13 14 15 16
*/
