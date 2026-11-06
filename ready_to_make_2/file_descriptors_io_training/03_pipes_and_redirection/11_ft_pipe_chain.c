#include <unistd.h>
#include <stdio.h>
#include <string.h>

int	ft_pipe_chain(int source_fd, int sink_fd)
{
	
}

/*
GOAL:
Copy an input stream to an output descriptor byte-for-byte.

TODO:
1. Read from the source until EOF.
2. Forward each chunk to sink_fd.
3. Handle short writes.
4. Return forwarded byte count or -1.

EXPECTED OUTPUT:
Test 1: 5
Test 2: [chain]
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
	int	input_fd;
	int	output_fd[2];
	char	buffer[32] = {0};

	input_fd = ft_test_input("chain");
	if (input_fd == -1 || pipe(output_fd) == -1)
		return (1);
	printf("Test 1: %d\n", ft_pipe_chain(input_fd, output_fd[1]));
	close(input_fd);
	close(output_fd[1]);
	read(output_fd[0], buffer, 31);
	printf("Test 2: [%s]\n", buffer);
	close(output_fd[0]);
	return (0);
}

/*
EDGE CASES:
The source and sink may be pipes or files.

LEARNING CHECK:
1. What makes descriptors interchangeable?
2. Why is this called streaming?
3. When does the copy stop?
4. How do shell pipelines pass bytes?

NOTE:
The function is intentionally empty. Implement it yourself.
Keep implementation functions at or below 25 lines and respect 42 Norm.
*/
