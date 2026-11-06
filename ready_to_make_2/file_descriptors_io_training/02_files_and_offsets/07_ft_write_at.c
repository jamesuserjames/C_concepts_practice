#include <unistd.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

int	ft_write_at(int fd, const char *data, int count, int offset)
{
	
}

/*
GOAL:
Overwrite count bytes beginning at a file offset; return bytes written or -1.

TODO:
1. Reject negative count and offset.
2. Use lseek SEEK_SET to position fd.
3. Write up to count bytes.
4. Return write result or -1.

EXPECTED OUTPUT:
Test 1: 2
Test 2: [aXYde]
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
	char	buffer[16] = {0};

	fd = ft_test_file("abcde");
	if (fd == -1)
		return (1);
	printf("Test 1: %d\n", ft_write_at(fd, "XY", 2, 1));
	lseek(fd, 0, SEEK_SET);
	read(fd, buffer, 5);
	printf("Test 2: [%s]\n", buffer);
	close(fd);
	return (0);
}

/*
EDGE CASES:
Writing inside a file overwrites existing bytes.

LEARNING CHECK:
1. How is overwrite different from append?
2. What does SEEK_SET do?
3. Can this create sparse files?
4. What changes in the file position?

NOTE:
The function is intentionally empty. Implement it yourself.
Keep implementation functions at or below 25 lines and respect 42 Norm.
*/
