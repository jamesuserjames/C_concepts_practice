#include <unistd.h>
#include <stdio.h>

void	ft_print_lowercase(char c)
{
	
}

/*
GOAL:
Print c as lowercase when c is an uppercase ASCII letter.

TODO:
1. Detect the range 'A' through 'Z'.
2. Convert uppercase letters to lowercase.
3. Write the resulting character once.

EXPECTED OUTPUT:
Test 1: [z]
Test 2: [b]
Test 3: [?]
*/

int	main(void)
{
	printf("Test 1: [");
	fflush(stdout);
	ft_print_lowercase('Z');
	printf("]\n");

	printf("Test 2: [");
	fflush(stdout);
	ft_print_lowercase('b');
	printf("]\n");

	printf("Test 3: [");
	fflush(stdout);
	ft_print_lowercase('?');
	printf("]\n");
	return (0);
}

/*
EDGE CASES:
Lowercase letters and punctuation must not change.

LEARNING CHECK:
1. Which ASCII range needs conversion?
2. What is the offset between 'A' and 'a'?
3. What happens to punctuation?
4. How is this the inverse of ft_print_uppercase()?

NOTE:
The exercise function is intentionally empty. Implement it yourself.
Complete the function before judging the test results.
Keep implementation functions at or below 25 lines and respect 42 Norm.
*/
