#include <stdio.h>

int	ft_recursive_is_sorted(const int *arr, int size)
{
	
}

/*
GOAL:
Return one when the array is sorted in nondecreasing order.

ALLOWED FUNCTIONS:
none

TODO:
1. Return one for zero or one element.
2. Compare adjacent elements.
3. Recurse with the next pair when ordered.

EXPECTED OUTPUT:
Test 1: 1
Test 2: 0
Test 3: 1
*/

int	main(void)
{
	int ordered[4] = {1, 2, 2, 4};
	int unordered[4] = {1, 3, 2, 4};

	printf("Test 1: %d\n", ft_recursive_is_sorted(ordered, 4));
	printf("Test 2: %d\n", ft_recursive_is_sorted(unordered, 4));
	printf("Test 3: %d\n", ft_recursive_is_sorted(ordered, 0));
	return (0);
}

/*
EDGE CASES:
Equal neighbors are permitted; never access arr[1] when size < 2.

LEARNING CHECK:
1. How do you advance a pointer without losing array bounds?
2. How is the untouched part of the array represented recursively?
3. Which condition prevents invalid input in ft_recursive_is_sorted()?
4. What value or state is carried into the next recursive call?

NOTE:
The function is intentionally empty. Implement it yourself.
Keep implementation functions at or below 25 lines and respect 42 Norm.
*/
