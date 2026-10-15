#include <unistd.h>

void	ft_recursive_print_reverse(char *str)
{
	
}

int	main(void)
{
	ft_recursive_print_reverse("hello");
	write(1, "\n", 1);
	ft_recursive_print_reverse("");
	write(1, "\n", 1);
	ft_recursive_print_reverse("42");
	write(1, "\n", 1);
}

/*
Allowed functions: write

Goal:
Print a string in reverse recursively

TODO:
1. Recurse to the end first
2. Write character while recursion unwinds
3. Stop at null terminator

Test notes:
Tests normal string, empty string, and short string

Expected output:
olleh

24
*/
