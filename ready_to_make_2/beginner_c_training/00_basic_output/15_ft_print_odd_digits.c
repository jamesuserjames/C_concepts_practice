#include <unistd.h>
#include <stdio.h>

void	ft_print_odd_digits(void)
{
	
}

/*
GOAL:
Print the odd decimal digits in ascending order.

TODO:
1. Start at '1'.
2. Skip even digits.
3. Print through '9'.

EXPECTED OUTPUT:
Test 1: [13579]
*/

int	main(void)
{
	printf("Test 1: [");
	fflush(stdout);
	ft_print_odd_digits();
	printf("]\n");
	return (0);
}

/*
EDGE CASES:
One and nine must both appear.

LEARNING CHECK:
1. What is the first odd digit?
2. How could you increase by two?
3. Why isn't zero printed?
4. How many characters are written?

NOTE:
The exercise function is intentionally empty. Implement it yourself.
Complete the function before judging the test results.
Keep implementation functions at or below 25 lines and respect 42 Norm.
*/
