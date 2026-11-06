#include <stdio.h>

int	ft_count_value(int grid[3][3], int value)
{
	
}

/*
GOAL:
Count occurrences of a selected value.

TODO:
1. Visit each cell.
2. Compare with value.
3. Count all matches.

EXPECTED OUTPUT:
Test 1: 4
Test 2: 0
Test 3: 3
*/

int	main(void)
{
	int	grid[3][3] = {
		{1, 2, 3},
		{2, 3, 2},
		{1, 2, 1}
	};

	printf("Test 1: %d\n", ft_count_value(grid, 2));
	printf("Test 2: %d\n", ft_count_value(grid, 9));
	printf("Test 3: %d\n", ft_count_value(grid, 1));
	return (0);
}

/*
EDGE CASES:
Return zero when no element matches.

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
