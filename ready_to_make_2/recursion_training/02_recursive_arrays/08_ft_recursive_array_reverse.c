#include <stdio.h>

void	ft_recursive_array_reverse(int *arr, int left, int right)
{
	
}

/*
GOAL:
Reverse array elements in place between inclusive indices.

ALLOWED FUNCTIONS:
none

TODO:
1. Stop when left >= right.
2. Swap the two outer elements.
3. Recurse inward using left + 1 and right - 1.

EXPECTED OUTPUT:
Test 1: 5 4 3 2 1
Test 2: 9 8 7 6
*/

int	main(void)
{
	int odd[5] = {1, 2, 3, 4, 5};
	int even[4] = {6, 7, 8, 9};

	ft_recursive_array_reverse(odd, 0, 4);
	printf("Test 1: %d %d %d %d %d\n", odd[0], odd[1], odd[2], odd[3], odd[4]);

	ft_recursive_array_reverse(even, 0, 3);
	printf("Test 2: %d %d %d %d\n", even[0], even[1], even[2], even[3]);
	return (0);
}

/*
EDGE CASES:
Indices must be within the array; zero/one-length ranges need no swaps.

LEARNING CHECK:
1. How do you advance a pointer without losing array bounds?
2. How is the untouched part of the array represented recursively?
3. Which condition prevents invalid input in ft_recursive_array_reverse()?
4. What value or state is carried into the next recursive call?

NOTE:
The function is intentionally empty. Implement it yourself.
Keep implementation functions at or below 25 lines and respect 42 Norm.
*/
