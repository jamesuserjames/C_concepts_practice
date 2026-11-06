#include <unistd.h>
#include <stdio.h>

void	ft_print_three_chars(char a, char b, char c)
{
	write(1, &a, 1);
	write(1, &b, 1);
	write(1, &c, 1);
}

/*
GOAL:
Print three supplied characters in their original order.

TODO:
1. Print a using write().
2. Print b using write().
3. Print c using write(), preserving order.

EXPECTED OUTPUT:
Test 1: [ABC]
Test 2: [123]
Test 3: [! ?]
*/

int	main(void)
{
	printf("Test 1: [");
	fflush(stdout);
	ft_print_three_chars('A', 'B', 'C');
	printf("]\n");

	printf("Test 2: [");
	fflush(stdout);
	ft_print_three_chars('1', '2', '3');
	printf("]\n");

	printf("Test 3: [");
	fflush(stdout);
	ft_print_three_chars('!', ' ', '?');
	printf("]\n");
	return (0);
}

/*
EDGE CASES:
Spaces are valid characters; do not add separators.

LEARNING CHECK:
1. What order are the arguments passed in?
2. Does write() take a char value or its address?
3. How many bytes should each test emit?
4. What would change if the second argument were a newline?

NOTE:
The exercise function is intentionally empty. Implement it yourself.
Complete the function before judging the test results.
Keep implementation functions at or below 25 lines and respect 42 Norm.
*/
