#include "../training.h"

void	ft_copy_column(int grid[4][4], int col, int out[4])
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
	int	out[4];
	int	i;

	ft_copy_column(grid, 2, out);
	i = 0;
	while (i < 4)
	{
		printf("%d\n", out[i]);
		i++;
	}
	return (0);
}

/*
Allowed functions: none

Goal:
Copy one column into a 1D array.

TODO:
1. Loop through rows.
2. Copy grid[row][col] into out[row].
3. Use this for column-based logic.

Test notes:
Tests copying column 2.

Expected output:
3
7
11
15
*/
