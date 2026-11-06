#include <unistd.h>
#include <stdio.h>

void	ft_print_printable_ascii(void)
{
	char	c;
	
	c = 32;
	while (c <= 126)
	{
		write(1, &c, 1);
		c++;
	}
}

/*
GOAL:
Print all printable ASCII characters from space (32) through tilde (126).

TODO:
1. Start at ASCII value 32.
2. Write each character in sequence.
3. Stop after ASCII value 126.

EXPECTED OUTPUT:
Test 1: [ !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~]
*/

int	main(void)
{
	printf("Test 1: [");
	fflush(stdout);
	ft_print_printable_ascii();
	printf("]\n");
	return (0);
}

/*
EDGE CASES:
The first character is a space and the final one is '~'.

LEARNING CHECK:
1. What is the first printable ASCII code?
2. What is the last printable ASCII code?
3. How many characters should be printed?
4. Why isn't newline in this range?

NOTE:
The exercise function is intentionally empty. Implement it yourself.
Complete the function before judging the test results.
Keep implementation functions at or below 25 lines and respect 42 Norm.
*/
