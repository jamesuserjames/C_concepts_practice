#include <stdio.h>

int	ft_recursive_strlen(const char *str)
{
	
}

/*
GOAL:
Count characters before the terminating NUL using pointer recursion.

ALLOWED FUNCTIONS:
none

TODO:
1. Detect the end of the string.
2. Advance to str + 1.
3. Add one on the way back.

EXPECTED OUTPUT:
Test 1: 5
Test 2: 0
Test 3: 2
*/

int	main(void)
{
	printf("Test 1: %d\n", ft_recursive_strlen("hello"));
	printf("Test 2: %d\n", ft_recursive_strlen(""));
	printf("Test 3: %d\n", ft_recursive_strlen("42"));
	return (0);
}

/*
EDGE CASES:
String arguments are valid NUL-terminated strings.

LEARNING CHECK:
1. When does recursion stop at the NUL terminator?
2. Why can pointer arithmetic replace an explicit loop here?
3. Which condition prevents invalid input in ft_recursive_strlen()?
4. What value or state is carried into the next recursive call?

NOTE:
The function is intentionally empty. Implement it yourself.
Keep implementation functions at or below 25 lines and respect 42 Norm.
*/
