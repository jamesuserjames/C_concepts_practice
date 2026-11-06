#include <unistd.h>
#include <stdio.h>

void	ft_print_numbers(void)
{
	
}

/*
GOAL:
Print decimal digits from 0 through 9.

TODO:
1. Start at character '0'.
2. Write the current digit.
3. Continue through '9', once each.

EXPECTED OUTPUT:
Test 1: [0123456789]
*/

int	main(void)
{
	printf("Test 1: [");
	fflush(stdout);
	ft_print_numbers();
	printf("]\n");
	return (0);
}

/*
EDGE CASES:
Print characters, not binary integer values.

LEARNING CHECK:
1. Why is '0' different from integer 0?
2. What is the last digit?
3. Why can digits be looped over as chars?
4. How many bytes are printed?

NOTE:
The exercise function is intentionally empty. Implement it yourself.
Complete the function before judging the test results.
Keep implementation functions at or below 25 lines and respect 42 Norm.
*/
