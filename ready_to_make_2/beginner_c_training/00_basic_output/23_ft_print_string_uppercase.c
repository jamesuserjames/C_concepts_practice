#include <unistd.h>
#include <stdio.h>

void	ft_print_string_uppercase(const char *str)
{
	
}

/*
GOAL:
Print a string with ASCII lowercase letters converted to uppercase, without modifying it.

TODO:
1. Read each input character.
2. Convert only 'a' through 'z'.
3. Write the converted character.

EXPECTED OUTPUT:
Test 1: [HELLO!]
Test 2: [ABC123]
Test 3: []
*/

int	main(void)
{
	printf("Test 1: [");
	fflush(stdout);
	ft_print_string_uppercase("Hello!");
	printf("]\n");

	printf("Test 2: [");
	fflush(stdout);
	ft_print_string_uppercase("abc123");
	printf("]\n");

	printf("Test 3: [");
	fflush(stdout);
	ft_print_string_uppercase("");
	printf("]\n");
	return (0);
}

/*
EDGE CASES:
Digits, punctuation, and empty strings are valid inputs.

LEARNING CHECK:
1. What ASCII range requires conversion?
2. Why should the original string stay unchanged?
3. How do digits behave?
4. How does this build on single-character conversion?

NOTE:
The exercise function is intentionally empty. Implement it yourself.
Complete the function before judging the test results.
Keep implementation functions at or below 25 lines and respect 42 Norm.
*/
