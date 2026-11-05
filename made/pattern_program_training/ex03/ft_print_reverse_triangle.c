#include <unistd.h>

void	ft_print_reverse_triangle(int height)
{
	int		j;
	int		i;
	
	i = 0;
	while (i < height)
	{
		j = 0;
		while (j < height - i)
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
	ft_print_reverse_triangle(4);
	write(1, "\n", 1);
	ft_print_reverse_triangle(8);
	write(1, "\n", 1);
	return (0);
}

/*
Allowed functions: write

Goal:
Print a reverse triangle.

TODO:
1. Start from height.
2. Decrease stars each row.
3. Print newline after each row.

Test notes:
Normal case: height 4.
Edge case: height 1.
Boundary case: height 0 prints nothing.

Expected output:
****
***
**
*
*/
