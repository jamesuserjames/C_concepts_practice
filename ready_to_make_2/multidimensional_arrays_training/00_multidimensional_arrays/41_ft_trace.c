#include <stdio.h>

int	ft_trace(int grid[3][3])
{
	
}

/*
GOAL:
Return the trace, the sum of the main diagonal.

TODO:
1. Read diagonal entries only.
2. Accumulate their values.
3. Return the total.

EXPECTED OUTPUT:
Test 1: 15
Test 2: 10
*/

int	main(void)
{
	int	grid[3][3] = {
		{1, 2, 3},
		{4, 5, 6},
		{7, 8, 9}
	};

	printf("Test 1: %d\n", ft_trace(grid));
	grid[2][2] = 4;
	printf("Test 2: %d\n", ft_trace(grid));
	return (0);
}

/*
EDGE CASES:
The trace ignores all off-diagonal elements.

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
