#include <unistd.h>
#include <stdio.h>
#include <string.h>

int	ft_redirect_stdin(int source_fd)
{
	
}

/*
GOAL:
Redirect standard input (fd 0) to source_fd using dup2.

TODO:
1. Use dup2 with source_fd and STDIN_FILENO.
2. Return 0 on success.
3. Return -1 on failure.
4. Do not close source_fd.

EXPECTED OUTPUT:
Test 1: 0
Test 2: 1
Test 3: Q
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
	int	saved_stdin;
	char	letter;

	input_fd = ft_test_input("Q");
	if (input_fd == -1)
		return (1);
	saved_stdin = dup(STDIN_FILENO);
	if (saved_stdin == -1)
		return (1);
	printf("Test 1: %d\n", ft_redirect_stdin(input_fd));
	printf("Test 2: %d\n", (int)read(STDIN_FILENO, &letter, 1));
	printf("Test 3: %c\n", letter);
	dup2(saved_stdin, STDIN_FILENO);
	close(saved_stdin);
	close(input_fd);
	return (0);
}

/*
EDGE CASES:
Always restore stdin in test code.

LEARNING CHECK:
1. What is STDIN_FILENO?
2. What does dup2 replace?
3. Why save stdin before redirecting?
4. How does shell input redirection work?

NOTE:
The function is intentionally empty. Implement it yourself.
Keep implementation functions at or below 25 lines and respect 42 Norm.
*/
