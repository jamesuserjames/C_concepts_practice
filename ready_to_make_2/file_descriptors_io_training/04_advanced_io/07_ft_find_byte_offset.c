#include <unistd.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

long	ft_find_byte_offset(int fd, char target)
{
	
}

/*
GOAL:
Return offset of first target byte from file start, or -1 if absent or on error.

TODO:
1. Seek to offset zero.
2. Read successive bytes.
3. Track the offset as bytes are consumed.
4. Return first match or -1 after EOF.

EXPECTED OUTPUT:
Test 1: 2
Test 2: -1
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

	fd = ft_test_file("banana");
	if (fd == -1)
		return (1);
	printf("Test 1: %ld\n", ft_find_byte_offset(fd, 'n'));
	printf("Test 2: %ld\n", ft_find_byte_offset(fd, 'z'));
	close(fd);
	return (0);
}

/*
EDGE CASES:
Search from the start on every call.

LEARNING CHECK:
1. Why reset the file position?
2. Is the first index zero or one?
3. What if the byte is absent?
4. How is this different from strchr?

NOTE:
The function is intentionally empty. Implement it yourself.
Keep implementation functions at or below 25 lines and respect 42 Norm.
*/
