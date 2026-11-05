#include <unistd.h>

void	ft_print_square(int size)
{
	int		i;
	int		j;

	i = 0;
	while (i < size)
	{
		j = 0;
		while (j < size)
		{
			write(1, "*", 1);
			j++;
		}
		write(1, "\n", 1);
		i++;
	}
}

int	main(void)
{
	ft_print_square(1);
	write(1, "\n", 1);
	ft_print_square(2);
	write(1, "\n", 1);
	ft_print_square(3);
	write(1, "\n", 1);
	ft_print_square(4);
	write(1, "\n", 1);
	return (0);
}

/*
Allowed functions: write

Goal:
Print a square of stars.

TODO:
1. Loop over rows.
2. Loop over columns.
3. Print '*' for each column.
4. Print newline after each row.

Test notes:
Normal case: size 3.
Edge case: size 1.
Boundary case: size 0 prints nothing.

Expected output:
***
***
***
*/