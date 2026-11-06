#!/bin/bash
set -eu
cd "$(dirname "$0")"

# Reset/recreate every exercise in this pack. Existing .c work is overwritten.
mkdir -p 00_hex_digit
cat > 00_hex_digit/ft_print_hex_digit.c <<'EOF'
#include <unistd.h>

void	ft_print_hex_digit(unsigned char n)
{
	
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
EOF

mkdir -p 01_hex_byte
cat > 01_hex_byte/ft_print_hex_byte.c <<'EOF'
#include <unistd.h>

void	ft_print_hex_byte(unsigned char c)
{
	
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
EOF

mkdir -p 02_hex_part
cat > 02_hex_part/ft_print_hex_part.c <<'EOF'
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
EOF

mkdir -p 03_ascii_part
cat > 03_ascii_part/ft_print_ascii_part.c <<'EOF'
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
EOF

mkdir -p 04_address
cat > 04_address/ft_print_address.c <<'EOF'
#include <unistd.h>

void	ft_print_address(unsigned long long addr)
{
	
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
EOF

mkdir -p 05_print_line
cat > 05_print_line/ft_print_line.c <<'EOF'
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
EOF

mkdir -p 06_print_memory
cat > 06_print_memory/ft_print_memory.c <<'EOF'
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
EOF

echo "Created 7 ft_print_memory practice files."