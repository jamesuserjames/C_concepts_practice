#include <unistd.h>
#include <stdio.h>

void	ft_print_ascii_value(unsigned char c)
{
	
}

/*
GOAL:
Print the decimal ASCII value of a byte without printf().

TODO:
1. Convert the unsigned byte value into decimal digits.
2. Print its digits in the correct order.
3. Handle one-, two-, and three-digit values.

EXPECTED OUTPUT:
Test 1: [65]
Test 2: [48]
Test 3: [0]
Test 4: [255]
*/

int	main(void)
{
	printf("Test 1: [");
	fflush(stdout);
	ft_print_ascii_value('A');
	printf("]\n");

	printf("Test 2: [");
	fflush(stdout);
	ft_print_ascii_value('0');
	printf("]\n");

	printf("Test 3: [");
	fflush(stdout);
	ft_print_ascii_value(0);
	printf("]\n");

	printf("Test 4: [");
	fflush(stdout);
	ft_print_ascii_value(255);
	printf("]\n");
	return (0);
}

/*
EDGE CASES:
Values may range from 0 to 255; output decimal digits only.

LEARNING CHECK:
1. What is the decimal code for 'A'?
2. How do division and modulo separate digits?
3. How do you handle value zero?
4. Why is unsigned char appropriate?

NOTE:
The exercise function is intentionally empty. Implement it yourself.
Complete the function before judging the test results.
Keep implementation functions at or below 25 lines and respect 42 Norm.
*/
