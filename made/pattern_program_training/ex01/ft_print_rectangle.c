#include <unistd.h>

void	ft_print_rectangle(int width, int height)
{
	int		j;
	int		i;
	
	i = 0;
	while (i < height)
	{
		j = 0;
		while (j < width)
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
	ft_print_rectangle(4, 10);
	return (0);
}

/*
Allowed functions: write

Goal:
Print a rectangle of stars.

TODO:
1. Loop height times.
2. Inside, loop width times.
3. Print '*' for each column.
4. Print newline after each row.

Test notes:
Normal case: width 4, height 3.
Edge case: width 1.
Boundary case: height 0 prints nothing.

Expected output:
****
****
****
*/
