#include <stdio.h>

int	ft_column_min_index(int grid[3][3], int col)
{
	
}

/*
GOAL:
Return the row index of the first minimum in a selected column.

TODO:
1. Start with row zero as the best index.
2. Compare later rows in the column.
3. Return the earliest minimum index.

EXPECTED OUTPUT:
Test 1: 1
Test 2: 0
*/

int	main(void)
{
	int	grid[3][3] = {
		{5, -2, 0},
		{3, -3, 4},
		{3, -3, 7}
	};

	printf("Test 1: %d\n", ft_column_min_index(grid, 0));
	printf("Test 2: %d\n", ft_column_min_index(grid, 2));
	return (0);
}

/*
EDGE CASES:
A tied minimum should select the first row containing it.

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
