#include <stdio.h>

int	ft_recursive_flood_fill(int grid[4][4], int row, int col, int target, int replacement)
{
	
}

/*
GOAL:
Replace a connected 4-direction region and return cells changed.

ALLOWED FUNCTIONS:
none

TODO:
1. Reject out-of-bounds and non-target cells.
2. Replace the current matching cell immediately.
3. Recurse in four directions and count changed cells.

EXPECTED OUTPUT:
Test 1: 3
Test 2: 9 9
Test 3: 0
*/

int	main(void)
{
	int grid[4][4] = {
		{1, 1, 0, 0},
		{1, 0, 0, 2},
		{0, 0, 2, 2},
		{3, 3, 2, 0}
	};

	printf("Test 1: %d\n", ft_recursive_flood_fill(grid, 0, 0, 1, 9));
	printf("Test 2: %d %d\n", grid[0][0], grid[1][0]);
	printf("Test 3: %d\n", ft_recursive_flood_fill(grid, 0, 3, 1, 9));
	return (0);
}

/*
EDGE CASES:
Target and replacement must differ; recursion uses 4-neighbor connectivity.

LEARNING CHECK:
1. How does the recursive decomposition differ from a simple loop?
2. Where does the algorithm branch or combine smaller results?
3. Which condition prevents invalid input in ft_recursive_flood_fill()?
4. What value or state is carried into the next recursive call?

NOTE:
The function is intentionally empty. Implement it yourself.
Keep implementation functions at or below 25 lines and respect 42 Norm.
*/
