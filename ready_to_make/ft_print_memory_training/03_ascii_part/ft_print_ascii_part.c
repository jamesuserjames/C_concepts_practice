#include <unistd.h>

void	ft_print_ascii_part(unsigned char *ptr, unsigned int size, unsigned long l)
{
	
}

int	main(void)
{
	unsigned char	ptr[] = "Hello\nWorld\t42";

	ft_print_ascii_part(ptr, 14, 0);
	write(1, "\n", 1);
	return (0);
}

/*
Allowed functions: write
Goal: Print the readable ASCII portion of a memory row.
TODO:
1. Process up to 16 bytes, staying within size.
2. Print bytes in the printable ASCII range 32 through 126.
3. Print '.' for any other byte, including '\0'.
Expected output:
Hello.World.42
*/
