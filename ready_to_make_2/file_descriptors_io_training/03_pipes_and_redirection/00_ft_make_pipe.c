#include <unistd.h>
#include <stdio.h>

int	ft_make_pipe(int pipe_fd[2])
{
	
}

/*
GOAL:
Create an anonymous pipe; return 0 on success and -1 on failure.

TODO:
1. Call pipe on the two-integer array.
2. Return 0 on success.
3. Return -1 for errors.
4. Leave both ends open for the caller.

EXPECTED OUTPUT:
Test 1: 1
Test 2: Z
*/

int	main(void)
{
	int	pipe_fd[2];
	char	letter;

	if (ft_make_pipe(pipe_fd) == -1)
		return (1);
	write(pipe_fd[1], "Z", 1);
	printf("Test 1: %d\n", (int)read(pipe_fd[0], &letter, 1));
	printf("Test 2: %c\n", letter);
	close(pipe_fd[0]);
	close(pipe_fd[1]);
	return (0);
}

/*
EDGE CASES:
pipe_fd[0] reads; pipe_fd[1] writes.

LEARNING CHECK:
1. What is the difference between pipe ends?
2. What happens if pipe fails?
3. Who closes both ends?
4. What makes a pipe different from a file?

NOTE:
The function is intentionally empty. Implement it yourself.
Keep implementation functions at or below 25 lines and respect 42 Norm.
*/
