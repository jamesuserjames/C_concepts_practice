#include <stdio.h>

int	ft_recursive_binary_search(const int *arr, int left, int right, int value)
{
	
}

/*
GOAL:
Return a target index in a sorted array using recursive binary search.

ALLOWED FUNCTIONS:
none

TODO:
1. Return -1 when left exceeds right.
2. Compare value with the middle element.
3. Recurse only into the appropriate half.

EXPECTED OUTPUT:
Test 1: 4
Test 2: 0
Test 3: -1
*/

int	main(void)
{
	int values[6] = {-3, 0, 2, 5, 9, 12};

	printf("Test 1: %d\n", ft_recursive_binary_search(values, 0, 5, 9));
	printf("Test 2: %d\n", ft_recursive_binary_search(values, 0, 5, -3));
	printf("Test 3: %d\n", ft_recursive_binary_search(values, 0, 5, 7));
	return (0);
}

/*
EDGE CASES:
Array is sorted ascending and contains no duplicate values.

LEARNING CHECK:
1. How do you advance a pointer without losing array bounds?
2. How is the untouched part of the array represented recursively?
3. Which condition prevents invalid input in ft_recursive_binary_search()?
4. What value or state is carried into the next recursive call?

NOTE:
The function is intentionally empty. Implement it yourself.
Keep implementation functions at or below 25 lines and respect 42 Norm.
*/
