#include <stdio.h>

int	ft_recursive_array_find(const int *arr, int size, int value)
{
	
}

/*
GOAL:
Return the first zero-based index of value, or -1 if not present.

ALLOWED FUNCTIONS:
none

TODO:
1. Return -1 when size is zero.
2. Return zero if arr[0] matches.
3. Recursively search the rest and adjust a found index.

EXPECTED OUTPUT:
Test 1: 1
Test 2: 4
Test 3: -1
*/

int	main(void)
{
	int values[5] = {4, 7, 2, 7, 9};

	printf("Test 1: %d\n", ft_recursive_array_find(values, 5, 7));
	printf("Test 2: %d\n", ft_recursive_array_find(values, 5, 9));
	printf("Test 3: %d\n", ft_recursive_array_find(values, 5, 3));
	return (0);
}

/*
EDGE CASES:
Multiple matches return the first index; preserve -1 on failure.

LEARNING CHECK:
1. How do you advance a pointer without losing array bounds?
2. How is the untouched part of the array represented recursively?
3. Which condition prevents invalid input in ft_recursive_array_find()?
4. What value or state is carried into the next recursive call?

NOTE:
The function is intentionally empty. Implement it yourself.
Keep implementation functions at or below 25 lines and respect 42 Norm.
*/
