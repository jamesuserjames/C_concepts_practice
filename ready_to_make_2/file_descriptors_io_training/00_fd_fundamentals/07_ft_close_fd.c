#include <unistd.h>
#include <stdio.h>

int	ft_close_fd(int fd)
{
	
}

/*
GOAL:
Close fd; return 0 on success and -1 on failure.

TODO:
1. Call close on the supplied descriptor.
2. Check the return value.
3. Return 0 when close succeeds.
4. Return -1 for a failed close.

EXPECTED OUTPUT:
Test 1: 0
Test 2: -1
Test 3: -1
*/

int	main(void)
{
	int	pipe_fd[2];

	if (pipe(pipe_fd) == -1)
		return (1);
	printf("Test 1: %d\n", ft_close_fd(pipe_fd[0]));
	printf("Test 2: %d\n", ft_close_fd(pipe_fd[0]));
	printf("Test 3: %d\n", ft_close_fd(-1));
	close(pipe_fd[1]);
	return (0);
}

/*
EDGE CASES:
Closing an already closed descriptor is an error.

LEARNING CHECK:
1. What happens to an fd after close?
2. Why is closing the same fd twice dangerous in general?
3. What does close return?
4. How do you avoid descriptor leaks?

NOTE:
The function is intentionally empty. Implement it yourself.
Keep implementation functions at or below 25 lines and respect 42 Norm.
*/
