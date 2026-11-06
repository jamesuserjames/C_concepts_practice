#include <stdio.h>

void	ft_flip_horizontal(int grid[3][3])
{
	
}

/*
GOAL:
Mirror a matrix left to right in place.

TODO:
1. Visit each row.
2. Swap elements on opposite sides.
3. Keep the center column unchanged.

EXPECTED OUTPUT:
Test 1: 3 2 1
Test 2: 9 8 7
*/

int	main(void)
{
	int	grid[3][3] = {
			{1, 2, 3},
			{4, 5, 6},
			{7, 8, 9}
		};

	ft_flip_horizontal(grid);
	
	printf("Test 1: %d %d %d\n", grid[0][0], grid[0][1], grid[0][2]);
	
	printf("Test 2: %d %d %d\n", grid[2][0], grid[2][1], grid[2][2]);
	return (0);
}

/*
EDGE CASES:
A second horizontal flip would restore the original matrix.

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
