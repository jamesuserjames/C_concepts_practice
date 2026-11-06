#include <unistd.h>
#include <stdio.h>

void	ft_print_newline(void)
{
	write(1, "\n", 1);
}

/*
GOAL:
Write exactly one newline character.

TODO:
1. Identify the newline escape sequence.
2. Write that byte to stdout.
3. Avoid printing any extra spaces.

EXPECTED OUTPUT:
Test 1: [\n]
*/

int	main(void)
{
	printf("Test 1: [");
	fflush(stdout);
	ft_print_newline();
	printf("]\n");
	return (0);
}

/*
EDGE CASES:
The visible output moves to the following terminal line.

LEARNING CHECK:
1. What does '\n' represent?
2. How many bytes is a newline here?
3. Does write() add newlines automatically?
4. Why might printing functions avoid implicit newlines?

NOTE:
The exercise function is intentionally empty. Implement it yourself.
Complete the function before judging the test results.
Keep implementation functions at or below 25 lines and respect 42 Norm.
*/
