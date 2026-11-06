#include <stdio.h>

int	ft_sum_antidiagonal(int grid[3][3])
{
	
}

/*
GOAL:
Sum the anti-diagonal (top-right to bottom-left).

TODO:
1. Traverse row indices 0 through 2.
2. Pair each row with column 2 minus row.
3. Accumulate the selected values.

EXPECTED OUTPUT:
Test 1: 15
Test 2: 20
*/

int	main(void)
{
	int	grid[3][3] = {
		{1, 2, 3},
		{4, 5, 6},
		{7, 8, 9}
	};

	printf("Test 1: %d\n", ft_sum_antidiagonal(grid));
	grid[0][2] = 8;
	printf("Test 2: %d\n", ft_sum_antidiagonal(grid));
	return (0);
}

/*
EDGE CASES:
For odd dimensions, both diagonals meet in the center.

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
