#include <unistd.h>
#include <stdio.h>

void	ft_print_alphabet(void)
{
	
}

/*
GOAL:
Print the lowercase alphabet from a through z.

TODO:
1. Start with 'a'.
2. Loop while letters remain.
3. Write one letter per iteration, including 'z'.

EXPECTED OUTPUT:
Test 1: [abcdefghijklmnopqrstuvwxyz]
*/

int	main(void)
{
	printf("Test 1: [");
	fflush(stdout);
	ft_print_alphabet();
	printf("]\n");
	return (0);
}

/*
EDGE CASES:
Be careful not to stop before printing 'z'.

LEARNING CHECK:
1. Why can char values be incremented?
2. Which character starts the loop?
3. How do you include the final letter?
4. Why is a while loop appropriate here?

NOTE:
The exercise function is intentionally empty. Implement it yourself.
Complete the function before judging the test results.
Keep implementation functions at or below 25 lines and respect 42 Norm.
*/
