#include <unistd.h>
#include <stdio.h>

void	ft_print_every_second_letter(void)
{
	char	c;
	
	c = 'a';
	while (c <= 'z')
	{
		write(1, &c, 1);
		c += 2;
	}
}

/*
GOAL:
Print every second lowercase letter, beginning with a.

TODO:
1. Start at 'a'.
2. Print the current character.
3. Advance by two until the alphabet ends.

EXPECTED OUTPUT:
Test 1: [acegikmoqsuwy]
*/

int	main(void)
{
	printf("Test 1: [");
	fflush(stdout);
	ft_print_every_second_letter();
	printf("]\n");
	return (0);
}

/*
EDGE CASES:
Do not print letters beyond 'z'.

LEARNING CHECK:
1. Why does advancing by 2 skip a letter?
2. What is the last output character?
3. How many letters should print?
4. How does this change your alphabet loop?

NOTE:
The exercise function is intentionally empty. Implement it yourself.
Complete the function before judging the test results.
Keep implementation functions at or below 25 lines and respect 42 Norm.
*/
