#include <stdio.h>

int	ft_count_positive(int grid[3][3])
{
	
}

/*
GOAL:
Count strictly positive values in a matrix.

TODO:
1. Traverse all cells.
2. Test whether each value is greater than zero.
3. Return the number of matches.

EXPECTED OUTPUT:
Test 1: 5
Test 2: 6
*/

int	main(void)
{
	int	grid[3][3] = {
		{-1, 0, 2},
		{3, -4, 5},
		{0, 6, 7}
	};

	printf("Test 1: %d\n", ft_count_positive(grid));
	grid[0][1] = 8;
	printf("Test 2: %d\n", ft_count_positive(grid));
	return (0);
}

/*
EDGE CASES:
Zero does not count as positive.

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
