#include <stdio.h>

int	ft_sum_depth(int cube[2][2][2], int row, int col)
{
	
}

/*
GOAL:
Sum corresponding cells at a fixed row and column across both layers.

TODO:
1. Hold row and col constant.
2. Move through each layer.
3. Accumulate the values at that position.

EXPECTED OUTPUT:
Test 1: 6
Test 2: 12
*/

int	main(void)
{
	int	cube[2][2][2] = {
		{{1, 2}, {3, 4}},
		{{5, 6}, {7, 8}}
	};

	printf("Test 1: %d\n", ft_sum_depth(cube, 0, 0));
	printf("Test 2: %d\n", ft_sum_depth(cube, 1, 1));
	return (0);
}

/*
EDGE CASES:
A depth slice follows the layer axis rather than a row or column.

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
