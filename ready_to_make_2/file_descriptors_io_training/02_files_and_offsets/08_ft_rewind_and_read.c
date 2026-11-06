#include <unistd.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

int	ft_rewind_and_read(int fd, char *out, int count)
{
	
}

/*
GOAL:
Seek to the beginning and read count bytes once.

TODO:
1. Reject negative count.
2. Use lseek to rewind fd.
3. Call read after a successful seek.
4. Return read count or -1.

EXPECTED OUTPUT:
Test 1: 3 [hel]
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
	int		ret;

	fd = ft_test_file("hello");
	if (fd == -1)
		return (1);
	read(fd, buffer, 2);
	ret = ft_rewind_and_read(fd, buffer, 3);
	printf("Test 1: %d [%.*s]\n", ret, ret, buffer);
	close(fd);
	return (0);
}

/*
EDGE CASES:
A seek can replay bytes already consumed.

LEARNING CHECK:
1. What does rewind mean?
2. Why does this fail for a pipe?
3. Does read automatically NUL-terminate?
4. What is the resulting file offset?

NOTE:
The function is intentionally empty. Implement it yourself.
Keep implementation functions at or below 25 lines and respect 42 Norm.
*/
