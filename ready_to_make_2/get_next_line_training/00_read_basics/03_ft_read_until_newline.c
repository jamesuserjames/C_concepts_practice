#include <unistd.h>
#include <stdlib.h>
#include <stddef.h>
#include <stdio.h>

int	ft_read_until_newline(int fd, char *out, int capacity)
{
	
}

/*
GOAL:
Read one byte at a time until newline, EOF, or buffer full.

TODO:
1. Understand the function contract and test inputs.
2. Return the bytes stored; preserve the newline when found; terminate with NUL.
3. Handle boundaries and errors as documented.
4. Compare outputs with EXPECTED OUTPUT below.

EXPECTED OUTPUT:
Test 1: 3 [ab
]
Test 2: 2 [cd]
Test 3: 0 []
*/

int	main(void)
{
	int		pipe_fd[2];
	char	buffer[16] = {0};
	int		ret;

	if (pipe(pipe_fd) == -1)
		return (1);
	if (write(pipe_fd[1], "ab\ncd", 5) != 5)
		return (close(pipe_fd[0]), close(pipe_fd[1]), 1);
	close(pipe_fd[1]);

	ret = ft_read_until_newline(pipe_fd[0], buffer, 16);
	printf("Test 1: %d [%s]\n", ret, buffer);

	ret = ft_read_until_newline(pipe_fd[0], buffer, 16);
	printf("Test 2: %d [%s]\n", ret, buffer);

	ret = ft_read_until_newline(pipe_fd[0], buffer, 16);
	printf("Test 3: %d [%s]\n", ret, buffer);
	close(pipe_fd[0]);
	return (0);
}

/*
EDGE CASES:
Test empty or boundary inputs, failure paths, and ownership relevant to: read one byte at a time until newline, EOF, or buffer full.

LEARNING CHECK:
1. What does the function return for a normal input?
2. How should this function handle an empty or invalid input?
3. What state or memory changes between calls?
4. Which boundary condition should you test next?

NOTE:
The function is intentionally empty. Implement it yourself.
Keep implementation functions at or below 25 lines and respect 42 Norm.
*/
