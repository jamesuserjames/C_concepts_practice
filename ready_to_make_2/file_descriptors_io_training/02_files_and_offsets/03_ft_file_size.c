#include <unistd.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

long	ft_file_size(int fd)
{
	
}

/*
GOAL:
Return the file size of a seekable descriptor without changing its current position.

TODO:
1. Save the current offset with lseek.
2. Seek to the end to obtain the size.
3. Restore the original offset.
4. Return -1 if any seek fails.

EXPECTED OUTPUT:
Test 1: 5
Test 2: 0
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

	fd = ft_test_file("hello");
	if (fd == -1)
		return (1);
	printf("Test 1: %ld\n", ft_file_size(fd));
	printf("Test 2: %lld\n", (long long)lseek(fd, 0, SEEK_CUR));
	close(fd);
	fd = ft_test_file("");
	if (fd == -1)
		return (1);
	printf("Test 3: %ld\n", ft_file_size(fd));
	close(fd);
	return (0);
}

/*
EDGE CASES:
This method only supports seekable files; offsets may exceed long on some systems.

LEARNING CHECK:
1. What does SEEK_END mean?
2. Why restore the saved offset?
3. Can lseek work on a pipe?
4. How is file size different from readable bytes?

NOTE:
The function is intentionally empty. Implement it yourself.
Keep implementation functions at or below 25 lines and respect 42 Norm.
*/
