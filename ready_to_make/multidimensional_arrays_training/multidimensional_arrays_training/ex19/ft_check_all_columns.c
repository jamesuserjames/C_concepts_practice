#include "../training.h"

int	ft_check_all_columns(int grid[4][4], int clues[16])
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
	int	clues[16] = {4, 3, 2, 1, 1, 2, 2, 2, 4, 3, 2, 1, 1, 2, 2, 2};

	printf("%d\n", ft_check_all_columns(grid, clues));
	return (0);
}

/*
Allowed functions: none

Goal:
Check every column against the column clues.

TODO:
1. Use clues 0 to 3 for up views.
2. Use clues 4 to 7 for down views.
3. Check each column.
4. Return 0 if any column fails.

Test notes:
Uses the example grid and clues from Rush01.

Expected output:
1
*/
