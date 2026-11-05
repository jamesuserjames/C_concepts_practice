#include "../training.h"

int	ft_has_value_column(int grid[4][4], int col, int value)
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

	printf("%d\n", ft_has_value_column(grid, 2, 11));
	printf("%d\n", ft_has_value_column(grid, 2, 10));
	return (0);
}

/*
Allowed functions: none

Goal:
Check if a column contains a value.

TODO:
1. Fix the column index.
2. Loop through rows.
3. Return 1 if value is found.

Test notes:
Tests found and not found cases.

Expected output:
1
0
*/
