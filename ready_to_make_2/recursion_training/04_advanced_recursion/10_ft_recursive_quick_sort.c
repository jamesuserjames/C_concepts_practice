#include <stdio.h>

void	ft_recursive_quick_sort(int *arr, int left, int right)
{
	
}

/*
GOAL:
Sort an inclusive array range ascending using recursive quicksort.

ALLOWED FUNCTIONS:
none

TODO:
1. Stop at ranges with at most one value.
2. Partition values around a chosen pivot.
3. Recursively sort subranges on both sides.

EXPECTED OUTPUT:
Test 1: -1 0 2 2 5 8
Test 2: 9
*/

int	main(void)
{
	int values[6] = {8, 2, -1, 5, 2, 0};
	int single[1] = {9};

	ft_recursive_quick_sort(values, 0, 5);
	printf("Test 1: %d %d %d %d %d %d\n", values[0], values[1],
		values[2], values[3], values[4], values[5]);

	ft_recursive_quick_sort(single, 0, 0);
	printf("Test 2: %d\n", single[0]);
	return (0);
}

/*
EDGE CASES:
Partition correctly when duplicates exist; avoid reading beyond the range.

LEARNING CHECK:
1. How does the recursive decomposition differ from a simple loop?
2. Where does the algorithm branch or combine smaller results?
3. Which condition prevents invalid input in ft_recursive_quick_sort()?
4. What value or state is carried into the next recursive call?

NOTE:
The function is intentionally empty. Implement it yourself.
Keep implementation functions at or below 25 lines and respect 42 Norm.
*/
