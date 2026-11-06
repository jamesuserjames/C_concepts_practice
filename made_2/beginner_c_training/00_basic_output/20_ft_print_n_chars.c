#include <unistd.h>
#include <stdio.h>

void	ft_print_n_chars(const char *str, int n)
{
	int		i;
	
	i = 0;
	while (str[i] && i < n)
	{
		write(1, &str[i], 1);
		i++;
	}
}

/*
GOAL:
Print up to n characters from a NUL-terminated string.

TODO:
1. Start at the beginning of str.
2. Stop after n characters or at '\0'.
3. Print nothing when n is zero or negative.

EXPECTED OUTPUT:
Test 1: [abc]
Test 2: [cat]
Test 3: []
*/

int	main(void)
{
	printf("Test 1: [");
	fflush(stdout);
	ft_print_n_chars("abcdef", 3);
	printf("]\n");

	printf("Test 2: [");
	fflush(stdout);
	ft_print_n_chars("cat", 10);
	printf("]\n");

	printf("Test 3: [");
	fflush(stdout);
	ft_print_n_chars("hi", 0);
	printf("]\n");
	return (0);
}

/*
EDGE CASES:
Never read beyond the string; n <= 0 prints nothing.

LEARNING CHECK:
1. What are the two loop stopping conditions?
2. What happens if n exceeds the string length?
3. What should n = 0 do?
4. Why is this different from writing exactly n bytes?

NOTE:
The exercise function is intentionally empty. Implement it yourself.
Complete the function before judging the test results.
Keep implementation functions at or below 25 lines and respect 42 Norm.
*/
