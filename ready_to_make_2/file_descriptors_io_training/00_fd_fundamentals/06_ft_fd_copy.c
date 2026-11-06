#include <unistd.h>
#include <stdio.h>

int	ft_fd_copy(int fd)
{
	
}

/*
GOAL:
Duplicate a valid descriptor with dup and return the new descriptor or -1.

TODO:
1. Call dup on fd.
2. Return the newly assigned descriptor.
3. Return -1 if duplication fails.
4. Leave the original descriptor unchanged.

EXPECTED OUTPUT:
Test 1: 1
Test 2: Q
*/

int	main(void)
{
	int	pipe_fd[2];
	int	copy;
	char	letter;

	if (pipe(pipe_fd) == -1)
		return (1);
	copy = ft_fd_copy(pipe_fd[1]);
	if (copy == -1)
		return (1);
	close(pipe_fd[1]);
	write(copy, "Q", 1);
	printf("Test 1: %d\n", (int)read(pipe_fd[0], &letter, 1));
	printf("Test 2: %c\n", letter);
	close(copy);
	close(pipe_fd[0]);
	return (0);
}

/*
EDGE CASES:
Closing the original must not close its duplicate.

LEARNING CHECK:
1. What does dup return?
2. Are original and duplicate different descriptor numbers?
3. What resource do they share?
4. Who must close the duplicate?

NOTE:
The function is intentionally empty. Implement it yourself.
Keep implementation functions at or below 25 lines and respect 42 Norm.
*/
