#include <stdio.h>

void	ft_flatten_cube(int cube[2][2][2], int out[8])
{
	
}

/*
GOAL:
Flatten a cube into one array in layer-major, then row-major order.

TODO:
1. Visit each layer in ascending order.
2. Within each layer visit rows then columns.
3. Write eight values to sequential output positions.

EXPECTED OUTPUT:
Test 1: 1 2 3 4 5 6 7 8
*/

int	main(void)
{
	int	cube[2][2][2] = {
		{{1, 2}, {3, 4}},
		{{5, 6}, {7, 8}}
	};
	int	out[8] = {0};
	int	i;

	ft_flatten_cube(cube, out);
	printf("Test 1:");
	i = 0;
	while (i < 8)
	{
		printf(" %d", out[i]);
		i++;
	}
	printf("\n");
	return (0);
}

/*
EDGE CASES:
The first four output values belong to layer zero.

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
