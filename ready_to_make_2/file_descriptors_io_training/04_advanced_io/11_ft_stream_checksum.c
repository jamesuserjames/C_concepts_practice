#include <unistd.h>
#include <stdio.h>
#include <string.h>
#include <limits.h>

unsigned int	ft_stream_checksum(int fd)
{
	
}

/*
GOAL:
Compute the sum of unsigned byte values modulo 2^32; return UINT_MAX on read error.

TODO:
1. Read bytes until EOF.
2. Interpret every byte as unsigned.
3. Accumulate using unsigned arithmetic.
4. Return UINT_MAX if a read fails.

EXPECTED OUTPUT:
Test 1: 198
Test 2: 0
*/

static int	ft_test_input(const char *text)
{
	int	pipe_fd[2];
	int	length;

	if (pipe(pipe_fd) == -1)
		return (-1);
	length = (int)strlen(text);
	if (write(pipe_fd[1], text, length) != length)
	{
		close(pipe_fd[0]);
		close(pipe_fd[1]);
		return (-1);
	}
	close(pipe_fd[1]);
	return (pipe_fd[0]);
}

int	main(void)
{
	int	fd;

	fd = ft_test_input("ABC");
	if (fd == -1)
		return (1);
	printf("Test 1: %u\n", ft_stream_checksum(fd));
	close(fd);
	fd = ft_test_input("");
	if (fd == -1)
		return (1);
	printf("Test 2: %u\n", ft_stream_checksum(fd));
	close(fd);
	return (0);
}

/*
EDGE CASES:
UINT_MAX also can be a legitimate checksum; consider a separate status in real APIs.

LEARNING CHECK:
1. Why does unsigned overflow wrap?
2. What is the ASCII sum of ABC?
3. Why is this not a cryptographic hash?
4. How would you separate errors from valid checksums?

NOTE:
The function is intentionally empty. Implement it yourself.
Keep implementation functions at or below 25 lines and respect 42 Norm.
*/
