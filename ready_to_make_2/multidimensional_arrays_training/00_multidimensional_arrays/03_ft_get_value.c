#include <stdio.h>

int	ft_get_value(int grid[3][3], int row, int col)
{
	
}

/*
GOAL:
Return the value stored at the requested row and column.

TODO:
1. Identify the row index.
2. Identify the column index.
3. Return the selected integer.

EXPECTED OUTPUT:
Test 1: 6
Test 2: 1
Test 3: 9
*/

int	main(void)
{
	int	grid[3][3] = {
		{1, 2, 3},
		{4, 5, 6},
		{7, 8, 9}
	};

	printf("Test 1: %d\n", ft_get_value(grid, 1, 2));
	printf("Test 2: %d\n", ft_get_value(grid, 0, 0));
	printf("Test 3: %d\n", ft_get_value(grid, 2, 2));
	return (0);
}

/*
EDGE CASES:
The caller supplies valid indices in the range 0 to 2.

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
