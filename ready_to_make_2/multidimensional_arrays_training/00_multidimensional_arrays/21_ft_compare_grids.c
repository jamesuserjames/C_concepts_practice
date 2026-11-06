#include <stdio.h>

int	ft_compare_grids(int a[3][3], int b[3][3])
{
	
}

/*
GOAL:
Return 1 only when all corresponding elements of two grids are equal.

TODO:
1. Traverse the matrices.
2. Compare corresponding coordinates.
3. Return 0 on any mismatch, otherwise 1.

EXPECTED OUTPUT:
Test 1: 1
Test 2: 0
*/

int	main(void)
{
	int	grid[3][3] = {
		{1, 2, 3},
		{4, 5, 6},
		{7, 8, 9}
	};
	int	other[3][3] = {
	{1, 2, 3}, {4, 5, 6}, {7, 8, 9}
	};

	printf("Test 1: %d\n", ft_compare_grids(grid, other));
	other[2][2] = -9;
	printf("Test 2: %d\n", ft_compare_grids(grid, other));
	return (0);
}

/*
EDGE CASES:
A difference in the final cell must be detected.

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
