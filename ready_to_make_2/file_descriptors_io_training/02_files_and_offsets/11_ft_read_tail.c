#include <unistd.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

int	ft_read_tail(int fd, char *out, int count)
{
	
}

/*
GOAL:
Read up to count bytes from the last count positions of a seekable file.

TODO:
1. Reject negative count.
2. Use lseek to determine the file length.
3. Select the later of offset zero and size minus count.
4. Seek there and read up to count bytes.

EXPECTED OUTPUT:
Test 1: 3 [def]
Test 2: 0
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

	fd = ft_test_file("abcdef");
	if (fd == -1)
		return (1);
	ret = ft_read_tail(fd, buffer, 3);
	printf("Test 1: %d [%.*s]\n", ret, ret, buffer);
	ret = ft_read_tail(fd, buffer, 0);
	printf("Test 2: %d\n", ret);
	close(fd);
	return (0);
}

/*
EDGE CASES:
If count exceeds file size, return the entire file and its length.

LEARNING CHECK:
1. Why seek relative to the end?
2. What if count is zero?
3. What if the file is shorter than count?
4. Why does this require a seekable descriptor?

NOTE:
The function is intentionally empty. Implement it yourself.
Keep implementation functions at or below 25 lines and respect 42 Norm.
*/
