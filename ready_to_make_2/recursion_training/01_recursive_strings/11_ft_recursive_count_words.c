#include <stdio.h>

int	ft_recursive_count_words(const char *str, int in_word)
{
	
}

/*
GOAL:
Count words separated by literal spaces, tracking whether a word is active.

ALLOWED FUNCTIONS:
none

TODO:
1. Return zero at end of string.
2. Count transitions from space to a non-space.
3. Carry the updated in_word state into recursion.

EXPECTED OUTPUT:
Test 1: 3
Test 2: 1
Test 3: 0
Test 4: 2
*/

int	main(void)
{
	printf("Test 1: %d\n", ft_recursive_count_words("hello world 42", 0));
	printf("Test 2: %d\n", ft_recursive_count_words("   one", 0));
	printf("Test 3: %d\n", ft_recursive_count_words("", 0));
	printf("Test 4: %d\n", ft_recursive_count_words("a  b", 0));
	return (0);
}

/*
EDGE CASES:
Words are separated only by ASCII space, not tabs/newlines.

LEARNING CHECK:
1. When does recursion stop at the NUL terminator?
2. Why can pointer arithmetic replace an explicit loop here?
3. Which condition prevents invalid input in ft_recursive_count_words()?
4. What value or state is carried into the next recursive call?

NOTE:
The function is intentionally empty. Implement it yourself.
Keep implementation functions at or below 25 lines and respect 42 Norm.
*/
