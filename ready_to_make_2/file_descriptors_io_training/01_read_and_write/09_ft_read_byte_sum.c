#include <unistd.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

int	ft_read_byte_sum(int fd)
{
	
}

/*
GOAL:
Return the sum of unsigned byte values read from fd; return -1 for read errors.

TODO:
1. Read input in chunks.
2. Treat each byte as unsigned char.
3. Add each value to the sum.
4. Stop at EOF or return -1 on error.

EXPECTED OUTPUT:
Test 1: 198
Test 2: 48
Test 3: 0
*/

static int	ft_test_file(const char *text)
{
	char	path[] = "/tmp/ft_io_XXXXXX";
	int		fd;
	int		length;

	fd = mkstemp(path);
	if (fd == -1)
		return (-1);
	unlink(path);
	length = (int)strlen(text);
	if (write(fd, text, length) != length || lseek(fd, 0, SEEK_SET) == -1)
	{
		close(fd);
		return (-1);
	}
	return (fd);
}

int	main(void)
{
	int	fd;

	fd = ft_test_file("ABC");
	if (fd == -1)
		return (1);
	printf("Test 1: %d\n", ft_read_byte_sum(fd));
	close(fd);

	fd = ft_test_file("0");
	if (fd == -1)
		return (1);
	printf("Test 2: %d\n", ft_read_byte_sum(fd));
	close(fd);

	fd = ft_test_file("");
	if (fd == -1)
		return (1);
	printf("Test 3: %d\n", ft_read_byte_sum(fd));
	close(fd);

	return (0);
}

/*
EDGE CASES:
Assume the total fits in int for the small training inputs.

LEARNING CHECK:
1. What is the ASCII value of A?
2. Why interpret bytes as unsigned?
3. What does empty input sum to?
4. How is a checksum different from a hash?

NOTE:
The function is intentionally empty. Implement it yourself.
Keep implementation functions at or below 25 lines and respect 42 Norm.
*/
