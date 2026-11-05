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

void	*ft_print_memory(void *addr, unsigned int size)
{
	
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
