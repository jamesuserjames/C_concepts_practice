#include <unistd.h>
#include <stdio.h>

void	ft_print_reverse_numbers(void)
{
	
}

/*
GOAL:
Print decimal digits from 9 down to 0.

TODO:
1. Begin with the character '9'.
2. Write each digit.
3. Decrease until '0' is included.

EXPECTED OUTPUT:
Test 1: [9876543210]
*/

int	main(void)
{
	printf("Test 1: [");
	fflush(stdout);
	ft_print_reverse_numbers();
	printf("]\n");
	return (0);
}

/*
EDGE CASES:
The last digit must be zero.

LEARNING CHECK:
1. Which character initializes the loop?
2. How does decrementing a char work?
3. How do you include '0'?
4. How many digits are printed?

NOTE:
The exercise function is intentionally empty. Implement it yourself.
Complete the function before judging the test results.
Keep implementation functions at or below 25 lines and respect 42 Norm.
*/
