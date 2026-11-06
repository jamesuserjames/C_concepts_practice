#include <stdio.h>

int	ft_max_grid(int grid[3][3])
{
	
}

/*
GOAL:
Find the largest element in a 3x3 integer grid.

TODO:
1. Start with an existing grid value.
2. Compare every cell with the current maximum.
3. Return the largest value.

EXPECTED OUTPUT:
Test 1: 9
Test 2: -1
*/

static void	ft_set_negative_for_test(int grid[3][3]);

int	main(void)
{
	int	grid[3][3] = {
		{1, 2, 3},
		{4, 5, 6},
		{7, 8, 9}
	};

	printf("Test 1: %d\n", ft_max_grid(grid));
	ft_set_negative_for_test(grid);
	printf("Test 2: %d\n", ft_max_grid(grid));
	return (0);
}

static void	ft_set_negative_for_test(int grid[3][3])
{
	int	row;
	int	col;

	row = 0;
	while (row < 3)
	{
		col = 0;
		while (col < 3)
			grid[row][col++] = -1 - row;
		row++;
	}
}

/*
EDGE CASES:
An all-negative grid must not incorrectly return zero.

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
