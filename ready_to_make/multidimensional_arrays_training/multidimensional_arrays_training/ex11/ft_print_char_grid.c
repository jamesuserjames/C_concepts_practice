#include "../training.h"

void	ft_print_char_grid(char grid[3][4])
{
	
}

int	main(void)
{
	char	grid[3][4] = {
		{'a', 'b', 'c', '\0'},
		{'d', 'e', 'f', '\0'},
		{'g', 'h', 'i', '\0'}
	};

	ft_print_char_grid(grid);
	return (0);
}

/*
Allowed functions: write

Goal:
Print a 2D char grid where each row is a string.

TODO:
1. Loop through rows.
2. Loop through characters until null terminator.
3. Print newline after each row.

Test notes:
Tests multidimensional chars and null terminators.

Expected output:
abc
def
ghi
*/
