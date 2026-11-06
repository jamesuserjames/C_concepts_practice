#include <stdio.h>

int	ft_is_row_sorted(int grid[3][3], int row)
{
	
}

/*
GOAL:
Return 1 if the selected row is in nondecreasing order.

TODO:
1. Compare adjacent elements of the selected row.
2. Reject any decrease.
3. Allow equal neighbors.

EXPECTED OUTPUT:
Test 1: 1
Test 2: 0
Test 3: 1
*/

int	main(void)
{
	int	grid[3][3] = {
		{1, 2, 2},
		{4, 3, 6},
		{-2, 0, 5}
	};

	printf("Test 1: %d\n", ft_is_row_sorted(grid, 0));
	printf("Test 2: %d\n", ft_is_row_sorted(grid, 1));
	printf("Test 3: %d\n", ft_is_row_sorted(grid, 2));
	return (0);
}

/*
EDGE CASES:
Equal adjacent values are permitted.

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
