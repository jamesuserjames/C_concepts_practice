#include <unistd.h>

void	ft_recursive_print_string(char *str)
{
	
}

int	main(void)
{
	ft_recursive_print_string("hello");
	write(1, "\n", 1);
	ft_recursive_print_string("");
	write(1, "\n", 1);
	ft_recursive_print_string("42");
	write(1, "\n", 1);
}

/*
Allowed functions: write

Goal:
Print a string recursively

TODO:
1. Stop at null terminator
2. Write current character
3. Recurse with str + 1

Test notes:
Tests normal string, empty string, and short string

Expected output:
hello

42
*/
