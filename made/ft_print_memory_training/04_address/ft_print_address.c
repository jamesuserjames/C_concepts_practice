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

int	main(void)
{
	ft_print_address(65536);
	write(1, "\n", 1);
	return (0);
}

/*
Allowed functions: write
Goal: Print an address as exactly 16 lowercase hexadecimal digits.
TODO:
1. Create a 16-character buffer.
2. Fill it backwards using modulo and division by 16.
3. Write the whole buffer; include leading zeros.
Expected output:
0000000000010000
*/
