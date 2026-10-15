#include "../training.h"

int	ft_check_all_rows(int grid[4][4], int clues[16])
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

	printf("%d\n", ft_check_all_rows(grid, clues));
	return (0);
}

/*
Allowed functions: none

Goal:
Check every row against the row clues.

TODO:
1. Use clues 8 to 11 for left views.
2. Use clues 12 to 15 for right views.
3. Check each row.
4. Return 0 if any row fails.

Test notes:
Uses the example grid and clues from Rush01.

Expected output:
1
*/
