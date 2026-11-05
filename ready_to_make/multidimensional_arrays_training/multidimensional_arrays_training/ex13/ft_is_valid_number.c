#include "../training.h"

int	ft_is_valid_number(int grid[4][4], int row, int col, int nb)
{
	
}

int	main(void)
{
	int	grid[4][4] = {
		{1, 2, 0, 0},
		{2, 0, 0, 0},
		{0, 0, 0, 0},
		{0, 0, 0, 0}
	};

	printf("%d\n", ft_is_valid_number(grid, 0, 2, 3));
	printf("%d\n", ft_is_valid_number(grid, 0, 2, 2));
	printf("%d\n", ft_is_valid_number(grid, 2, 0, 1));
	return (0);
}

/*
Allowed functions: none

Goal:
Check if a number can be placed in a cell.

TODO:
1. Check if nb already exists in the same row.
2. Check if nb already exists in the same column.
3. Return 1 if placement is allowed.
4. Return 0 if placement is forbidden.

Test notes:
First test is valid.
Second test fails because 2 exists in the row.
Third test fails because 1 exists in the column.

Expected output:
1
0
0
*/
