#include <unistd.h>
#include <stdio.h>

void	ft_print_alternating_case(void)
{
	
}

/*
GOAL:
Print a through z, alternating lowercase and uppercase starting with lowercase.

TODO:
1. Loop over letters a through z.
2. Print even-indexed letters lowercase.
3. Print odd-indexed letters uppercase.

EXPECTED OUTPUT:
Test 1: [aBcDeFgHiJkLmNoPqRsTuVwXyZ]
*/

int	main(void)
{
	printf("Test 1: [");
	fflush(stdout);
	ft_print_alternating_case();
	printf("]\n");
	return (0);
}

/*
EDGE CASES:
Case alternates by position, not by the letter's ASCII parity.

LEARNING CHECK:
1. How could you track the letter position?
2. What happens at position zero?
3. How do you convert a lowercase letter to uppercase?
4. What is the final printed letter?

NOTE:
The exercise function is intentionally empty. Implement it yourself.
Complete the function before judging the test results.
Keep implementation functions at or below 25 lines and respect 42 Norm.
*/
