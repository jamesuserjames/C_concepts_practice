#include <stdio.h>

int	ft_sum_grid(int grid[3][3])
{
	
}

/*
GOAL:
Return the sum of all nine matrix entries.

TODO:
1. Start a total at zero.
2. Visit every row and column.
3. Add each value and return the total.

EXPECTED OUTPUT:
Test 1: 45
Test 2: 0
*/

static void	ft_zero_for_test(int grid[3][3]);

int	main(void)
{
	int	grid[3][3] = {
		{1, 2, 3},
		{4, 5, 6},
		{7, 8, 9}
	};

	printf("Test 1: %d\n", ft_sum_grid(grid));
	ft_zero_for_test(grid);
	printf("Test 2: %d\n", ft_sum_grid(grid));
	return (0);
}

static void	ft_zero_for_test(int grid[3][3])
{
	int	row;
	int	col;

	row = 0;
	while (row < 3)
	{
		col = 0;
		while (col < 3)
			grid[row][col++] = 0;
		row++;
	}
}

/*
EDGE CASES:
All-zero matrices must produce zero. The test-only helper resets the grid.

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
