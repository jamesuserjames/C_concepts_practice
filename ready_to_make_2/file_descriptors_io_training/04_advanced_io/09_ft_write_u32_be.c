#include <unistd.h>
#include <stdio.h>

int	ft_write_u32_be(int fd, unsigned int value)
{
	
}

/*
GOAL:
Write the low 32 bits of value as four bytes in big-endian order; return 4 or -1.

TODO:
1. Extract the highest byte using shifts.
2. Write all four bytes most significant first.
3. Check every write result.
4. Return 4, or -1 on failure.

EXPECTED OUTPUT:
Test 1: 4
Test 2: 12 34 56 78
*/

int	main(void)
{
	int		pipe_fd[2];
	unsigned char	bytes[4];
	int		ret;

	if (pipe(pipe_fd) == -1)
		return (1);
	ret = ft_write_u32_be(pipe_fd[1], 0x12345678U);
	close(pipe_fd[1]);
	if (read(pipe_fd[0], bytes, 4) != 4)
		return (1);
	close(pipe_fd[0]);
	printf("Test 1: %d\n", ret);
	printf("Test 2: %02x %02x %02x %02x\n",
		bytes[0], bytes[1], bytes[2], bytes[3]);
	return (0);
}

/*
EDGE CASES:
This contract writes four bytes regardless of native machine endianness.

LEARNING CHECK:
1. What is big-endian order?
2. Why use unsigned bytes?
3. How are shifts used to extract bytes?
4. Why not write the int memory directly?

NOTE:
The function is intentionally empty. Implement it yourself.
Keep implementation functions at or below 25 lines and respect 42 Norm.
*/
