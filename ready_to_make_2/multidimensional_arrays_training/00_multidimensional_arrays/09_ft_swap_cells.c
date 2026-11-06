#include <stdio.h>

void	ft_swap_cells(int grid[3][3], int r1, int c1, int r2, int c2)
{
	
}

/*
GOAL:
Swap the integers stored at two coordinates in the same matrix.

TODO:
1. Save one of the two values.
2. Move the second value into the first cell.
3. Store the saved value in the second cell.

EXPECTED OUTPUT:
Test 1: 9 1
Test 2: 5
*/

int	main(void)
{
	int	grid[3][3] = {
			{1, 2, 3},
			{4, 5, 6},
			{7, 8, 9}
		};

	ft_swap_cells(grid, 0, 0, 2, 2);
	
	printf("Test 1: %d %d\n", grid[0][0], grid[2][2]);
	
	ft_swap_cells(grid, 1, 1, 1, 1);
	
	printf("Test 2: %d\n", grid[1][1]);
	return (0);
}

/*
EDGE CASES:
Swapping a cell with itself should leave it unchanged.

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
