#include <unistd.h>

void	ft_print_number_triangle(int height)
{
	
}

int	main(void)
{
	ft_print_number_triangle(5);
	return (0);
}

/*
Allowed functions: write

Goal:
Print a triangle of increasing numbers.

TODO:
1. Loop through rows from 1 to height.
2. Loop through columns from 1 to the current row.
3. Print the column number instead of a star.
4. Print newline after each row.

Test notes:
Normal case: height 5.
Edge case: height 1.
Boundary case: height 0 prints nothing.
Use single-digit numbers (height <= 9).

Expected output:
1
12
123
1234
12345
*/
