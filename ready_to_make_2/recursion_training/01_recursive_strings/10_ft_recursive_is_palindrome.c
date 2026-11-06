#include <stdio.h>

int	ft_recursive_is_palindrome(const char *str, int left, int right)
{
	
}

/*
GOAL:
Determine whether characters between left and right form a palindrome.

ALLOWED FUNCTIONS:
none

TODO:
1. Return one once the indices meet or cross.
2. Return zero when opposite characters differ.
3. Recurse inward from both ends.

EXPECTED OUTPUT:
Test 1: 1
Test 2: 0
Test 3: 1
*/

int	main(void)
{
	printf("Test 1: %d\n", ft_recursive_is_palindrome("level", 0, 4));
	printf("Test 2: %d\n", ft_recursive_is_palindrome("hello", 0, 4));
	printf("Test 3: %d\n", ft_recursive_is_palindrome("", 0, -1));
	return (0);
}

/*
EDGE CASES:
Indices are valid for the given string; an empty range is palindromic.

LEARNING CHECK:
1. When does recursion stop at the NUL terminator?
2. Why can pointer arithmetic replace an explicit loop here?
3. Which condition prevents invalid input in ft_recursive_is_palindrome()?
4. What value or state is carried into the next recursive call?

NOTE:
The function is intentionally empty. Implement it yourself.
Keep implementation functions at or below 25 lines and respect 42 Norm.
*/
