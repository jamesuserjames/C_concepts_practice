#include <unistd.h>

void	ft_recursive_print_digits(int n)
{
	
}

int	main(void)
{
	ft_recursive_print_digits(123);
	write(1, "\n", 1);
	ft_recursive_print_digits(7);
	write(1, "\n", 1);
	ft_recursive_print_digits(0);
	write(1, "\n", 1);
}

/*
Allowed functions: write

Goal:
Print positive integer digits recursively

TODO:
1. Recurse with n / 10 for multi-digit numbers
2. Convert last digit to char
3. Write the digit

Test notes:
Tests multi-digit number, single digit, and zero boundary

Expected output:
123
7
0
*/
