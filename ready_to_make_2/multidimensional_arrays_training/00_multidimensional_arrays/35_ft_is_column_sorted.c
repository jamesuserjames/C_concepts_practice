#include <stdio.h>

int	ft_is_column_sorted(int grid[3][3], int col)
{
	
}

/*
GOAL:
Return 1 if a column is sorted top to bottom in nondecreasing order.

TODO:
1. Compare values from successive rows in one column.
2. Reject a downward decrease.
3. Accept equal neighbors.

EXPECTED OUTPUT:
Test 1: 1
Test 2: 0
*/

int	main(void)
{
	int	grid[3][3] = {
		{1, 7, 3},
		{2, 4, 4},
		{3, 5, 5}
	};

	printf("Test 1: %d\n", ft_is_column_sorted(grid, 0));
	printf("Test 2: %d\n", ft_is_column_sorted(grid, 1));
	return (0);
}

/*
EDGE CASES:
Rows can be unsorted even when a selected column is sorted.

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
