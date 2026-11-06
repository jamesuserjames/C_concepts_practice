#include <unistd.h>
#include <stdlib.h>
#include <stddef.h>
#include <stdio.h>
#include <string.h>

char	*ft_read_line(int fd)
{
	
}

/*
GOAL:
Read and allocate one line from a file descriptor.

TODO:
1. Understand the function contract and test inputs.
2. Read one byte at a time; stop at newline or EOF; return NULL on empty EOF.
3. Handle boundaries and errors as documented.
4. Compare outputs with EXPECTED OUTPUT below.

EXPECTED OUTPUT:
Test 1: [Hi
][second:NULL]
Test 2: [tail][second:NULL]
Test 3: [NULL][second:NULL]
*/

static void	test_read_lines(const char *text)
{
	int		pipe_fd[2];
	char	*line;

	if (pipe(pipe_fd) == -1)
		return ;
	if (write(pipe_fd[1], text, strlen(text)) != (ssize_t)strlen(text))
	{
		close(pipe_fd[0]);
		close(pipe_fd[1]);
		return ;
	}
	close(pipe_fd[1]);

	line = ft_read_line(pipe_fd[0]);
	printf("[%s]", line ? line : "NULL");
	free(line);

	line = ft_read_line(pipe_fd[0]);
	printf("[second:%s]\n", line ? line : "NULL");
	free(line);
	close(pipe_fd[0]);
}

int	main(void)
{
	printf("Test 1: ");
	test_read_lines("Hi\n");

	printf("Test 2: ");
	test_read_lines("tail");

	printf("Test 3: ");
	test_read_lines("");
	return (0);
}

/*
EDGE CASES:
Test empty or boundary inputs, failure paths, and ownership relevant to: read and allocate one line from a file descriptor.

LEARNING CHECK:
1. What does the function return for a normal input?
2. How should this function handle an empty or invalid input?
3. What state or memory changes between calls?
4. Which boundary condition should you test next?

NOTE:
The function is intentionally empty. Implement it yourself.
Keep implementation functions at or below 25 lines and respect 42 Norm.
*/
