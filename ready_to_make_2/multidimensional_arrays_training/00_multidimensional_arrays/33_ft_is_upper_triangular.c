#include <stdio.h>

int	ft_is_upper_triangular(int grid[3][3])
{
	
}

/*
GOAL:
Check whether all elements below the main diagonal are zero.

TODO:
1. Identify cells where row is greater than column.
2. Check those cells for zero.
3. Return 0 on a violation.

EXPECTED OUTPUT:
Test 1: 1
Test 2: 0
*/

int	main(void)
{
	int	grid[3][3] = {
		{1, 2, 3},
		{0, 4, 5},
		{0, 0, 6}
	};

	printf("Test 1: %d\n", ft_is_upper_triangular(grid));
	grid[2][0] = 9;
	printf("Test 2: %d\n", ft_is_upper_triangular(grid));
	return (0);
}

/*
EDGE CASES:
The diagonal and cells above it may contain any value.

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
