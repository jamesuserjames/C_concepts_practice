#include <unistd.h>

void	ft_print_address(unsigned long long addr)
{
	
}

void	ft_print_hex_part(unsigned char *ptr, unsigned int size, unsigned long l)
{
	
}

void	ft_print_ascii_part(unsigned char *ptr, unsigned int size, unsigned long l)
{
	
}

void	ft_print_line(unsigned char *ptr, unsigned int size, unsigned long l)
{
	
}

int	main(void)
{
	unsigned char	ptr[] = "Hello\nWorld\t42";

	ft_print_line(ptr, 14, 0);
	return (0);
}

/*
Allowed functions: write
Goal: Combine address, hex section, and ASCII section into one line.
TODO:
1. Implement or copy your earlier helper functions into their empty bodies.
2. Print the real address of ptr + l (not just offset l).
3. Print ': ', the padded hex section, ASCII, and a newline.
Expected output: Address varies between runs.
Hex/ASCII suffix (spaces between sections are significant):
4865 6c6c 6f0a 576f 726c 6409 3432      Hello.World.42
*/
