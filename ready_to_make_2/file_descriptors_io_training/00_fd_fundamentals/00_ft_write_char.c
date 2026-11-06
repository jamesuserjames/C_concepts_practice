#include <unistd.h>
#include <stdio.h>

int	ft_write_char(int fd, char c)
{
	
}

/*
GOAL:
Write exactly one character to the supplied file descriptor and return 1, or -1 on failure.

TODO:
1. Pass fd, the character address and a byte count to write.
2. Check that exactly one byte was written.
3. Return -1 for a failed write.
4. Return 1 for success.

EXPECTED OUTPUT:
Test 1: 1 [A]
Test 2: 1 [0]
*/

int	main(void)
{
	int		pipe_fd[2];
	char	buffer[128];
	int		ret;
	int		bytes;

	if (pipe(pipe_fd) == -1)
		return (1);
	ret = ft_write_char(pipe_fd[1], 'A');
	close(pipe_fd[1]);
	bytes = read(pipe_fd[0], buffer, sizeof(buffer) - 1);
	close(pipe_fd[0]);
	if (bytes < 0)
		return (1);
	buffer[bytes] = '\0';
	printf("Test 1: %d [%s]\n", ret, buffer);

	if (pipe(pipe_fd) == -1)
		return (1);
	ret = ft_write_char(pipe_fd[1], '0');
	close(pipe_fd[1]);
	bytes = read(pipe_fd[0], buffer, sizeof(buffer) - 1);
	close(pipe_fd[0]);
	if (bytes < 0)
		return (1);
	buffer[bytes] = '\0';
	printf("Test 2: %d [%s]\n", ret, buffer);

	return (0);
}

/*
EDGE CASES:
An invalid or closed descriptor must report failure.

LEARNING CHECK:
1. What does file descriptor 1 represent?
2. Why does write require an address?
3. What does write return?
4. Why accept fd as a parameter?

NOTE:
The function is intentionally empty. Implement it yourself.
Keep implementation functions at or below 25 lines and respect 42 Norm.
*/
