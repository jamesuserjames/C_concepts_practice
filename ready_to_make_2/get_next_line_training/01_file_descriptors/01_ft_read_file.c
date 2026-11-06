#include <unistd.h>
#include <stdlib.h>
#include <stddef.h>
#include <stdio.h>

int	ft_read_file(int fd, char *out, int capacity)
{
	
}

/*
GOAL:
Read a supplied file descriptor into a bounded NUL-terminated buffer.

TODO:
1. Understand the function contract and test inputs.
2. Handle EOF and invalid fds; return -1 on errors.
3. Handle boundaries and errors as documented.
4. Compare outputs with EXPECTED OUTPUT below.

EXPECTED OUTPUT:
Test 1: 6 [sample]
Test 2: 0
Test 3: -1
*/

int	main(void)
{
	int		pipe_fd[2];
	char	buffer[12] = {0};
	int		ret;

	if (pipe(pipe_fd) == -1)
		return (1);
	if (write(pipe_fd[1], "sample", 6) != 6)
		return (close(pipe_fd[0]), close(pipe_fd[1]), 1);
	close(pipe_fd[1]);

	ret = ft_read_file(pipe_fd[0], buffer, 12);
	printf("Test 1: %d [%s]\n", ret, buffer);

	printf("Test 2: %d\n", ft_read_file(pipe_fd[0], buffer, 12));
	close(pipe_fd[0]);
	printf("Test 3: %d\n", ft_read_file(-1, buffer, 12));
	return (0);
}

/*
EDGE CASES:
Test empty or boundary inputs, failure paths, and ownership relevant to: read a supplied file descriptor into a bounded NUL-terminated buffer.

LEARNING CHECK:
1. What does the function return for a normal input?
2. How should this function handle an empty or invalid input?
3. What state or memory changes between calls?
4. Which boundary condition should you test next?

NOTE:
The function is intentionally empty. Implement it yourself.
Keep implementation functions at or below 25 lines and respect 42 Norm.
*/
