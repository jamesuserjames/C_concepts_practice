#include <stdio.h>

int	ft_find_value(int grid[3][3], int value, int *row, int *col)
{
	
}

/*
GOAL:
Find the first matching value in row-major order and store its coordinates.

TODO:
1. Search rows top to bottom.
2. Search columns left to right.
3. Store coordinates and return 1, or return 0 if absent.

EXPECTED OUTPUT:
Test 1: 1 (0, 1)
Test 2: 0
*/

int	main(void)
{
	int	grid[3][3] = {
		{1, 2, 3},
		{2, 3, 2},
		{1, 2, 1}
	};
	int	row = -1;
	int	col = -1;

	printf("Test 1: ");
	if (ft_find_value(grid, 2, &row, &col))
		printf("1 (%d, %d)\n", row, col);
	printf("Test 2: %d\n", ft_find_value(grid, 9, &row, &col));
	return (0);
}

/*
EDGE CASES:
Do not change output pointers on an unsuccessful search.

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
