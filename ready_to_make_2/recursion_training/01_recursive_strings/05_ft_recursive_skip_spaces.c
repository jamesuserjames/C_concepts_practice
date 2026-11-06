#include <stdio.h>

const char *ft_recursive_skip_spaces(const char *str)
{
	
}

/*
GOAL:
Return a pointer to the first character that is not an ASCII space.

ALLOWED FUNCTIONS:
none

TODO:
1. Return str at a non-space or at NUL.
2. Skip one leading space.
3. Return the recursive result.

EXPECTED OUTPUT:
Test 1: [hello]
Test 2: [world]
Test 3: []
*/

int	main(void)
{
	printf("Test 1: [%s]\n", ft_recursive_skip_spaces("   hello"));
	printf("Test 2: [%s]\n", ft_recursive_skip_spaces("world"));
	printf("Test 3: [%s]\n", ft_recursive_skip_spaces("   "));
	return (0);
}

/*
EDGE CASES:
Only literal space character is skipped; other whitespace remains.

LEARNING CHECK:
1. When does recursion stop at the NUL terminator?
2. Why can pointer arithmetic replace an explicit loop here?
3. Which condition prevents invalid input in ft_recursive_skip_spaces()?
4. What value or state is carried into the next recursive call?

NOTE:
The function is intentionally empty. Implement it yourself.
Keep implementation functions at or below 25 lines and respect 42 Norm.
*/
