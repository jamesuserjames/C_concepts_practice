#include <unistd.h>
#include <stdio.h>

void	ft_print_non_printable(const char *str)
{
	
}

/*
GOAL:
Print normal bytes as-is, but render control bytes below 32 or byte 127 as lowercase \xHH.

TODO:
1. Iterate through the input string.
2. Detect bytes below 32 or equal to 127.
3. For nonprintable bytes output backslash, x, and two hex digits.

EXPECTED OUTPUT:
Test 1: [A\x0aB]
Test 2: [X\x09Y]
Test 3: [Hi!]
*/

int	main(void)
{
	printf("Test 1: [");
	fflush(stdout);
	ft_print_non_printable("A\nB");
	printf("]\n");

	printf("Test 2: [");
	fflush(stdout);
	ft_print_non_printable("X\tY");
	printf("]\n");

	printf("Test 3: [");
	fflush(stdout);
	ft_print_non_printable("Hi!");
	printf("]\n");
	return (0);
}

/*
EDGE CASES:
Treat input bytes as unsigned; a backslash in normal text is printable.

LEARNING CHECK:
1. Why does newline need an escaped representation?
2. How many characters make up \x0a?
3. Why print hex with two digits?
4. Which input bytes count as control characters?

NOTE:
The exercise function is intentionally empty. Implement it yourself.
Complete the function before judging the test results.
Keep implementation functions at or below 25 lines and respect 42 Norm.
*/
