#include "../training.h"

void	ft_set_value(int grid[4][4], int row, int col, int value)
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

	ft_set_value(grid, 1, 2, 99);
	printf("%d\n", grid[1][2]);
	return (0);
}

/*
Allowed functions: none

Goal:
Change one value inside a 4x4 grid.

TODO:
1. Use row and col to find the cell.
2. Assign value to that cell.
3. Verify the grid changed.

Test notes:
Tests modifying grid[1][2].

Expected output:
99
*/
