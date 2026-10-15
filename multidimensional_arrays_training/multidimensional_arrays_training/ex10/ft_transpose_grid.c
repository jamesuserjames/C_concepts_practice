#include "../training.h"

void	ft_transpose_grid(int grid[4][4], int out[4][4])
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
	int	out[4][4];

	ft_transpose_grid(grid, out);
	printf("%d %d %d %d\n", out[0][0], out[0][1], out[0][2], out[0][3]);
	printf("%d %d %d %d\n", out[1][0], out[1][1], out[1][2], out[1][3]);
	return (0);
}

/*
Allowed functions: none

Goal:
Transpose a 4x4 grid.

TODO:
1. Loop through rows.
2. Loop through columns.
3. Set out[col][row] = grid[row][col].

Test notes:
Tests first two rows of the transposed grid.

Expected output:
1 5 9 13
2 6 10 14
*/
