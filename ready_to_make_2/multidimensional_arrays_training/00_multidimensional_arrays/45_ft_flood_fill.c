#include <stdio.h>

void	ft_flood_fill(int grid[3][3], int row, int col, int color)
{
	
}

/*
GOAL:
Recolor the entire orthogonally connected region matching the starting cell.

TODO:
1. Read the original color at the starting cell.
2. Visit connected cells with that original color.
3. Stop at borders, other colors, and already recolored cells.

EXPECTED OUTPUT:
Before:
{1, 1, 0},
{1, 0, 0},
{0, 0, 1},

After:
{9, 9, 0},
{9, 0, 0},
{0, 0, 1},
Test 1: 9 9 9
Test 2: 0 1
*/

static void	ft_test_print_grid(int grid[3][3]);

int	main(void)
{
	int	grid[3][3] = {
		{1, 1, 0},
		{1, 0, 0},
		{0, 0, 1}
	};

	printf("Before:\n");
	ft_test_print_grid(grid);
	ft_flood_fill(grid, 0, 0, 9);
	printf("\nAfter:\n");
	ft_test_print_grid(grid);
	printf("Test 1: %d %d %d\n", grid[0][0], grid[0][1], grid[1][0]);
	printf("Test 2: %d %d\n", grid[1][1], grid[2][2]);
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
If new color equals original color, return immediately to avoid infinite recursion.

LEARNING CHECK:
1. Why must the original color be remembered?
2. What four neighbors can be reached?
3. Where must recursion stop?
4. What happens if new color equals old color?

NOTE:
Implement the exercise function yourself; testing helpers are provided.
Do not run the test before implementing a non-void function.
Keep implementation functions at or below 25 lines and respect 42 Norm.
*/
