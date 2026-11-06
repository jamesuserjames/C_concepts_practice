#include <stdio.h>

void	ft_add_matrices(int a[3][3], int b[3][3], int out[3][3])
{
	
}

/*
GOAL:
Store the element-wise sum of two 3x3 matrices in out.

TODO:
1. Traverse matching coordinates.
2. Add the two entries.
3. Write each sum into out.

EXPECTED OUTPUT:
Before:
{1, 2, 3},
{4, 5, 6},
{7, 8, 9},

After:
{10, 10, 10},
{10, 10, 10},
{10, 10, 10},
Test 1: 10 10 10
Test 2: 10
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
	{9, 8, 7}, {6, 5, 4}, {3, 2, 1}
	};
	int	out[3][3] = {{0}};

	printf("Before:\n");
	ft_test_print_grid(grid);
	ft_add_matrices(grid, b, out);
	printf("\nAfter:\n");
	ft_test_print_grid(out);
	printf("Test 1: %d %d %d\n", out[0][0], out[1][1], out[2][2]);
	printf("Test 2: %d\n", out[0][1]);
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
Keep input matrices intact; the expected entries are all 10.

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
