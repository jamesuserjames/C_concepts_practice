#include <unistd.h>
#include <stdio.h>

void	ft_putnbr(int n)
{
	long	l;
	char	c;

	l = (long)n;
	if (l < 0)
	{
		write(1, "-", 1);
		l = -l;
	}
	if (l >= 10)
		ft_putnbr(l / 10);
	c = (l % 10) + '0';
	write(1, &c, 1);
}

void	ft_print_formatted_line(const char *label, unsigned int n)
{
	int		i;
	
	i = 0;
	while (label[i])
	{
		write(1, &label[i], 1);
		i++;
	}
	write(1, ": ", 2);
	ft_putnbr(n);
	write(1, "\n", 1);
}

/*
GOAL:
Print label, followed by ': ', n in decimal, and one newline (n between 0 and 999).

TODO:
1. Print each character of label.
2. Print a colon and a space.
3. Print the decimal digits of n, then a newline.

EXPECTED OUTPUT:
Test 1: [Score: 42\n]
Test 2: [Count: 0\n]
Test 3: [Max: 999\n]
*/

int	main(void)
{
	printf("Test 1: [");
	fflush(stdout);
	ft_print_formatted_line("Score", 42);
	printf("]\n");

	printf("Test 2: [");
	fflush(stdout);
	ft_print_formatted_line("Count", 0);
	printf("]\n");

	printf("Test 3: [");
	fflush(stdout);
	ft_print_formatted_line("Max", 999);
	printf("]\n");
	return (0);
}

/*
EDGE CASES:
The label can be empty; n is restricted to 0..999.

LEARNING CHECK:
1. How do you sequence text and number output?
2. Why does 0 need special handling?
3. What must follow the decimal number?
4. How is this related to implementing ft_printf()?

NOTE:
The exercise function is intentionally empty. Implement it yourself.
Complete the function before judging the test results.
Keep implementation functions at or below 25 lines and respect 42 Norm.
*/
