#include "../training.h"

int	ft_check_solution(int grid[4][4], int clues[16])
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

	printf("%d\n", ft_check_solution(grid, clues));
	return (0);
}

/*
Allowed functions: none

Goal:
Check if the whole grid is a valid Rush01 solution.

TODO:
1. Check row duplicates.
2. Check column duplicates.
3. Check all row clues.
4. Check all column clues.

Test notes:
Tests the complete example solution.

Expected output:
1
*/
