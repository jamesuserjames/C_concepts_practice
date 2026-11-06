#include <unistd.h>
#include <stdio.h>

void	ft_print_every_second_char(const char *str)
{
	int		i;
	
	i = 0;
	while (str[i])
	{
		if (i % 2 == 0)
			write(1, &str[i], 1);
		i++;
	}
}

/*
GOAL:
Print characters at indexes 0, 2, 4, and so on.

TODO:
1. Begin at index zero.
2. Write the indexed character if it exists.
3. Advance by two until the terminator.

EXPECTED OUTPUT:
Test 1: [ace]
Test 2: [hlo]
Test 3: []
*/

int	main(void)
{
	printf("Test 1: [");
	fflush(stdout);
	ft_print_every_second_char("abcdef");
	printf("]\n");

	printf("Test 2: [");
	fflush(stdout);
	ft_print_every_second_char("hello");
	printf("]\n");

	printf("Test 3: [");
	fflush(stdout);
	ft_print_every_second_char("");
	printf("]\n");
	return (0);
}

/*
EDGE CASES:
An empty string prints nothing; indexes begin at zero.

LEARNING CHECK:
1. What is the first character index?
2. How does incrementing by two help?
3. What changes for odd-length strings?
4. Why not print every character?

NOTE:
The exercise function is intentionally empty. Implement it yourself.
Complete the function before judging the test results.
Keep implementation functions at or below 25 lines and respect 42 Norm.
*/
