#include <unistd.h>

void	ft_putchar(char c)
{
	
}

int	main(void)
{
	ft_putchar('A');
	write(1, "\n", 1);
	return (0);
}

/*
Allowed functions: write

Goal:
Print one character.

TODO:
1. Use write.
2. Pass address of character.
3. Write exactly one byte.

Test notes:
Normal case prints 'A'.
Edge case prints '\n'.
Boundary case prints '\0'.

Expected output:
A
*/
