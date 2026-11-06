#include <unistd.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

int	ft_reverse_file(int src_fd, int dst_fd)
{
	
}

/*
GOAL:
Output bytes from a seekable input file in reverse order; return byte count or -1.

TODO:
1. Find the input length with lseek.
2. Seek to each position from last to first.
3. Read and write each byte.
4. Return total count, or -1 on error.

EXPECTED OUTPUT:
Test 1: 4
Test 2: [dcba]
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
	int	input_fd;
	int	output_fd[2];
	char	buffer[32] = {0};

	input_fd = ft_test_file("abcd");
	if (input_fd == -1 || pipe(output_fd) == -1)
		return (1);
	printf("Test 1: %d\n", ft_reverse_file(input_fd, output_fd[1]));
	close(input_fd);
	close(output_fd[1]);
	read(output_fd[0], buffer, 31);
	printf("Test 2: [%s]\n", buffer);
	close(output_fd[0]);
	return (0);
}

/*
EDGE CASES:
Source must be seekable. Empty files produce zero bytes.

LEARNING CHECK:
1. Why is lseek necessary?
2. Can pipes be reversed without storing data?
3. How do you avoid seeking before zero?
4. How many reads happen for four bytes?

NOTE:
The function is intentionally empty. Implement it yourself.
Keep implementation functions at or below 25 lines and respect 42 Norm.
*/
