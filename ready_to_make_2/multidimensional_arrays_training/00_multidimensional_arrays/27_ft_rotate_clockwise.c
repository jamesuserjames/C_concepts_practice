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
Test 1: 7 4 1
Test 2: 9 6 3
*/

int	main(void)
{
	int	grid[3][3] = {
			{1, 2, 3},
			{4, 5, 6},
			{7, 8, 9}
		};
	int	dest[3][3] = {{0}};

	ft_rotate_clockwise(grid, dest);
	
	printf("Test 1: %d %d %d\n", dest[0][0], dest[0][1], dest[0][2]);
	
	printf("Test 2: %d %d %d\n", dest[2][0], dest[2][1], dest[2][2]);
	return (0);
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
The function is intentionally empty. Implement it yourself.
Do not run the test before implementing a non-void function.
Keep implementation functions at or below 25 lines and respect 42 Norm.
*/
