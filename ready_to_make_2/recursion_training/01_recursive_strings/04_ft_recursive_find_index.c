#include <stdio.h>

int	ft_recursive_find_index(const char *str, char c, int index)
{
	
}

/*
GOAL:
Return the first index of c from the current position, or -1 if absent.

ALLOWED FUNCTIONS:
none

TODO:
1. Return -1 at the terminator.
2. Return index on the first match.
3. Advance str and index recursively.

EXPECTED OUTPUT:
Test 1: 2
Test 2: -1
Test 3: -1
*/

int	main(void)
{
	printf("Test 1: %d\n", ft_recursive_find_index("hello", 'l', 0));
	printf("Test 2: %d\n", ft_recursive_find_index("hello", 'z', 0));
	printf("Test 3: %d\n", ft_recursive_find_index("", 'a', 0));
	return (0);
}

/*
EDGE CASES:
Index starts at zero; the search stops before the terminator.

LEARNING CHECK:
1. When does recursion stop at the NUL terminator?
2. Why can pointer arithmetic replace an explicit loop here?
3. Which condition prevents invalid input in ft_recursive_find_index()?
4. What value or state is carried into the next recursive call?

NOTE:
The function is intentionally empty. Implement it yourself.
Keep implementation functions at or below 25 lines and respect 42 Norm.
*/
