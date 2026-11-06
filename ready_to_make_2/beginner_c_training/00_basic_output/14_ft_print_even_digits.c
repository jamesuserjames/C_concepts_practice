#include <unistd.h>
#include <stdio.h>

void	ft_print_even_digits(void)
{
	
}

/*
GOAL:
Print the even decimal digits in ascending order.

TODO:
1. Start at '0'.
2. Skip odd digits.
3. Print through '8'.

EXPECTED OUTPUT:
Test 1: [02468]
*/

int	main(void)
{
	printf("Test 1: [");
	fflush(stdout);
	ft_print_even_digits();
	printf("]\n");
	return (0);
}

/*
EDGE CASES:
Zero is even; nine is not.

LEARNING CHECK:
1. Is 0 even?
2. How can you advance directly to the next even digit?
3. What is the final output digit?
4. What role could modulo play here?

NOTE:
The exercise function is intentionally empty. Implement it yourself.
Complete the function before judging the test results.
Keep implementation functions at or below 25 lines and respect 42 Norm.
*/
