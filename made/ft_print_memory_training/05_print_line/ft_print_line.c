#include <unistd.h>

void	ft_print_address(unsigned long long addr)
{
	char	buffer[16];
	int		i;

	i = 15;
	while (i >= 0)
	{
		buffer[i] = "0123456789abcdef"[addr % 16];
		addr /= 16;
		i--;
	}
	write(1, buffer, 16);
}

void	ft_print_hex_part(unsigned char *ptr, unsigned int size, unsigned long l)
{
	unsigned int		i;
	
	i = 0;
	while (i < 16)
	{
		if ((l + i) < size)
		{
			write(1, &"0123456789abcdef"[ptr[l + i] / 16], 1);
			write(1, &"0123456789abcdef"[ptr[l + i] % 16], 1);
		}
		else
			write(1, "  ", 2);
		if (i % 2 == 1)
			write(1, " ", 1);
		i++;
	}
}

void	ft_print_ascii_part(unsigned char *ptr, unsigned int size, unsigned long l)
{
	unsigned int	i;

	i = 0;
	while (i < 16 && l < size && (i + l) < size)
	{
		if (ptr[i + l] >= 32 && ptr[i + l] <= 126)
			write(1, &ptr[i + l], 1);
		else
			write(1, ".", 1);
		i++;
	}
}

void	ft_print_line(unsigned char *ptr, unsigned int size, unsigned long l)
{
	ft_print_address((unsigned long long)(ptr + l));
	write(1, ": ", 2);
	ft_print_hex_part(ptr, size, l);
	ft_print_ascii_part(ptr, size, l);
	write(1, "\n", 1);
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
