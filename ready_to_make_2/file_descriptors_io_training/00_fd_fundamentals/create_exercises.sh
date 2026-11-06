#!/usr/bin/env bash
set -euo pipefail
cd "$(dirname "$0")" || exit 1

cat > 00_ft_write_char.c <<'EOF'
#include <unistd.h>
#include <stdio.h>

int	ft_write_char(int fd, char c)
{
	
}

/*
GOAL:
Write exactly one character to the supplied file descriptor and return 1, or -1 on failure.

TODO:
1. Pass fd, the character address and a byte count to write.
2. Check that exactly one byte was written.
3. Return -1 for a failed write.
4. Return 1 for success.

EXPECTED OUTPUT:
Test 1: 1 [A]
Test 2: 1 [0]
*/

int	main(void)
{
	int		pipe_fd[2];
	char	buffer[128];
	int		ret;
	int		bytes;

	if (pipe(pipe_fd) == -1)
		return (1);
	ret = ft_write_char(pipe_fd[1], 'A');
	close(pipe_fd[1]);
	bytes = read(pipe_fd[0], buffer, sizeof(buffer) - 1);
	close(pipe_fd[0]);
	if (bytes < 0)
		return (1);
	buffer[bytes] = '\0';
	printf("Test 1: %d [%s]\n", ret, buffer);

	if (pipe(pipe_fd) == -1)
		return (1);
	ret = ft_write_char(pipe_fd[1], '0');
	close(pipe_fd[1]);
	bytes = read(pipe_fd[0], buffer, sizeof(buffer) - 1);
	close(pipe_fd[0]);
	if (bytes < 0)
		return (1);
	buffer[bytes] = '\0';
	printf("Test 2: %d [%s]\n", ret, buffer);

	return (0);
}

/*
EDGE CASES:
An invalid or closed descriptor must report failure.

LEARNING CHECK:
1. What does file descriptor 1 represent?
2. Why does write require an address?
3. What does write return?
4. Why accept fd as a parameter?

NOTE:
The function is intentionally empty. Implement it yourself.
Keep implementation functions at or below 25 lines and respect 42 Norm.
*/
EOF

cat > 01_ft_write_text.c <<'EOF'
#include <unistd.h>
#include <stdio.h>

int	ft_write_text(int fd, const char *text)
{
	
}

/*
GOAL:
Write a NUL-terminated string without writing its terminator; return bytes written or -1.

TODO:
1. Walk through the string until its NUL byte.
2. Write each character to fd.
3. Stop and return -1 if any write fails.
4. Otherwise return the total byte count.

EXPECTED OUTPUT:
Test 1: 5 [hello]
Test 2: 0 []
Test 3: 2 [42]
*/

int	main(void)
{
	int		pipe_fd[2];
	char	buffer[128];
	int		ret;
	int		bytes;

	if (pipe(pipe_fd) == -1)
		return (1);
	ret = ft_write_text(pipe_fd[1], "hello");
	close(pipe_fd[1]);
	bytes = read(pipe_fd[0], buffer, sizeof(buffer) - 1);
	close(pipe_fd[0]);
	if (bytes < 0)
		return (1);
	buffer[bytes] = '\0';
	printf("Test 1: %d [%s]\n", ret, buffer);

	if (pipe(pipe_fd) == -1)
		return (1);
	ret = ft_write_text(pipe_fd[1], "");
	close(pipe_fd[1]);
	bytes = read(pipe_fd[0], buffer, sizeof(buffer) - 1);
	close(pipe_fd[0]);
	if (bytes < 0)
		return (1);
	buffer[bytes] = '\0';
	printf("Test 2: %d [%s]\n", ret, buffer);

	if (pipe(pipe_fd) == -1)
		return (1);
	ret = ft_write_text(pipe_fd[1], "42");
	close(pipe_fd[1]);
	bytes = read(pipe_fd[0], buffer, sizeof(buffer) - 1);
	close(pipe_fd[0]);
	if (bytes < 0)
		return (1);
	buffer[bytes] = '\0';
	printf("Test 3: %d [%s]\n", ret, buffer);

	return (0);
}

/*
EDGE CASES:
The empty string writes zero bytes.

LEARNING CHECK:
1. What is the NUL terminator?
2. Why is it not printed?
3. What happens on a write failure?
4. How does this relate to ft_putstr_fd?

NOTE:
The function is intentionally empty. Implement it yourself.
Keep implementation functions at or below 25 lines and respect 42 Norm.
*/
EOF

cat > 02_ft_write_n.c <<'EOF'
#include <unistd.h>
#include <stdio.h>

int	ft_write_n(int fd, const char *data, int size)
{
	
}

/*
GOAL:
Write exactly size bytes, including embedded NUL bytes; return size or -1.

TODO:
1. Reject a negative size.
2. Repeat write until size bytes have been sent.
3. Advance the data pointer by bytes written.
4. Handle write failures or zero progress.

EXPECTED OUTPUT:
Test 1: 3 [hel]
Test 2: 0 []
Test 3: 3 [xyz]
*/

int	main(void)
{
	int		pipe_fd[2];
	char	buffer[128];
	int		ret;
	int		bytes;

	if (pipe(pipe_fd) == -1)
		return (1);
	ret = ft_write_n(pipe_fd[1], "hello", 3);
	close(pipe_fd[1]);
	bytes = read(pipe_fd[0], buffer, sizeof(buffer) - 1);
	close(pipe_fd[0]);
	if (bytes < 0)
		return (1);
	buffer[bytes] = '\0';
	printf("Test 1: %d [%s]\n", ret, buffer);

	if (pipe(pipe_fd) == -1)
		return (1);
	ret = ft_write_n(pipe_fd[1], "abc", 0);
	close(pipe_fd[1]);
	bytes = read(pipe_fd[0], buffer, sizeof(buffer) - 1);
	close(pipe_fd[0]);
	if (bytes < 0)
		return (1);
	buffer[bytes] = '\0';
	printf("Test 2: %d [%s]\n", ret, buffer);

	if (pipe(pipe_fd) == -1)
		return (1);
	ret = ft_write_n(pipe_fd[1], "xyz", 3);
	close(pipe_fd[1]);
	bytes = read(pipe_fd[0], buffer, sizeof(buffer) - 1);
	close(pipe_fd[0]);
	if (bytes < 0)
		return (1);
	buffer[bytes] = '\0';
	printf("Test 3: %d [%s]\n", ret, buffer);

	return (0);
}

/*
EDGE CASES:
Do not treat NUL as the end of binary data.

LEARNING CHECK:
1. How is size different from strlen?
2. Can write send fewer bytes than requested?
3. Why advance a pointer after a partial write?
4. When is write_n preferable to write_text?

NOTE:
The function is intentionally empty. Implement it yourself.
Keep implementation functions at or below 25 lines and respect 42 Norm.
*/
EOF

cat > 03_ft_write_line.c <<'EOF'
#include <unistd.h>
#include <stdio.h>

int	ft_write_line(int fd, const char *text)
{
	
}

/*
GOAL:
Write a string followed by a newline; return the combined byte count or -1.

TODO:
1. Write every character in text.
2. Detect a failed write.
3. Write one newline after the text.
4. Return total bytes including newline.

EXPECTED OUTPUT:
Test 1: 3 [hi
]
Test 2: 1 [
]
*/

int	main(void)
{
	int		pipe_fd[2];
	char	buffer[128];
	int		ret;
	int		bytes;

	if (pipe(pipe_fd) == -1)
		return (1);
	ret = ft_write_line(pipe_fd[1], "hi");
	close(pipe_fd[1]);
	bytes = read(pipe_fd[0], buffer, sizeof(buffer) - 1);
	close(pipe_fd[0]);
	if (bytes < 0)
		return (1);
	buffer[bytes] = '\0';
	printf("Test 1: %d [%s]\n", ret, buffer);

	if (pipe(pipe_fd) == -1)
		return (1);
	ret = ft_write_line(pipe_fd[1], "");
	close(pipe_fd[1]);
	bytes = read(pipe_fd[0], buffer, sizeof(buffer) - 1);
	close(pipe_fd[0]);
	if (bytes < 0)
		return (1);
	buffer[bytes] = '\0';
	printf("Test 2: %d [%s]\n", ret, buffer);

	return (0);
}

/*
EDGE CASES:
Even an empty string should produce a newline.

LEARNING CHECK:
1. Which character represents newline?
2. Why does the return count include it?
3. What if the newline write fails?
4. How could this serve logging code?

NOTE:
The function is intentionally empty. Implement it yourself.
Keep implementation functions at or below 25 lines and respect 42 Norm.
*/
EOF

cat > 04_ft_write_repeat.c <<'EOF'
#include <unistd.h>
#include <stdio.h>

int	ft_write_repeat(int fd, char c, int count)
{
	
}

/*
GOAL:
Write the same character count times; return count or -1.

TODO:
1. Reject negative count values.
2. Loop until count characters are written.
3. Check each write result.
4. Return the total number written.

EXPECTED OUTPUT:
Test 1: 4 [****]
Test 2: 0 []
*/

int	main(void)
{
	int		pipe_fd[2];
	char	buffer[128];
	int		ret;
	int		bytes;

	if (pipe(pipe_fd) == -1)
		return (1);
	ret = ft_write_repeat(pipe_fd[1], '*', 4);
	close(pipe_fd[1]);
	bytes = read(pipe_fd[0], buffer, sizeof(buffer) - 1);
	close(pipe_fd[0]);
	if (bytes < 0)
		return (1);
	buffer[bytes] = '\0';
	printf("Test 1: %d [%s]\n", ret, buffer);

	if (pipe(pipe_fd) == -1)
		return (1);
	ret = ft_write_repeat(pipe_fd[1], 'x', 0);
	close(pipe_fd[1]);
	bytes = read(pipe_fd[0], buffer, sizeof(buffer) - 1);
	close(pipe_fd[0]);
	if (bytes < 0)
		return (1);
	buffer[bytes] = '\0';
	printf("Test 2: %d [%s]\n", ret, buffer);

	return (0);
}

/*
EDGE CASES:
Zero repetitions produce no output.

LEARNING CHECK:
1. What is the difference between count and a byte value?
2. What does count 0 do?
3. When must the loop stop?
4. Why keep fd configurable?

NOTE:
The function is intentionally empty. Implement it yourself.
Keep implementation functions at or below 25 lines and respect 42 Norm.
*/
EOF

cat > 05_ft_fd_is_open.c <<'EOF'
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
EOF

cat > 06_ft_fd_copy.c <<'EOF'
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
EOF

cat > 07_ft_close_fd.c <<'EOF'
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
EOF

cat > 08_ft_read_char.c <<'EOF'
#include <unistd.h>
#include <stdio.h>
#include <string.h>

int	ft_read_char(int fd, char *out)
{
	
}

/*
GOAL:
Read exactly one attempted byte into out; return read result (1, 0, or -1).

TODO:
1. Call read once with a one-byte buffer.
2. Preserve the read return value.
3. Do not treat EOF as an error.
4. Do not access out when read returns 0 or -1.

EXPECTED OUTPUT:
Test 1: 1
Test 2: A
Test 3: 1
Test 4: B
Test 5: 0
Test 6: -1
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
	int	fd;
	char	letter;

	fd = ft_test_input("AB");
	if (fd == -1)
		return (1);
	printf("Test 1: %d\n", ft_read_char(fd, &letter));
	printf("Test 2: %c\n", letter);
	printf("Test 3: %d\n", ft_read_char(fd, &letter));
	printf("Test 4: %c\n", letter);
	printf("Test 5: %d\n", ft_read_char(fd, &letter));
	close(fd);
	printf("Test 6: %d\n", ft_read_char(-1, &letter));
	return (0);
}

/*
EDGE CASES:
EOF is 0; invalid fds yield -1.

LEARNING CHECK:
1. What does read return when it gets one byte?
2. Is EOF an error?
3. Why must out have space?
4. What is the difference between read and write?

NOTE:
The function is intentionally empty. Implement it yourself.
Keep implementation functions at or below 25 lines and respect 42 Norm.
*/
EOF

cat > 09_ft_read_once.c <<'EOF'
#include <unistd.h>
#include <stdio.h>
#include <string.h>

int	ft_read_once(int fd, char *buffer, int capacity)
{
	
}

/*
GOAL:
Read up to capacity bytes once; return actual byte count, 0, or -1.

TODO:
1. Reject negative capacity.
2. Call read once with capacity.
3. Return the number of bytes read.
4. Do not append a NUL terminator.

EXPECTED OUTPUT:
Test 1: 3
Test 2: [hel]
Test 3: 2
Test 4: 0
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
	char	buffer[8] = {0};
	int		fd;

	fd = ft_test_input("hello");
	if (fd == -1)
		return (1);
	printf("Test 1: %d\n", ft_read_once(fd, buffer, 3));
	printf("Test 2: [%.*s]\n", 3, buffer);
	printf("Test 3: %d\n", ft_read_once(fd, buffer, 8));
	printf("Test 4: %d\n", ft_read_once(fd, buffer, 8));
	close(fd);
	return (0);
}

/*
EDGE CASES:
The buffer is binary data; it is not necessarily a C string.

LEARNING CHECK:
1. Why can read return fewer bytes than capacity?
2. Does read append NUL?
3. Why use %.*s in the test?
4. What does a second read consume?

NOTE:
The function is intentionally empty. Implement it yourself.
Keep implementation functions at or below 25 lines and respect 42 Norm.
*/
EOF

cat > 10_ft_read_to_string.c <<'EOF'
#include <unistd.h>
#include <stdio.h>
#include <string.h>

int	ft_read_to_string(int fd, char *out, int capacity)
{
	
}

/*
GOAL:
Read at most capacity - 1 bytes and terminate the result as a C string.

TODO:
1. Reject a capacity less than 1.
2. Read at most capacity - 1 bytes.
3. Return -1 for read errors.
4. Append NUL and return the number read.

EXPECTED OUTPUT:
Test 1: 3 [hel]
Test 2: 3 [abc]
Test 3: 0 []
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
	char	buffer[64] = {0};
	int		fd;
	int		ret;

	fd = ft_test_input("hello");
	if (fd == -1)
		return (1);
	memset(buffer, 0, sizeof(buffer));
	ret = ft_read_to_string(fd, buffer, 4);
	printf("Test 1: %d [%s]\n", ret, buffer);
	close(fd);

	fd = ft_test_input("abc");
	if (fd == -1)
		return (1);
	memset(buffer, 0, sizeof(buffer));
	ret = ft_read_to_string(fd, buffer, 8);
	printf("Test 2: %d [%s]\n", ret, buffer);
	close(fd);

	fd = ft_test_input("");
	if (fd == -1)
		return (1);
	memset(buffer, 0, sizeof(buffer));
	ret = ft_read_to_string(fd, buffer, 8);
	printf("Test 3: %d [%s]\n", ret, buffer);
	close(fd);

	return (0);
}

/*
EDGE CASES:
Capacity includes the byte reserved for NUL.

LEARNING CHECK:
1. Why subtract one from capacity?
2. What happens at EOF?
3. What if capacity is zero?
4. How does this differ from raw read?

NOTE:
The function is intentionally empty. Implement it yourself.
Keep implementation functions at or below 25 lines and respect 42 Norm.
*/
EOF

cat > 11_ft_write_from_buffer.c <<'EOF'
#include <unistd.h>
#include <stdio.h>

int	ft_write_from_buffer(int fd, const char *buffer, int size)
{
	
}

/*
GOAL:
Write size raw bytes from a buffer, including any NUL bytes.

TODO:
1. Validate size is non-negative.
2. Use write to send the requested bytes.
3. Handle partial writes with a loop.
4. Return size on success and -1 on failure.

EXPECTED OUTPUT:
Test 1: 3 [ABC]
Test 2: 2 [42]
*/

int	main(void)
{
	int		pipe_fd[2];
	char	buffer[128];
	int		ret;
	int		bytes;

	if (pipe(pipe_fd) == -1)
		return (1);
	ret = ft_write_from_buffer(pipe_fd[1], "ABC", 3);
	close(pipe_fd[1]);
	bytes = read(pipe_fd[0], buffer, sizeof(buffer) - 1);
	close(pipe_fd[0]);
	if (bytes < 0)
		return (1);
	buffer[bytes] = '\0';
	printf("Test 1: %d [%s]\n", ret, buffer);

	if (pipe(pipe_fd) == -1)
		return (1);
	ret = ft_write_from_buffer(pipe_fd[1], "42", 2);
	close(pipe_fd[1]);
	bytes = read(pipe_fd[0], buffer, sizeof(buffer) - 1);
	close(pipe_fd[0]);
	if (bytes < 0)
		return (1);
	buffer[bytes] = '\0';
	printf("Test 2: %d [%s]\n", ret, buffer);

	return (0);
}

/*
EDGE CASES:
Size, rather than terminators, controls raw output.

LEARNING CHECK:
1. What if the buffer includes a NUL byte?
2. What is a partial write?
3. Why not call strlen?
4. How is this used in file copying?

NOTE:
The function is intentionally empty. Implement it yourself.
Keep implementation functions at or below 25 lines and respect 42 Norm.
*/
EOF

echo "Reset 12 exercises in 00_fd_fundamentals!"
