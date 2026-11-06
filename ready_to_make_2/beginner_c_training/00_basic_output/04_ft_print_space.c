#include <unistd.h>
#include <stdio.h>

void	ft_print_space(void)
{
	
}

/*
GOAL:
Print exactly one space character.

TODO:
1. Use the space character.
2. Write it to stdout.
3. Print nothing before or after it.

EXPECTED OUTPUT:
Test 1: [ ]
*/

int	main(void)
{
	printf("Test 1: [");
	fflush(stdout);
	ft_print_space();
	printf("]\n");
	return (0);
}

/*
EDGE CASES:
A space is invisible; the surrounding brackets expose it.

LEARNING CHECK:
1. What is a space character?
2. How can brackets help you test invisible output?
3. Is a space the same as NUL?
4. How is it different from a newline?

NOTE:
The exercise function is intentionally empty. Implement it yourself.
Complete the function before judging the test results.
Keep implementation functions at or below 25 lines and respect 42 Norm.
*/
