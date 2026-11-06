#include <stdio.h>

void	ft_transpose_rectangle(int src[2][3], int dest[3][2])
{
	
}

/*
GOAL:
Transpose a rectangular 2x3 matrix into a 3x2 matrix.

TODO:
1. Track row and column bounds separately.
2. Write each source element to reversed indices.
3. Verify both dimensions of the result.

EXPECTED OUTPUT:
Test 1: 1 4
Test 2: 3 6
*/

int	main(void)
{
	int	grid[2][3] = {
			{1, 2, 3},
			{4, 5, 6}
		};
	int	dest[3][2] = {{0}};

	ft_transpose_rectangle(grid, dest);
	
	printf("Test 1: %d %d\n", dest[0][0], dest[0][1]);
	
	printf("Test 2: %d %d\n", dest[2][0], dest[2][1]);
	return (0);
}

/*
EDGE CASES:
A rectangle changes shape when transposed; unlike a square, dimensions swap.

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
