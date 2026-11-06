#include <unistd.h>
#include <stdio.h>

void	ft_print_char(char c)
{
	
}

/*
GOAL:
Print the character passed as an argument.

TODO:
1. Use the supplied character c.
2. Pass its address to write().
3. Output only one byte per call.

EXPECTED OUTPUT:
Test 1: [A]
Test 2: [0]
Test 3: [!]
*/

int	main(void)
{
	printf("Test 1: [");
	fflush(stdout);
	ft_print_char('A');
	printf("]\n");

	printf("Test 2: [");
	fflush(stdout);
	ft_print_char('0');
	printf("]\n");

	printf("Test 3: [");
	fflush(stdout);
	ft_print_char('!');
	printf("]\n");
	return (0);
}

/*
EDGE CASES:
Characters can be letters, digits, or punctuation.

LEARNING CHECK:
1. What does the char parameter contain?
2. Why do we pass &c to write()?
3. Does printing '0' print a numeric value?
4. Can this helper print any ASCII character?

NOTE:
The exercise function is intentionally empty. Implement it yourself.
Complete the function before judging the test results.
Keep implementation functions at or below 25 lines and respect 42 Norm.
*/
