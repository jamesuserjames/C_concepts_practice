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

void	*ft_print_memory(void *addr, unsigned int size)
{
	unsigned char	*ptr;
	unsigned long	l;

	l = 0;
	ptr = (unsigned char *)addr;
	while (l < size)
	{
		ft_print_line(ptr, size, l);
		l += 16;
	}
	return (addr);
}

int	main(void)
{
	char	str1[] = "Hello\nWorld\t42";
	char	str2[] = "123456789abcdefg";
	char	str3[] = "Hello W\1rld! This is a t\2st";

	ft_print_memory(str1, 14);
	write(1, "\n", 1);
	ft_print_memory(str2, 16);
	write(1, "\n", 1);
	ft_print_memory(str3, 28);
	write(1, "\n", 1);
	return (0);
}

/*
Allowed functions: write
Goal: Print a complete memory dump, in rows of 16 bytes.
TODO:
1. Fill in the helper bodies using your earlier exercises.
2. Loop through memory in 16-byte chunks.
3. Print each line with its real address, hex bytes, and ASCII.
4. Return the original addr pointer.
Test notes:
- Addresses vary between runs.
- Third test spans two rows and includes a terminating '\0'.
- When complete, move helper functions into separate files if needed
  for your school's limit on functions per .c file.
Expected ASCII sections:
Hello.World.42
123456789abcdefg
Hello W.rld! Thi
s is a t.st.
*/
