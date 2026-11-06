#include <unistd.h>
#include <stdio.h>

int	ft_write_stderr(const char *text)
{
	
}

/*
GOAL:
Write a string to standard error and return bytes written or -1.

TODO:
1. Use STDERR_FILENO (2).
2. Write every character in text.
3. Check for write errors.
4. Return total bytes.

EXPECTED OUTPUT:
Test 1: 5 [error]
*/

int	main(void)
{
	int	pipe_fd[2];
	int	saved_stderr;
	char	buffer[32] = {0};
	int		ret;

	if (pipe(pipe_fd) == -1)
		return (1);
	saved_stderr = dup(STDERR_FILENO);
	if (saved_stderr == -1)
		return (1);
	dup2(pipe_fd[1], STDERR_FILENO);
	ret = ft_write_stderr("error");
	dup2(saved_stderr, STDERR_FILENO);
	close(saved_stderr);
	close(pipe_fd[1]);
	read(pipe_fd[0], buffer, 31);
	close(pipe_fd[0]);
	printf("Test 1: %d [%s]\n", ret, buffer);
	return (0);
}

/*
EDGE CASES:
Standard error is separate from standard output.

LEARNING CHECK:
1. Which descriptor number is stderr?
2. Why redirect stderr for the test?
3. What does write return?
4. Why are error messages often sent to stderr?

NOTE:
The function is intentionally empty. Implement it yourself.
Keep implementation functions at or below 25 lines and respect 42 Norm.
*/
