#include <stdio.h>

void	ft_copy_grid(int src[3][3], int dest[3][3])
{
	
}

/*
GOAL:
Copy all values from a 3x3 source matrix to a destination matrix.

TODO:
1. Traverse source coordinates.
2. Assign each value to the same destination coordinate.
3. Do not alter the source.

EXPECTED OUTPUT:
Before:
{1, 2, 3},
{4, 5, 6},
{7, 8, 9},

After:
{1, 2, 3},
{4, 5, 6},
{7, 8, 9},
Test 1: 1 5 9
Test 2: 1
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
	ft_copy_grid(grid, dest);
	printf("\nAfter:\n");
	ft_test_print_grid(dest);
	printf("Test 1: %d %d %d\n", dest[0][0], dest[1][1], dest[2][2]);
	dest[0][0] = 42;
	printf("Test 2: %d\n", grid[0][0]);
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
After copying, changing the destination must not change the source.

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
