#include <unistd.h>
#include <stdio.h>
#include <string.h>

int	ft_pipe_echo(int in_fd, int out_fd)
{
	
}

/*
GOAL:
Read all bytes from an input descriptor and echo them to output.

TODO:
1. Read input in chunks.
2. Write each chunk to out_fd.
3. Handle partial writes.
4. Return total bytes echoed or -1.

EXPECTED OUTPUT:
Test 1: 5
Test 2: [hello]
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
	int	in_fd;
	int	out_fd[2];
	char	buffer[32] = {0};

	in_fd = ft_test_input("hello");
	if (in_fd == -1 || pipe(out_fd) == -1)
		return (1);
	printf("Test 1: %d\n", ft_pipe_echo(in_fd, out_fd[1]));
	close(in_fd);
	close(out_fd[1]);
	read(out_fd[0], buffer, 31);
	printf("Test 2: [%s]\n", buffer);
	close(out_fd[0]);
	return (0);
}

/*
EDGE CASES:
Do not echo more bytes than actually read.

LEARNING CHECK:
1. Why use two descriptors?
2. What is an echo program?
3. Why detect short writes?
4. When should the loop stop?

NOTE:
The function is intentionally empty. Implement it yourself.
Keep implementation functions at or below 25 lines and respect 42 Norm.
*/
