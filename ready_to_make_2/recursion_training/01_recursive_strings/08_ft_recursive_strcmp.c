#include <stdio.h>

int	ft_recursive_strcmp(const char *s1, const char *s2)
{
	
}

/*
GOAL:
Compare strings lexicographically as strcmp does, recursively.

ALLOWED FUNCTIONS:
none

TODO:
1. Compare current bytes as unsigned char.
2. Return their difference if unequal or at end.
3. Otherwise recurse with both pointers advanced.

EXPECTED OUTPUT:
Test 1: 0
Test 2: 1
Test 3: 1
*/

int	main(void)
{
	printf("Test 1: %d\n", ft_recursive_strcmp("abc", "abc"));
	printf("Test 2: %d\n", ft_recursive_strcmp("abc", "abd") < 0);
	printf("Test 3: %d\n", ft_recursive_strcmp("abd", "abc") > 0);
	return (0);
}

/*
EDGE CASES:
Only the sign of unequal results matters; compare unsigned bytes.

LEARNING CHECK:
1. When does recursion stop at the NUL terminator?
2. Why can pointer arithmetic replace an explicit loop here?
3. Which condition prevents invalid input in ft_recursive_strcmp()?
4. What value or state is carried into the next recursive call?

NOTE:
The function is intentionally empty. Implement it yourself.
Keep implementation functions at or below 25 lines and respect 42 Norm.
*/
