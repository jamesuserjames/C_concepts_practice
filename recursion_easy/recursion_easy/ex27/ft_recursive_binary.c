#include <unistd.h>

void	ft_recursive_binary(int n)
{
	
}

int	main(void)
{
	ft_recursive_binary(5);
	write(1, "\n", 1);
	ft_recursive_binary(1);
	write(1, "\n", 1);
	ft_recursive_binary(0);
	write(1, "\n", 1);
}

/*
Allowed functions: write

Goal:
Print positive number in binary recursively

TODO:
1. Recurse with n / 2 for numbers greater than 1
2. Convert n % 2 to char
3. Write the binary digit

Test notes:
Tests normal binary, one boundary, and zero boundary

Expected output:
101
1
0
*/
