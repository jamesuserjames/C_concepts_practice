#include <unistd.h>

void	ft_print_alphabet(void)
{
	char	c;

	c = 'a';
	while (c <= 'z')
	{
		write(1, &c, 1);
		c++;
	}
}

int	main(void)
{
	ft_print_alphabet();
	return (0);
}

/*
Allowed functions: write

Goal:
Print the lowercase alphabet from a to z.

TODO:
1. Start with the character a
2. Print the current character
3. Continue until z has been printed

Test notes:
The test proves that all lowercase letters are printed once and in ascending order.

Expected output:
abcdefghijklmnopqrstuvwxyz
*/
