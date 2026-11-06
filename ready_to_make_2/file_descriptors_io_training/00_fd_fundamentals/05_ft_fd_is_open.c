#include <unistd.h>
#include <stdio.h>
#include <fcntl.h>

int	ft_fd_is_open(int fd)
{
	
}

/*
GOAL:
Return 1 if fd currently refers to an open descriptor, otherwise 0.

TODO:
1. Call fcntl with F_GETFD.
2. Interpret a -1 result as invalid for this exercise.
3. Return 1 for a valid descriptor.
4. Do not close or alter the descriptor.

EXPECTED OUTPUT:
Test 1: 1
Test 2: 0
Test 3: 0
*/

int	main(void)
{
	int	pipe_fd[2];

	if (pipe(pipe_fd) == -1)
		return (1);
	printf("Test 1: %d\n", ft_fd_is_open(pipe_fd[0]));
	close(pipe_fd[0]);
	printf("Test 2: %d\n", ft_fd_is_open(pipe_fd[0]));
	printf("Test 3: %d\n", ft_fd_is_open(-1));
	close(pipe_fd[1]);
	return (0);
}

/*
EDGE CASES:
Closed and negative descriptors are invalid.

LEARNING CHECK:
1. What does fcntl F_GETFD inspect?
2. Why is -1 not a valid descriptor?
3. Does this test guarantee an fd remains open later?
4. Why not read a byte just to test validity?

NOTE:
The function is intentionally empty. Implement it yourself.
Keep implementation functions at or below 25 lines and respect 42 Norm.
*/
