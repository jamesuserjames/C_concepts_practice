#include <unistd.h>
#include <stdlib.h>
#include <stddef.h>
#include <stdio.h>

int	ft_read_buffer(int fd, char *out, int capacity)
{
	
}

/*
GOAL:
Read at most capacity - 1 bytes and NUL-terminate the data.

TODO:
1. Understand the function contract and test inputs.
2. If capacity <= 0 return -1; preserve the number of bytes read.
3. Handle boundaries and errors as documented.
4. Compare outputs with EXPECTED OUTPUT below.

EXPECTED OUTPUT:
Test 1: 3 [hel]
Test 2: 3 [lo!]
Test 3: 0
Test 4: -1
*/

int	main(void)
{
	int		pipe_fd[2];
	char	buffer[6] = {0};
	int		ret;

	if (pipe(pipe_fd) == -1)
		return (1);
	if (write(pipe_fd[1], "hello!", 6) != 6)
		return (close(pipe_fd[0]), close(pipe_fd[1]), 1);
	close(pipe_fd[1]);

	ret = ft_read_buffer(pipe_fd[0], buffer, 4);
	printf("Test 1: %d [%s]\n", ret, buffer);

	ret = ft_read_buffer(pipe_fd[0], buffer, 6);
	printf("Test 2: %d [%s]\n", ret, buffer);

	printf("Test 3: %d\n", ft_read_buffer(pipe_fd[0], buffer, 6));
	close(pipe_fd[0]);
	printf("Test 4: %d\n", ft_read_buffer(-1, buffer, 6));
	return (0);
}

/*
EDGE CASES:
Capacity 1, capacity 0, EOF, invalid descriptors, and reserving room for NUL.

LEARNING CHECK:
1. Why do we read capacity - 1 bytes?
2. Where is the NUL byte placed?
3. What happens on EOF?
4. Which test checks an off-by-one boundary?

NOTE:
The function is intentionally empty. Implement it yourself.
Keep implementation functions at or below 25 lines and respect 42 Norm.
*/
