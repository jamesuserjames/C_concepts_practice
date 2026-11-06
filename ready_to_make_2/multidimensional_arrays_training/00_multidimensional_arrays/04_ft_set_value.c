#include <stdio.h>

void	ft_set_value(int grid[3][3], int row, int col, int value)
{
	
}

/*
GOAL:
Change a selected element without modifying neighboring cells.

TODO:
1. Locate the requested cell.
2. Assign the new value.
3. Leave other elements unchanged.

EXPECTED OUTPUT:
Test 1: 42
Test 2: -7
Test 3: 5
*/

int	main(void)
{
	int	grid[3][3] = {
			{1, 2, 3},
			{4, 5, 6},
			{7, 8, 9}
		};

	ft_set_value(grid, 1, 2, 42);
	
	printf("Test 1: %d\n", grid[1][2]);
	
	ft_set_value(grid, 0, 0, -7);
	
	printf("Test 2: %d\n", grid[0][0]);
	
	printf("Test 3: %d\n", grid[1][1]);
	return (0);
}

/*
EDGE CASES:
The test checks that an untouched element still retains its original value.

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
