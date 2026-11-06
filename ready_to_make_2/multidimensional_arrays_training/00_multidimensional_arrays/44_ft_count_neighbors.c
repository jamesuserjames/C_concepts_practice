#include <stdio.h>

int	ft_count_neighbors(int grid[3][3], int row, int col)
{
	
}

/*
GOAL:
Count nonzero orthogonal neighbors (up, down, left, right) of a cell.

TODO:
1. Consider the four neighboring coordinates.
2. Skip any coordinate outside the matrix.
3. Count neighbors containing a nonzero value.

EXPECTED OUTPUT:
Test 1: 4
Test 2: 2
*/

int	main(void)
{
	int	grid[3][3] = {
		{1, 1, 1},
		{1, 0, 1},
		{1, 1, 1}
	};

	printf("Test 1: %d\n", ft_count_neighbors(grid, 1, 1));
	printf("Test 2: %d\n", ft_count_neighbors(grid, 0, 0));
	return (0);
}

/*
EDGE CASES:
Diagonal neighbors do not count; never access outside 0..2.

LEARNING CHECK:
1. What does each array index represent?
2. Which dimension should the loop traverse?
3. What happens at the first or last valid index?
4. How would this operation help in a larger matrix algorithm?

NOTE:
Implement the exercise function yourself; testing helpers are provided.
Do not run the test before implementing a non-void function.
Keep implementation functions at or below 25 lines and respect 42 Norm.
*/
