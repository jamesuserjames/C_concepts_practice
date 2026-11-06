#include <stdio.h>

void	ft_zero_row(int grid[3][3], int row)
{
	
}

/*
GOAL:
Replace every value in one selected row with zero.

TODO:
1. Choose the row.
2. Loop across its columns.
3. Set every selected element to zero.

EXPECTED OUTPUT:
Test 1: 0 0 0
Test 2: 1 2 3
*/

int	main(void)
{
	int	grid[3][3] = {
			{1, 2, 3},
			{4, 5, 6},
			{7, 8, 9}
		};

	ft_zero_row(grid, 2);
	
	printf("Test 1: %d %d %d\n", grid[2][0], grid[2][1], grid[2][2]);
	
	printf("Test 2: %d %d %d\n", grid[0][0], grid[0][1], grid[0][2]);
	return (0);
}

/*
EDGE CASES:
Unselected rows must remain unchanged.

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
