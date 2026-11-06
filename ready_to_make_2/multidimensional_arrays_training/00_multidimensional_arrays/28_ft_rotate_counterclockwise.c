#include <stdio.h>

void	ft_rotate_counterclockwise(int src[3][3], int dest[3][3])
{
	
}

/*
GOAL:
Rotate a 3x3 matrix 90 degrees counterclockwise into dest.

TODO:
1. Determine where the top row moves.
2. Map all source coordinates to destination coordinates.
3. Preserve the source.

EXPECTED OUTPUT:
Test 1: 3 6 9
Test 2: 1 4 7
*/

int	main(void)
{
	int	grid[3][3] = {
			{1, 2, 3},
			{4, 5, 6},
			{7, 8, 9}
		};
	int	dest[3][3] = {{0}};

	ft_rotate_counterclockwise(grid, dest);
	
	printf("Test 1: %d %d %d\n", dest[0][0], dest[0][1], dest[0][2]);
	
	printf("Test 2: %d %d %d\n", dest[2][0], dest[2][1], dest[2][2]);
	return (0);
}

/*
EDGE CASES:
Clockwise and counterclockwise rotations are inverses.

LEARNING CHECK:
1. What does each array index represent?
2. Which dimension should the loop traverse?
3. What happens at the first or last valid index?
4. How would this operation help in a larger matrix algorithm?

NOTE:
The function is intentionally empty. Implement it yourself.
Do not run the test before implementing a non-void function.
Keep implementation functions at or below 25 lines and respect 42 Norm.
*/
