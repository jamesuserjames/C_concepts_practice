#include <stdio.h>

void	ft_subtract_matrices(int a[3][3], int b[3][3], int out[3][3])
{
	
}

/*
GOAL:
Store a minus b for every matrix coordinate.

TODO:
1. Pair corresponding entries.
2. Subtract b from a.
3. Write the result to out.

EXPECTED OUTPUT:
Before:
{1, 2, 3},
{4, 5, 6},
{7, 8, 9},

After:
{0, -1, 3},
{0, -1, 0},
{0, 0, 8},
Test 1: 0 -1 8
Test 2: 0
*/

static void	ft_test_print_grid(int grid[3][3]);

int	main(void)
{
	int	grid[3][3] = {
		{1, 2, 3},
		{4, 5, 6},
		{7, 8, 9}
	};
	int	b[3][3] = {
	{1, 3, 0}, {4, 6, 6}, {7, 8, 1}
	};
	int	out[3][3] = {{0}};

	printf("Before:\n");
	ft_test_print_grid(grid);
	ft_subtract_matrices(grid, b, out);
	printf("\nAfter:\n");
	ft_test_print_grid(out);
	printf("Test 1: %d %d %d\n", out[0][0], out[1][1], out[2][2]);
	printf("Test 2: %d\n", out[1][2]);
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
Subtraction is order-dependent; a-b differs from b-a.

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
