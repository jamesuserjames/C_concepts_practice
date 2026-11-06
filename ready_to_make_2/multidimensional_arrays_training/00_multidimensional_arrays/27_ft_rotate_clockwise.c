#include <stdio.h>

void	ft_rotate_clockwise(int src[3][3], int dest[3][3])
{
	
}

/*
GOAL:
Rotate a 3x3 matrix 90 degrees clockwise into dest.

TODO:
1. Work out the destination coordinate for each source element.
2. Move elements without overwriting the source.
3. Verify the first and last rows.

EXPECTED OUTPUT:
Before:
{1, 2, 3},
{4, 5, 6},
{7, 8, 9},

After:
{7, 4, 1},
{8, 5, 2},
{9, 6, 3},
Test 1: 7 4 1
Test 2: 9 6 3
*/

static void	ft_test_print_grid(int grid[3][3]);

int	main(void)
{
	int	grid[3][3] = {
		{1, 2, 3},
		{4, 5, 6},
		{7, 8, 9}
	};
	int	dest[3][3] = {{0}};

	printf("Before:\n");
	ft_test_print_grid(grid);
	ft_rotate_clockwise(grid, dest);
	printf("\nAfter:\n");
	ft_test_print_grid(dest);
	printf("Test 1: %d %d %d\n", dest[0][0], dest[0][1], dest[0][2]);
	printf("Test 2: %d %d %d\n", dest[2][0], dest[2][1], dest[2][2]);
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
Corners and center are useful positions to verify.

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
