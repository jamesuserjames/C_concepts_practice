#include <stdio.h>

int	ft_recursive_array_max(const int *arr, int size)
{
	
}

/*
GOAL:
Return the greatest array element; return zero when size is zero.

ALLOWED FUNCTIONS:
none

TODO:
1. Handle zero-sized input separately.
2. Return arr[0] for a single element.
3. Compare arr[0] with the maximum of the remainder.

EXPECTED OUTPUT:
Test 1: 9
Test 2: -4
Test 3: 0
*/

int	main(void)
{
	int values[4] = {3, 9, 2, 5};
	int single[1] = {-4};

	printf("Test 1: %d\n", ft_recursive_array_max(values, 4));
	printf("Test 2: %d\n", ft_recursive_array_max(single, 1));
	printf("Test 3: %d\n", ft_recursive_array_max(values, 0));
	return (0);
}

/*
EDGE CASES:
The zero-sized return is a specified sentinel, not a mathematical maximum.

LEARNING CHECK:
1. How do you advance a pointer without losing array bounds?
2. How is the untouched part of the array represented recursively?
3. Which condition prevents invalid input in ft_recursive_array_max()?
4. What value or state is carried into the next recursive call?

NOTE:
The function is intentionally empty. Implement it yourself.
Keep implementation functions at or below 25 lines and respect 42 Norm.
*/
