#include <unistd.h>
#include <stdio.h>

void	ft_print_two_digits(int n)
{
	char	c;
	
	c = (n / 10) + '0';
	write(1, &c, 1);
	c = (n % 10) + '0';
	write(1, &c, 1);
}

/*
GOAL:
Print an integer from 0 to 99 using exactly two decimal digits.

TODO:
1. Find the tens digit.
2. Find the ones digit.
3. Print both as characters, including leading zeroes.

EXPECTED OUTPUT:
Test 1: [00]
Test 2: [07]
Test 3: [42]
Test 4: [99]
*/

int	main(void)
{
	printf("Test 1: [");
	fflush(stdout);
	ft_print_two_digits(0);
	printf("]\n");

	printf("Test 2: [");
	fflush(stdout);
	ft_print_two_digits(7);
	printf("]\n");

	printf("Test 3: [");
	fflush(stdout);
	ft_print_two_digits(42);
	printf("]\n");

	printf("Test 4: [");
	fflush(stdout);
	ft_print_two_digits(99);
	printf("]\n");
	return (0);
}

/*
EDGE CASES:
A single-digit number must have a leading zero.

LEARNING CHECK:
1. What are 42 / 10 and 42 % 10?
2. How do you print a leading zero?
3. What should 0 produce?
4. Why are two writes enough?

NOTE:
The exercise function is intentionally empty. Implement it yourself.
Complete the function before judging the test results.
Keep implementation functions at or below 25 lines and respect 42 Norm.
*/
