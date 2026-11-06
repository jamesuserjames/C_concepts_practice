#include <stdio.h>

int	ft_recursive_count_char(const char *str, char c)
{
	
}

/*
GOAL:
Count occurrences of c in a NUL-terminated string.

ALLOWED FUNCTIONS:
none

TODO:
1. Stop at the string terminator.
2. Add one if the current character matches c.
3. Recurse on the remaining string.

EXPECTED OUTPUT:
Test 1: 3
Test 2: 0
Test 3: 0
*/

int	main(void)
{
	printf("Test 1: %d\n", ft_recursive_count_char("banana", 'a'));
	printf("Test 2: %d\n", ft_recursive_count_char("banana", 'x'));
	printf("Test 3: %d\n", ft_recursive_count_char("", 'a'));
	return (0);
}

/*
EDGE CASES:
The NUL terminator is not counted as an occurrence.

LEARNING CHECK:
1. When does recursion stop at the NUL terminator?
2. Why can pointer arithmetic replace an explicit loop here?
3. Which condition prevents invalid input in ft_recursive_count_char()?
4. What value or state is carried into the next recursive call?

NOTE:
The function is intentionally empty. Implement it yourself.
Keep implementation functions at or below 25 lines and respect 42 Norm.
*/
