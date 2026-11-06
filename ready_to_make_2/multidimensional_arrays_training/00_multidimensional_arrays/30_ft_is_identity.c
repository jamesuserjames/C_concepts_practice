#include <stdio.h>

int	ft_is_identity(int grid[3][3])
{
	
}

/*
GOAL:
Return 1 if a 3x3 matrix is an identity matrix.

TODO:
1. Expect 1 on the main diagonal.
2. Expect 0 everywhere else.
3. Return 0 for any mismatch.

EXPECTED OUTPUT:
Test 1: 1
Test 2: 0
*/

int	main(void)
{
	int	grid[3][3] = {
		{1, 0, 0},
		{0, 1, 0},
		{0, 0, 1}
	};

	printf("Test 1: %d\n", ft_is_identity(grid));
	grid[0][1] = 4;
	printf("Test 2: %d\n", ft_is_identity(grid));
	return (0);
}

/*
EDGE CASES:
An identity matrix has exactly three ones and six zeros.

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
