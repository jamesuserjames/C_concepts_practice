#include <unistd.h>
#include <stdio.h>

void	ft_print_digit(int n)
{
	char	c;
	
	c = n + '0';
	write(1, &c, 1);
}

/*
GOAL:
Print a single decimal digit from the integer n (0 through 9).

TODO:
1. Convert n to its ASCII digit character.
2. Write exactly one byte.
3. Only the range 0..9 is required.

EXPECTED OUTPUT:
Test 1: [0]
Test 2: [5]
Test 3: [9]
*/

int	main(void)
{
	printf("Test 1: [");
	fflush(stdout);
	ft_print_digit(0);
	printf("]\n");

	printf("Test 2: [");
	fflush(stdout);
	ft_print_digit(5);
	printf("]\n");

	printf("Test 3: [");
	fflush(stdout);
	ft_print_digit(9);
	printf("]\n");
	return (0);
}

/*
EDGE CASES:
Inputs outside 0..9 are outside this drill's contract.

LEARNING CHECK:
1. How is integer 5 different from character '5'?
2. What does adding '0' accomplish?
3. Why is the input restricted to 0..9?
4. How many bytes should each call print?

NOTE:
The exercise function is intentionally empty. Implement it yourself.
Complete the function before judging the test results.
Keep implementation functions at or below 25 lines and respect 42 Norm.
*/
