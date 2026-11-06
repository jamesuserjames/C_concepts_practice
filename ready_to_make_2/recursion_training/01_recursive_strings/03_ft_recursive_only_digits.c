#include <stdio.h>

int	ft_recursive_only_digits(const char *str)
{
	
}

/*
GOAL:
Return one if every character is an ASCII digit, including empty string.

ALLOWED FUNCTIONS:
none

TODO:
1. Return one on end of string.
2. Reject any character outside 0..9.
3. Recurse with the next character.

EXPECTED OUTPUT:
Test 1: 1
Test 2: 0
Test 3: 1
*/

int	main(void)
{
	printf("Test 1: %d\n", ft_recursive_only_digits("12345"));
	printf("Test 2: %d\n", ft_recursive_only_digits("12a45"));
	printf("Test 3: %d\n", ft_recursive_only_digits(""));
	return (0);
}

/*
EDGE CASES:
An empty string satisfies the all-characters condition.

LEARNING CHECK:
1. When does recursion stop at the NUL terminator?
2. Why can pointer arithmetic replace an explicit loop here?
3. Which condition prevents invalid input in ft_recursive_only_digits()?
4. What value or state is carried into the next recursive call?

NOTE:
The function is intentionally empty. Implement it yourself.
Keep implementation functions at or below 25 lines and respect 42 Norm.
*/
