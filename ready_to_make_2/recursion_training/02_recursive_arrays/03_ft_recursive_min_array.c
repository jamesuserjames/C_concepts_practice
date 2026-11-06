#include <stdio.h>

int	ft_recursive_min_array(const int *arr, int size)
{
	
}

/*
GOAL:
Return the smallest array element; return zero when size is zero.

ALLOWED FUNCTIONS:
none

TODO:
1. Handle an empty range.
2. Return the first value when size is one.
3. Compare it with the recursive minimum of the rest.

EXPECTED OUTPUT:
Test 1: 1
Test 2: -3
Test 3: 0
*/

int	main(void)
{
	int values[4] = {4, 2, 9, 1};
	int single[1] = {-3};

	printf("Test 1: %d\n", ft_recursive_min_array(values, 4));
	printf("Test 2: %d\n", ft_recursive_min_array(single, 1));
	printf("Test 3: %d\n", ft_recursive_min_array(values, 0));
	return (0);
}

/*
EDGE CASES:
Do not compare against a fabricated zero for nonempty negative arrays.

LEARNING CHECK:
1. How do you advance a pointer without losing array bounds?
2. How is the untouched part of the array represented recursively?
3. Which condition prevents invalid input in ft_recursive_min_array()?
4. What value or state is carried into the next recursive call?

NOTE:
The function is intentionally empty. Implement it yourself.
Keep implementation functions at or below 25 lines and respect 42 Norm.
*/
