#include <unistd.h>
#include <stdio.h>

void	ft_print_uppercase(char c)
{
	if (c >= 'a' && c <= 'z')
		c -= 32;
	write(1, &c, 1);
}

/*
GOAL:
Print c as uppercase when c is a lowercase ASCII letter.

TODO:
1. Detect the range 'a' through 'z'.
2. Convert lowercase letters using the ASCII offset.
3. Write the resulting character once.

EXPECTED OUTPUT:
Test 1: [A]
Test 2: [Q]
Test 3: [7]
*/

int	main(void)
{
	printf("Test 1: [");
	fflush(stdout);
	ft_print_uppercase('a');
	printf("]\n");

	printf("Test 2: [");
	fflush(stdout);
	ft_print_uppercase('Q');
	printf("]\n");

	printf("Test 3: [");
	fflush(stdout);
	ft_print_uppercase('7');
	printf("]\n");
	return (0);
}

/*
EDGE CASES:
Already-uppercase letters and nonletters remain unchanged.

LEARNING CHECK:
1. How far apart are 'a' and 'A' in ASCII?
2. What should happen to 'Q'?
3. What should happen to a digit?
4. Can this be done without ctype.h?

NOTE:
The exercise function is intentionally empty. Implement it yourself.
Complete the function before judging the test results.
Keep implementation functions at or below 25 lines and respect 42 Norm.
*/
