#include <unistd.h>

void	ft_print_rectangle(int width, int height)
{
	
}

int	main(void)
{
	ft_print_rectangle(4, 3);
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
