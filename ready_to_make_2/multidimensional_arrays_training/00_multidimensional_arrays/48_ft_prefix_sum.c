#include <stdio.h>

void	ft_prefix_sum(int grid[3][3], int out[3][3])
{
	
}

/*
GOAL:
Build a summed-area table: out[r][c] equals the sum of grid[0..r][0..c].

TODO:
1. Combine the current cell with sums above and left.
2. Subtract the overlapping top-left region.
3. Fill the output in row-major order.

EXPECTED OUTPUT:
Test 1: 1 6
Test 2: 12 45
*/

int	main(void)
{
	int	grid[3][3] = {
			{1, 2, 3},
			{4, 5, 6},
			{7, 8, 9}
		};
	int	out[3][3] = {{0}};

	ft_prefix_sum(grid, out);
	
	printf("Test 1: %d %d\n", out[0][0], out[0][2]);
	
	printf("Test 2: %d %d\n", out[1][1], out[2][2]);
	return (0);
}

/*
EDGE CASES:
Avoid indexing row - 1 or col - 1 when an index is zero.

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
