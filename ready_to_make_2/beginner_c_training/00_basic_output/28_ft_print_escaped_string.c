#include <unistd.h>
#include <stdio.h>

void	ft_print_escaped_string(const char *str)
{
	
}

/*
GOAL:
Print text while replacing newline, tab, and backslash with \n, \t, and \\.

TODO:
1. Read each character in order.
2. For newline, tab, or backslash write the matching escape sequence.
3. Write other characters unchanged.

EXPECTED OUTPUT:
Test 1: [Hi\nthere]
Test 2: [a\tb]
Test 3: [a\\b]
*/

int	main(void)
{
	printf("Test 1: [");
	fflush(stdout);
	ft_print_escaped_string("Hi\nthere");
	printf("]\n");

	printf("Test 2: [");
	fflush(stdout);
	ft_print_escaped_string("a\tb");
	printf("]\n");

	printf("Test 3: [");
	fflush(stdout);
	ft_print_escaped_string("a\\b");
	printf("]\n");
	return (0);
}

/*
EDGE CASES:
Do not print actual newlines or tabs for escaped characters.

LEARNING CHECK:
1. How is a newline byte different from a backslash followed by n?
2. Why does a backslash need escaping?
3. How many output bytes represent one newline?
4. What should happen to ordinary letters?

NOTE:
The exercise function is intentionally empty. Implement it yourself.
Complete the function before judging the test results.
Keep implementation functions at or below 25 lines and respect 42 Norm.
*/
