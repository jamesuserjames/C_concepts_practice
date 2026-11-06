#include <unistd.h>
#include <stdio.h>

int	ft_pipe_send(int pipe_fd[2], const char *text)
{
	
}

/*
GOAL:
Write a complete string to the write end of an existing pipe.

TODO:
1. Find how many bytes text contains.
2. Write those bytes to pipe_fd[1].
3. Handle partial writes.
4. Return sent byte count or -1.

EXPECTED OUTPUT:
Test 1: 5
Test 2: [hello]
*/

int	main(void)
{
	int	pipe_fd[2];
	char	buffer[16] = {0};

	if (pipe(pipe_fd) == -1)
		return (1);
	printf("Test 1: %d\n", ft_pipe_send(pipe_fd, "hello"));
	close(pipe_fd[1]);
	read(pipe_fd[0], buffer, 15);
	printf("Test 2: [%s]\n", buffer);
	close(pipe_fd[0]);
	return (0);
}

/*
EDGE CASES:
The receiving end must read sent bytes.

LEARNING CHECK:
1. Which end does write use?
2. Can a pipe carry binary data?
3. Why do pipes buffer bytes?
4. When does the reader encounter EOF?

NOTE:
The function is intentionally empty. Implement it yourself.
Keep implementation functions at or below 25 lines and respect 42 Norm.
*/
