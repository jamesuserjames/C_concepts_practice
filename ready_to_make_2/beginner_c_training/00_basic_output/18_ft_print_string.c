#include <unistd.h>
#include <stdio.h>

void	ft_print_string(const char *str)
{
	
}

/*
GOAL:
Print every character of a NUL-terminated string.

TODO:
1. Start at the first character.
2. Write one character at a time.
3. Stop at '\0'; do not print the terminator.

EXPECTED OUTPUT:
Test 1: [cat]
Test 2: []
Test 3: [42 School]
*/

int	main(void)
{
	printf("Test 1: [");
	fflush(stdout);
	ft_print_string("cat");
	printf("]\n");

	printf("Test 2: [");
	fflush(stdout);
	ft_print_string("");
	printf("]\n");

	printf("Test 3: [");
	fflush(stdout);
	ft_print_string("42 School");
	printf("]\n");
	return (0);
}

/*
EDGE CASES:
An empty string prints nothing; str is non-NULL.

LEARNING CHECK:
1. What does the pointer str reference?
2. How do you detect the end of a C string?
3. Does write() require strlen()?
4. What should happen for an empty string?

NOTE:
The exercise function is intentionally empty. Implement it yourself.
Complete the function before judging the test results.
Keep implementation functions at or below 25 lines and respect 42 Norm.
*/
