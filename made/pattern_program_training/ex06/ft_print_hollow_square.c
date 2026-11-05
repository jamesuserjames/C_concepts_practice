#include <unistd.h>

void	ft_print_hollow_square(int size)
{
	int		j;
	int		i;
	
	i = 0;
	if (size > 0)
	{
		while (i < size)
		{
			j = 0;
			while (j < size)
			{
				if (i == 0 || i == size - 1)
					write(1, "*", 1);
				else if (j == 0 || j == size - 1)
					write(1, "*", 1);
				else
					write(1, " ", 1);
				j++;
			}
			write(1, "\n", 1);
			i++;
		}
	}
}

int	main(void)
{
	ft_print_hollow_square(0);
	write(1, "\n", 1);
	ft_print_hollow_square(1);
	write(1, "\n", 1);
	ft_print_hollow_square(4);
	write(1, "\n", 1);
	return (0);
}

/*
Allowed functions: write

Goal:
Print a hollow square.

TODO:
1. Print '*' on borders.
2. Print spaces inside.
3. Print newline after each row.

Test notes:
Normal case: size 4.
Edge case: size 1.
Boundary case: size 0 prints nothing.

Expected output:
****
*  *
*  *
****
*/
