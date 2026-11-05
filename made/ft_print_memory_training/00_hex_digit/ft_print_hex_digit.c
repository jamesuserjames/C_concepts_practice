#include <unistd.h>

void	ft_print_hex_digit(unsigned char n)
{
	write(1, &"0123456789abcdef"[n], 1);
}

int	main(void)
{
	ft_print_hex_digit(10);
	write(1, "\n", 1);
	ft_print_hex_digit(15);
	write(1, "\n", 1);
	return (0);
}

/*
Allowed functions: write
Goal: Print one hexadecimal digit (0 to 15).
TODO:
1. Use the string "0123456789abcdef".
2. Index it using n.
3. Write one character.
Expected output:
a
f
*/
