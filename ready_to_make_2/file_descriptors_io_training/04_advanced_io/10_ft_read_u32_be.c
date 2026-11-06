#include <unistd.h>
#include <stdio.h>
#include <string.h>

int	ft_read_u32_be(int fd, unsigned int *value)
{
	
}

/*
GOAL:
Read four big-endian bytes into value; return 1 if complete, 0 on premature EOF, -1 on error.

TODO:
1. Read exactly four bytes.
2. Return 0 if EOF occurs before four bytes.
3. Combine bytes with unsigned shifts.
4. Assign value only when the record is complete.

EXPECTED OUTPUT:
Test 1: 1
Test 2: 41424344
Test 3: 0
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
	int		fd;
	unsigned int	value;

	fd = ft_test_input("ABCD");
	if (fd == -1)
		return (1);
	printf("Test 1: %d\n", ft_read_u32_be(fd, &value));
	printf("Test 2: %08x\n", value);
	close(fd);
	fd = ft_test_input("ab");
	if (fd == -1)
		return (1);
	printf("Test 3: %d\n", ft_read_u32_be(fd, &value));
	close(fd);
	return (0);
}

/*
EDGE CASES:
An incomplete four-byte record must not overwrite value.

LEARNING CHECK:
1. How are four bytes combined?
2. Why use unsigned shifts?
3. What is a truncated record?
4. How does this relate to binary file formats?

NOTE:
The function is intentionally empty. Implement it yourself.
Keep implementation functions at or below 25 lines and respect 42 Norm.
*/
