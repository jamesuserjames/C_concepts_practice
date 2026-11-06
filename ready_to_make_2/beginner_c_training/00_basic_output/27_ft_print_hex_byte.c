#include <unistd.h>
#include <stdio.h>

void	ft_print_hex_byte(unsigned char n)
{
	
}

/*
GOAL:
Print exactly two lowercase hexadecimal digits for one byte.

TODO:
1. Calculate the high hexadecimal digit.
2. Calculate the low hexadecimal digit.
3. Print both, using leading zero if necessary.

EXPECTED OUTPUT:
Test 1: [00]
Test 2: [0a]
Test 3: [ff]
Test 4: [40]
*/

int	main(void)
{
	printf("Test 1: [");
	fflush(stdout);
	ft_print_hex_byte(0);
	printf("]\n");

	printf("Test 2: [");
	fflush(stdout);
	ft_print_hex_byte(10);
	printf("]\n");

	printf("Test 3: [");
	fflush(stdout);
	ft_print_hex_byte(255);
	printf("]\n");

	printf("Test 4: [");
	fflush(stdout);
	ft_print_hex_byte(64);
	printf("]\n");
	return (0);
}

/*
EDGE CASES:
Always print two digits, including for zero.

LEARNING CHECK:
1. How many values fit in one hex digit?
2. What does n / 16 give?
3. What does n % 16 give?
4. Why does 10 map to 'a'?

NOTE:
The exercise function is intentionally empty. Implement it yourself.
Complete the function before judging the test results.
Keep implementation functions at or below 25 lines and respect 42 Norm.
*/
