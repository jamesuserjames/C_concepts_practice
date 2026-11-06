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
Before:
{1, 2, 3},
{4, 5, 6},
{7, 8, 9},

After change 1:
{1, 2, 3},
{4, 5, 42},
{7, 8, 9},
Test 1: 42

After change 2:
{-7, 2, 3},
{4, 5, 42},
{7, 8, 9},
Test 2: -7
Test 3: 5
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
	ft_set_value(grid, 1, 2, 42);
	printf("\nAfter change 1:\n");
	ft_test_print_grid(grid);
	printf("Test 1: %d\n", grid[1][2]);
	ft_set_value(grid, 0, 0, -7);
	printf("\nAfter change 2:\n");
	ft_test_print_grid(grid);
	printf("Test 2: %d\n", grid[0][0]);
	printf("Test 3: %d\n", grid[1][1]);
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
The test checks that an untouched element still retains its original value.

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
