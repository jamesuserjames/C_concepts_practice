#include <stdio.h>

void	ft_scale_matrix(int grid[3][3], int factor)
{
	
}

/*
GOAL:
Multiply every matrix element by the given factor in place.

TODO:
1. Traverse all cells.
2. Multiply each value by factor.
3. Store the product in the same cell.

EXPECTED OUTPUT:
Test 1: -2 -10 -18
Test 2: 0 0
*/

int	main(void)
{
	int	grid[3][3] = {
			{1, 2, 3},
			{4, 5, 6},
			{7, 8, 9}
		};

	ft_scale_matrix(grid, -2);
	
	printf("Test 1: %d %d %d\n", grid[0][0], grid[1][1], grid[2][2]);
	
	ft_scale_matrix(grid, 0);
	
	printf("Test 2: %d %d\n", grid[0][1], grid[2][0]);
	return (0);
}

/*
EDGE CASES:
The test values avoid signed integer overflow.

LEARNING CHECK:
1. What does each array index represent?
2. Which dimension should the loop traverse?
3. What happens at the first or last valid index?
4. How would this operation help in a larger matrix algorithm?

NOTE:
The function is intentionally empty. Implement it yourself.
Do not run the test before implementing a non-void function.
Keep implementation functions at or below 25 lines and respect 42 Norm.
*/
