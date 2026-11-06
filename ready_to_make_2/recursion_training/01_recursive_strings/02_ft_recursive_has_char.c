#include <stdio.h>

int	ft_recursive_has_char(const char *str, char c)
{
	
}

/*
GOAL:
Return one when c occurs before the end of str; zero otherwise.

ALLOWED FUNCTIONS:
none

TODO:
1. Return zero on end of string.
2. Return one immediately on a match.
3. Check the remaining characters recursively.

EXPECTED OUTPUT:
Test 1: 1
Test 2: 0
Test 3: 0
*/

int	main(void)
{
	printf("Test 1: %d\n", ft_recursive_has_char("hello", 'e'));
	printf("Test 2: %d\n", ft_recursive_has_char("hello", 'z'));
	printf("Test 3: %d\n", ft_recursive_has_char("", 'a'));
	return (0);
}

/*
EDGE CASES:
Stop on the first match rather than traversing unnecessarily.

LEARNING CHECK:
1. When does recursion stop at the NUL terminator?
2. Why can pointer arithmetic replace an explicit loop here?
3. Which condition prevents invalid input in ft_recursive_has_char()?
4. What value or state is carried into the next recursive call?

NOTE:
The function is intentionally empty. Implement it yourself.
Keep implementation functions at or below 25 lines and respect 42 Norm.
*/
