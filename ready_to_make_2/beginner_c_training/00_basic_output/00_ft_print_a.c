#include <unistd.h>
#include <stdio.h>

void	ft_print_a(void)
{
	
}

/*
GOAL:
Print exactly one lowercase 'a' using write().

TODO:
1. Choose the character to output.
2. Call write() on standard output.
3. Print exactly one byte, without adding a newline.

EXPECTED OUTPUT:
Test 1: [a]
*/

int	main(void)
{
	printf("Test 1: [");
	fflush(stdout);
	ft_print_a();
	printf("]\n");
	return (0);
}

/*
EDGE CASES:
No parameters. Do not print a newline or NUL byte.

LEARNING CHECK:
1. What does file descriptor 1 represent?
2. Why does write() take an address?
3. How many bytes must be written?
4. What changes if you print 'A' instead?

NOTE:
The exercise function is intentionally empty. Implement it yourself.
Complete the function before judging the test results.
Keep implementation functions at or below 25 lines and respect 42 Norm.
*/
