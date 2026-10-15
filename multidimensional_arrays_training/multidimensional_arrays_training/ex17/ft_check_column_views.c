#include "../training.h"

int	ft_check_column_views(int grid[4][4], int col, int up, int down)
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

	printf("%d\n", ft_check_column_views(grid, 0, 4, 1));
	printf("%d\n", ft_check_column_views(grid, 1, 3, 2));
	printf("%d\n", ft_check_column_views(grid, 1, 4, 1));
	return (0);
}

/*
Allowed functions: none

Goal:
Check if a column matches up and down clues.

TODO:
1. Copy the column into an array.
2. Count visibility from the top.
3. Count visibility from the bottom.
4. Return 1 only if both match.

Test notes:
Tests two valid column clues and one invalid clue.

Expected output:
1
1
0
*/
