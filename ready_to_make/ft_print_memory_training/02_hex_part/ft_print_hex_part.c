#include <unistd.h>

void	ft_print_hex_part(unsigned char *ptr, unsigned int size, unsigned long l)
{
	
}

int	main(void)
{
	unsigned char	ptr1[] = "abcd";
	unsigned char	ptr2[] = "Hello World aaaaaaaaassssss";

	ft_print_hex_part(ptr1, 4, 0);
	write(1, "\n", 1);
	ft_print_hex_part(ptr2, 27, 16);
	write(1, "\n", 1);
	return (0);
}

/*
Allowed functions: write
Goal: Print the hexadecimal portion of a 16-byte memory row.
TODO:
1. Loop over 16 byte positions starting at offset l.
2. Print each available byte as two hexadecimal digits.
3. Print two spaces when a byte position is unavailable.
4. Add one space after every two byte positions.
Test notes:
- The first test contains 4 bytes and then padding.
- The second test starts at offset 16; size excludes the '\0'.
Expected output (trailing spaces not visible here):
6162 6364
6161 6161 6173 7373 7373 73
*/
