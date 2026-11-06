#include <unistd.h>
#include <stdio.h>
#include <string.h>

int	ft_pipe_uppercase(int input_fd, int output_fd)
{
	
}

/*
GOAL:
Read a stream, convert ASCII lowercase to uppercase, and write the result.

TODO:
1. Read from input_fd in chunks.
2. Convert ASCII a-z to A-Z.
3. Write each processed chunk fully.
4. Return the byte count or -1 on failure.

EXPECTED OUTPUT:
Test 1: 6
Test 2: [HI 42!]
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

	input_fd = ft_test_input("Hi 42!");
	if (input_fd == -1 || pipe(output_fd) == -1)
		return (1);
	printf("Test 1: %d\n", ft_pipe_uppercase(input_fd, output_fd[1]));
	close(input_fd);
	close(output_fd[1]);
	read(output_fd[0], buffer, 31);
	printf("Test 2: [%s]\n", buffer);
	close(output_fd[0]);
	return (0);
}

/*
EDGE CASES:
Only ASCII lowercase letters should change.

LEARNING CHECK:
1. Why process only bytes read?
2. What are ASCII letter ranges?
3. Why can write be partial?
4. How could this be used in a Unix pipeline?

NOTE:
The function is intentionally empty. Implement it yourself.
Keep implementation functions at or below 25 lines and respect 42 Norm.
*/
