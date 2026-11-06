#include <stdio.h>

int	ft_cube_get(int cube[2][2][2], int layer, int row, int col)
{
	
}

/*
GOAL:
Return one value from a 2x2x2 integer cube.

TODO:
1. Choose the layer.
2. Choose a row within the layer.
3. Choose a column and return its value.

EXPECTED OUTPUT:
Test 1: 6
Test 2: 1
Test 3: 8
*/

int	main(void)
{
	int	cube[2][2][2] = {
		{{1, 2}, {3, 4}},
		{{5, 6}, {7, 8}}
	};

	printf("Test 1: %d\n", ft_cube_get(cube, 1, 0, 1));
	printf("Test 2: %d\n", ft_cube_get(cube, 0, 0, 0));
	printf("Test 3: %d\n", ft_cube_get(cube, 1, 1, 1));
	return (0);
}

/*
EDGE CASES:
All three indices must remain within 0 and 1.

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
