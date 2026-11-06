#include <unistd.h>
#include <stdio.h>

void	ft_print_z(void)
{
	write(1, "z", 1);
}

/*
GOAL:
Print exactly one lowercase 'z'.

TODO:
1. Identify the ASCII character 'z'.
2. Write one byte to stdout.
3. Do not append a newline.

EXPECTED OUTPUT:
Test 1: [z]
*/

int	main(void)
{
	printf("Test 1: [");
	fflush(stdout);
	ft_print_z();
	printf("]\n");
	return (0);
}

/*
EDGE CASES:
No parameters; the character must remain lowercase.

LEARNING CHECK:
1. How is 'z' represented in memory?
2. What does the third write() argument mean?
3. Should this function print a newline?
4. How is this different from ft_print_a()?

NOTE:
The exercise function is intentionally empty. Implement it yourself.
Complete the function before judging the test results.
Keep implementation functions at or below 25 lines and respect 42 Norm.
*/
