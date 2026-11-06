#include <stdio.h>

int	ft_sum_layer(int cube[2][2][2], int layer)
{
	
}

/*
GOAL:
Sum the four elements of a single 2x2 layer.

TODO:
1. Keep the layer index fixed.
2. Traverse its two rows and two columns.
3. Return the sum.

EXPECTED OUTPUT:
Test 1: 10
Test 2: 26
*/

int	main(void)
{
	int	cube[2][2][2] = {
		{{1, 2}, {3, 4}},
		{{5, 6}, {7, 8}}
	};

	printf("Test 1: %d\n", ft_sum_layer(cube, 0));
	printf("Test 2: %d\n", ft_sum_layer(cube, 1));
	return (0);
}

/*
EDGE CASES:
The caller supplies a valid layer index.

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
