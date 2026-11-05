#include <unistd.h>

void	ft_print_hex_byte(unsigned char c)
{
	write(1, &"0123456789abcdef"[c / 16], 1);
	write(1, &"0123456789abcdef"[c % 16], 1);
}

int	main(void)
{
	ft_print_hex_byte('\n');
	write(1, "\n", 1);
	ft_print_hex_byte(255);
	write(1, "\n", 1);
	return (0);
}

/*
Allowed functions: write
Goal: Print one byte as exactly two hexadecimal digits.
TODO:
1. Use c / 16 for the first digit.
2. Use c % 16 for the second digit.
3. Write both characters.
Expected output:
0a
ff
*/
