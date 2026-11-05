#include "../training.h"

int	ft_solve(int grid[4][4], int clues[16], int pos)
{
	
}

int	main(void)
{
	int	grid[4][4] = {
		{0, 0, 0, 0},
		{0, 0, 0, 0},
		{0, 0, 0, 0},
		{0, 0, 0, 0}
	};
	int	clues[16] = {4, 3, 2, 1, 1, 2, 2, 2, 4, 3, 2, 1, 1, 2, 2, 2};

	printf("%d\n", ft_solve(grid, clues, 0));
	return (0);
}

/*
Allowed functions: none

Goal:
Solve the grid using backtracking.

TODO:
1. Convert pos into row and column.
2. Try numbers 1 to 4.
3. Place a valid number.
4. Recurse to the next position.
5. Undo if the path fails.

Test notes:
Tests whether the solver can find a solution from an empty grid.

Expected output:
1
*/
