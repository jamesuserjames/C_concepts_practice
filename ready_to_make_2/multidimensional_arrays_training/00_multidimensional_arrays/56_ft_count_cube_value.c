#include <stdio.h>

int	ft_count_cube_value(int cube[2][2][2], int value)
{
	
}

/*
GOAL:
Count matching values in all layers of a cube.

TODO:
1. Iterate through all three dimensions.
2. Compare each element with value.
3. Return the match count.

EXPECTED OUTPUT:
Test 1: 2
Test 2: 0
*/

int	main(void)
{
	int	cube[2][2][2] = {
		{{1, 2}, {3, 4}},
		{{5, 6}, {7, 8}}
	};
	cube[1][0][0] = 1;

	printf("Test 1: %d\n", ft_count_cube_value(cube, 1));
	printf("Test 2: %d\n", ft_count_cube_value(cube, 9));
	return (0);
}

/*
EDGE CASES:
Zero matches should return zero.

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
