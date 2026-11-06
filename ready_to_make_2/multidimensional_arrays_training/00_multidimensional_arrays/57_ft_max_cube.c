#include <stdio.h>

int	ft_max_cube(int cube[2][2][2])
{
	
}

/*
GOAL:
Find the maximum element in a cube across all layers.

TODO:
1. Initialize with an existing cube value.
2. Compare every element in three nested loops.
3. Return the largest value.

EXPECTED OUTPUT:
Test 1: 8
Test 2: 42
*/

int	main(void)
{
	int	cube[2][2][2] = {
		{{1, 2}, {3, 4}},
		{{5, 6}, {7, 8}}
	};

	printf("Test 1: %d\n", ft_max_cube(cube));
	cube[0][1][0] = 42;
	printf("Test 2: %d\n", ft_max_cube(cube));
	return (0);
}

/*
EDGE CASES:
The maximum may occur in any layer.

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
