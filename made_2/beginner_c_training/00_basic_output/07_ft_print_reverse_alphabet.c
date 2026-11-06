#include <unistd.h>
#include <stdio.h>

void	ft_print_reverse_alphabet(void)
{
	char	c;
	
	c = 'z';
	while (c >= 'a')
	{
		write(1, &c, 1);
		c--;
	}
}

/*
GOAL:
Print the lowercase alphabet from z back to a.

TODO:
1. Start at 'z'.
2. Print the current character.
3. Move backward until 'a' is included.

EXPECTED OUTPUT:
Test 1: [zyxwvutsrqponmlkjihgfedcba]
*/

int	main(void)
{
	printf("Test 1: [");
	fflush(stdout);
	ft_print_reverse_alphabet();
	printf("]\n");
	return (0);
}

/*
EDGE CASES:
Avoid off-by-one errors at the last letter.

LEARNING CHECK:
1. What should the initial character be?
2. Which operation moves backward in ASCII?
3. How do you ensure 'a' prints?
4. How does this compare with forward alphabet printing?

NOTE:
The exercise function is intentionally empty. Implement it yourself.
Complete the function before judging the test results.
Keep implementation functions at or below 25 lines and respect 42 Norm.
*/
