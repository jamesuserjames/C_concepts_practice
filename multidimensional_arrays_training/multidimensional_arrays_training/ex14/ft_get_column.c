#include "../training.h"

void	ft_get_column(int grid[4][4], int col, int out[4])
{
	
}

int	main(void)
{
	int	grid[4][4] = {
		{1, 2, 3, 4},
		{2, 3, 4, 1},
		{3, 4, 1, 2},
		{4, 1, 2, 3}
	};
	int	out[4];
	int	i;

	ft_get_column(grid, 1, out);
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
2. Copy grid[i][col] into out[i].
3. Use the output array like a row.

Test notes:
Copies column 1 from the grid.

Expected output:
2
3
4
1
*/
