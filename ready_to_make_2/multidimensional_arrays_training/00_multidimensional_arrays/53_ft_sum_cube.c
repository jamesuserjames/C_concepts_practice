#include <stdio.h>

int	ft_sum_cube(int cube[2][2][2])
{
	
}

/*
GOAL:
Sum all eight values in a 2x2x2 cube.

TODO:
1. Loop across layers.
2. Traverse rows and columns inside each layer.
3. Return the accumulated total.

EXPECTED OUTPUT:
Test 1: 36
Test 2: 35
*/

int	main(void)
{
	int	cube[2][2][2] = {
		{{1, 2}, {3, 4}},
		{{5, 6}, {7, 8}}
	};

	printf("Test 1: %d\n", ft_sum_cube(cube));
	cube[0][0][0] = 0;
	printf("Test 2: %d\n", ft_sum_cube(cube));
	return (0);
}

/*
EDGE CASES:
Every coordinate must be included once.

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
