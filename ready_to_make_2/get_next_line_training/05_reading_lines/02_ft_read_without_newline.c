#include <unistd.h>
#include <stdlib.h>
#include <stddef.h>
#include <stdio.h>
#include <string.h>

int	ft_read_without_newline(int fd)
{
	
}

/*
GOAL:
Count bytes up to newline or EOF, excluding newline itself.

TODO:
1. Understand the function contract and test inputs.
2. Consume newline when present, but do not include it in the count.
3. Handle boundaries and errors as documented.
4. Compare outputs with EXPECTED OUTPUT below.

EXPECTED OUTPUT:
Test 1: 3
Test 2: 4
Test 3: 0
*/

static int	test_with_pipe(const char *text)
{
	int	pipe_fd[2];
	int	result;

	if (pipe(pipe_fd) == -1)
		return (-1);
	if (write(pipe_fd[1], text, strlen(text)) != (ssize_t)strlen(text))
		return (close(pipe_fd[0]), close(pipe_fd[1]), -1);
	close(pipe_fd[1]);
	result = ft_read_without_newline(pipe_fd[0]);
	close(pipe_fd[0]);
	return (result);
}

int	main(void)
{
	printf("Test 1: %d\n", test_with_pipe("abc\ndef"));
	printf("Test 2: %d\n", test_with_pipe("tail"));
	printf("Test 3: %d\n", test_with_pipe("\n"));
	return (0);
}

/*
EDGE CASES:
Test empty or boundary inputs, failure paths, and ownership relevant to: count bytes up to newline or EOF, excluding newline itself.

LEARNING CHECK:
1. What does the function return for a normal input?
2. How should this function handle an empty or invalid input?
3. What state or memory changes between calls?
4. Which boundary condition should you test next?

NOTE:
The function is intentionally empty. Implement it yourself.
Keep implementation functions at or below 25 lines and respect 42 Norm.
*/
