#include <stdio.h>

int	ft_sum_diagonal(int grid[3][3])
{
	
}

/*
GOAL:
Sum the main diagonal (top-left to bottom-right).

TODO:
1. Visit indices 0 through 2.
2. Access the element where row equals column.
3. Return the diagonal sum.

EXPECTED OUTPUT:
Test 1: 15
Test 2: 13
*/

int	main(void)
{
	int	grid[3][3] = {
		{1, 2, 3},
		{4, 5, 6},
		{7, 8, 9}
	};

	printf("Test 1: %d\n", ft_sum_diagonal(grid));
	grid[1][1] = 3;
	printf("Test 2: %d\n", ft_sum_diagonal(grid));
	return (0);
}

/*
EDGE CASES:
Only the three main-diagonal cells contribute.

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
