#include <stdio.h>

void	ft_fill_grid(int grid[3][3], int value)
{
	
}

/*
GOAL:
Fill all cells of a 3x3 matrix with the given integer.

TODO:
1. Loop over every row.
2. Loop over each column in that row.
3. Store value in every cell.

EXPECTED OUTPUT:
Test 1: 7 7 7
Test 2: 0 0 0
*/

int	main(void)
{
	int	grid[3][3] = {
			{1, 2, 3},
			{4, 5, 6},
			{7, 8, 9}
		};

	ft_fill_grid(grid, 7);
	
	printf("Test 1: %d %d %d\n", grid[0][0], grid[1][1], grid[2][2]);
	
	ft_fill_grid(grid, 0);
	
	printf("Test 2: %d %d %d\n", grid[0][2], grid[1][0], grid[2][1]);
	return (0);
}

/*
EDGE CASES:
Include zero and repeated filling; all nine cells must change.

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
