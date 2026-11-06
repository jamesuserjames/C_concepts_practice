#include <unistd.h>
#include <stdio.h>

void	ft_print_string_newline(const char *str)
{
	int		i;
	
	i = 0;
	while (str[i])
	{
		write(1, &str[i], 1);
		i++;
	}
	write(1, "\n", 1);
}

/*
GOAL:
Print a string followed by exactly one newline.

TODO:
1. Print all characters before the NUL terminator.
2. After the loop, write '\n'.
3. For an empty string, still print the newline.

EXPECTED OUTPUT:
Test 1: [Hi\n]
Test 2: [\n]
Test 3: [A B\n]
*/

int	main(void)
{
	printf("Test 1: [");
	fflush(stdout);
	ft_print_string_newline("Hi");
	printf("]\n");

	printf("Test 2: [");
	fflush(stdout);
	ft_print_string_newline("");
	printf("]\n");

	printf("Test 3: [");
	fflush(stdout);
	ft_print_string_newline("A B");
	printf("]\n");
	return (0);
}

/*
EDGE CASES:
Even an empty string ends with a newline.

LEARNING CHECK:
1. When should the newline be written?
2. How many newlines should an empty string print?
3. Why shouldn't you print the NUL terminator?
4. How does this differ from ft_print_string()?

NOTE:
The exercise function is intentionally empty. Implement it yourself.
Complete the function before judging the test results.
Keep implementation functions at or below 25 lines and respect 42 Norm.
*/
