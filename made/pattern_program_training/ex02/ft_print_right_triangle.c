#include <unistd.h>

void	ft_print_right_triangle(int height)
{
	int		i;
	int		j;

	i = 0;
	while (i < height)
	{
		j = 0;
		while (j < i + 1)
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
	ft_print_right_triangle(4);
	write(1, "\n", 1);
	ft_print_right_triangle(7);
	write(1, "\n", 1);
	return (0);
}

/*
Allowed functions: write

Goal:
Print a right triangle.

TODO:
1. Loop from 1 to height.
2. Print i stars for each row.
3. Print newline after each row.

Test notes:
Normal case: height 4.
Edge case: height 1.
Boundary case: height 0 prints nothing.

Expected output:
*
**
***
****
*/
