#include <stdio.h>

void	ft_flip_vertical(int grid[3][3])
{
	
}

/*
GOAL:
Mirror a matrix from top to bottom in place.

TODO:
1. Match top and bottom rows.
2. Swap their corresponding elements.
3. Keep the center row unchanged.

EXPECTED OUTPUT:
Before:
{1, 2, 3},
{4, 5, 6},
{7, 8, 9},

After:
{7, 8, 9},
{4, 5, 6},
{1, 2, 3},
Test 1: 7 8 9
Test 2: 1 2 3
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
	ft_flip_vertical(grid);
	printf("\nAfter:\n");
	ft_test_print_grid(grid);
	printf("Test 1: %d %d %d\n", grid[0][0], grid[0][1], grid[0][2]);
	printf("Test 2: %d %d %d\n", grid[2][0], grid[2][1], grid[2][2]);
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
Every value must stay in the matrix, only at a mirrored location.

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
