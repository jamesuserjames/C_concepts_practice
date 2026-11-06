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
Test 1: 9 9 9
Test 2: 0 1
*/

int	main(void)
{
	int	grid[3][3] = {
			{1, 1, 0},
			{1, 0, 0},
			{0, 0, 1}
		};

	ft_flood_fill(grid, 0, 0, 9);
	
	printf("Test 1: %d %d %d\n", grid[0][0], grid[0][1], grid[1][0]);
	
	printf("Test 2: %d %d\n", grid[1][1], grid[2][2]);
	return (0);
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
The function is intentionally empty. Implement it yourself.
Do not run the test before implementing a non-void function.
Keep implementation functions at or below 25 lines and respect 42 Norm.
*/
