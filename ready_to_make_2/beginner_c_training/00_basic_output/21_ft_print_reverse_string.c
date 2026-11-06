#include <unistd.h>
#include <stdio.h>

void	ft_print_reverse_string(const char *str)
{
	
}

/*
GOAL:
Print a string in reverse without modifying the original.

TODO:
1. Determine the string length.
2. Start at the last actual character.
3. Write characters backwards through index zero.

EXPECTED OUTPUT:
Test 1: [madoc]
Test 2: [a]
Test 3: []
*/

int	main(void)
{
	printf("Test 1: [");
	fflush(stdout);
	ft_print_reverse_string("codam");
	printf("]\n");

	printf("Test 2: [");
	fflush(stdout);
	ft_print_reverse_string("a");
	printf("]\n");

	printf("Test 3: [");
	fflush(stdout);
	ft_print_reverse_string("");
	printf("]\n");
	return (0);
}

/*
EDGE CASES:
Handle the empty string without accessing a negative index.

LEARNING CHECK:
1. Why find the string length first?
2. What index contains the last character?
3. How can you avoid reading str[-1]?
4. Does the original string change?

NOTE:
The exercise function is intentionally empty. Implement it yourself.
Complete the function before judging the test results.
Keep implementation functions at or below 25 lines and respect 42 Norm.
*/
