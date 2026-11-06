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
Before:
{1, 2, 3},
{4, 5, 6},
{7, 8, 9},

After change 1:
{-2, -4, -6},
{-8, -10, -12},
{-14, -16, -18},
Test 1: -2 -10 -18

After change 2:
{0, 0, 0},
{0, 0, 0},
{0, 0, 0},
Test 2: 0 0
*/

static void	ft_test_print_grid(int grid[3][3]);

int	main(void)
{
	int	grid[3][3] = {
		{1, 2, 3},
		{4, 5, 6},
		{7, 8, 9}
	};

	printf("Before:\n");
	ft_test_print_grid(grid);
	ft_scale_matrix(grid, -2);
	printf("\nAfter change 1:\n");
	ft_test_print_grid(grid);
	printf("Test 1: %d %d %d\n", grid[0][0], grid[1][1], grid[2][2]);
	ft_scale_matrix(grid, 0);
	printf("\nAfter change 2:\n");
	ft_test_print_grid(grid);
	printf("Test 2: %d %d\n", grid[0][1], grid[2][0]);
	return (0);
}

static void	ft_test_print_grid(int grid[3][3])
{
	int	i;

	i = 0;
	while (i < 3)
	{
		printf("{%d, %d, %d},\n", grid[i][0],
			grid[i][1], grid[i][2]);
		i++;
	}
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
Implement the exercise function yourself; testing helpers are provided.
Do not run the test before implementing a non-void function.
Keep implementation functions at or below 25 lines and respect 42 Norm.
*/
