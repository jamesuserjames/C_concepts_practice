#include <unistd.h>
#include <stdio.h>

int	ft_redirect_fd(int source_fd, int target_fd)
{
	
}

/*
GOAL:
Make target_fd refer to the same open file description as source_fd using dup2.

TODO:
1. Call dup2 with the supplied descriptors.
2. Return 0 on success.
3. Return -1 on error.
4. Do not close source_fd.

EXPECTED OUTPUT:
Test 1: 0
Test 2: R
*/

int	main(void)
{
	int	pipe_fd[2];
	int	copy;
	char	letter;

	if (pipe(pipe_fd) == -1)
		return (1);
	copy = dup(pipe_fd[1]);
	if (copy == -1)
		return (1);
	printf("Test 1: %d\n", ft_redirect_fd(pipe_fd[1], copy));
	write(copy, "R", 1);
	close(copy);
	close(pipe_fd[1]);
	read(pipe_fd[0], &letter, 1);
	printf("Test 2: %c\n", letter);
	close(pipe_fd[0]);
	return (0);
}

/*
EDGE CASES:
dup2 replaces target_fd when both differ.

LEARNING CHECK:
1. What does dup2 do to target_fd?
2. What if both descriptors are equal?
3. Who closes target_fd later?
4. How can dup2 redirect stdout?

NOTE:
The function is intentionally empty. Implement it yourself.
Keep implementation functions at or below 25 lines and respect 42 Norm.
*/
