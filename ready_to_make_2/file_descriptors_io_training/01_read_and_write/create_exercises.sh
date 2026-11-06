#!/usr/bin/env bash
set -euo pipefail
cd "$(dirname "$0")" || exit 1

cat > 00_ft_read_exact.c <<'EOF'
#include <unistd.h>
#include <stdio.h>
#include <string.h>

int	ft_read_exact(int fd, char *out, int count)
{
	
}

/*
GOAL:
Read up to exactly count bytes using repeated read calls; return bytes obtained or -1.

TODO:
1. Reject negative count.
2. Keep reading until count bytes or EOF.
3. Advance the pointer by bytes read.
4. Return -1 if any read fails.

EXPECTED OUTPUT:
Test 1: 4 [abcd]
Test 2: 2 [hi]
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

	fd = ft_test_input("abcdef");
	if (fd == -1)
		return (1);
	memset(buffer, 0, sizeof(buffer));
	ret = ft_read_exact(fd, buffer, 4);
	printf("Test 1: %d [%s]\n", ret, buffer);
	close(fd);

	fd = ft_test_input("hi");
	if (fd == -1)
		return (1);
	memset(buffer, 0, sizeof(buffer));
	ret = ft_read_exact(fd, buffer, 5);
	printf("Test 2: %d [%s]\n", ret, buffer);
	close(fd);

	fd = ft_test_input("");
	if (fd == -1)
		return (1);
	memset(buffer, 0, sizeof(buffer));
	ret = ft_read_exact(fd, buffer, 5);
	printf("Test 3: %d [%s]\n", ret, buffer);
	close(fd);

	return (0);
}

/*
EDGE CASES:
Short input returns the available byte count at EOF.

LEARNING CHECK:
1. Why can one read be short?
2. Why increment out after a successful read?
3. Why stop on EOF?
4. How does this help parse fixed-width records?

NOTE:
The function is intentionally empty. Implement it yourself.
Keep implementation functions at or below 25 lines and respect 42 Norm.
*/
EOF

cat > 01_ft_read_skip.c <<'EOF'
#include <unistd.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

int	ft_read_skip(int fd, int count)
{
	
}

/*
GOAL:
Discard up to count bytes and return the number discarded, or -1 on error.

TODO:
1. Reject negative count.
2. Use a small temporary buffer.
3. Read at most the remaining bytes each time.
4. Stop on EOF and return discarded count.

EXPECTED OUTPUT:
Test 1: 2
Test 2: 3
Test 3: 0
*/

static int	ft_test_file(const char *text)
{
	char	path[] = "/tmp/ft_io_XXXXXX";
	int		fd;
	int		length;

	fd = mkstemp(path);
	if (fd == -1)
		return (-1);
	unlink(path);
	length = (int)strlen(text);
	if (write(fd, text, length) != length || lseek(fd, 0, SEEK_SET) == -1)
	{
		close(fd);
		return (-1);
	}
	return (fd);
}

int	main(void)
{
	int	fd;

	fd = ft_test_file("abcdef");
	if (fd == -1)
		return (1);
	printf("Test 1: %d\n", ft_read_skip(fd, 2));
	close(fd);

	fd = ft_test_file("abc");
	if (fd == -1)
		return (1);
	printf("Test 2: %d\n", ft_read_skip(fd, 8));
	close(fd);

	fd = ft_test_file("");
	if (fd == -1)
		return (1);
	printf("Test 3: %d\n", ft_read_skip(fd, 3));
	close(fd);

	return (0);
}

/*
EDGE CASES:
Must not read past EOF or discard more than requested.

LEARNING CHECK:
1. Why use a buffer for skipped bytes?
2. How do you avoid exceeding count?
3. What does EOF do?
4. When is skipping useful in parsing?

NOTE:
The function is intentionally empty. Implement it yourself.
Keep implementation functions at or below 25 lines and respect 42 Norm.
*/
EOF

cat > 02_ft_read_until.c <<'EOF'
#include <unistd.h>
#include <stdio.h>
#include <string.h>

int	ft_read_until(int fd, char *out, int capacity, char stop)
{
	
}

/*
GOAL:
Read characters into a NUL-terminated buffer until stop, EOF or capacity - 1.

TODO:
1. Reserve room for NUL.
2. Read one character at a time.
3. Include stop if encountered and space remains.
4. NUL-terminate and return bytes stored.

EXPECTED OUTPUT:
Test 1: 3 [ab,]
Test 2: 3 [xyz]
Test 3: 2 [he]
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

	fd = ft_test_input("ab,cd");
	if (fd == -1)
		return (1);
	memset(buffer, 0, sizeof(buffer));
	ret = ft_read_until(fd, buffer, 16, ',');
	printf("Test 1: %d [%s]\n", ret, buffer);
	close(fd);

	fd = ft_test_input("xyz");
	if (fd == -1)
		return (1);
	memset(buffer, 0, sizeof(buffer));
	ret = ft_read_until(fd, buffer, 16, ',');
	printf("Test 2: %d [%s]\n", ret, buffer);
	close(fd);

	fd = ft_test_input("hello");
	if (fd == -1)
		return (1);
	memset(buffer, 0, sizeof(buffer));
	ret = ft_read_until(fd, buffer, 3, ',');
	printf("Test 3: %d [%s]\n", ret, buffer);
	close(fd);

	return (0);
}

/*
EDGE CASES:
Handle delimiter absent and a full output buffer.

LEARNING CHECK:
1. Does the delimiter belong in the output?
2. Why reserve a NUL byte?
3. How does read signal EOF?
4. How could this implement line reading?

NOTE:
The function is intentionally empty. Implement it yourself.
Keep implementation functions at or below 25 lines and respect 42 Norm.
*/
EOF

cat > 03_ft_count_fd_bytes.c <<'EOF'
#include <unistd.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

int	ft_count_fd_bytes(int fd)
{
	
}

/*
GOAL:
Consume the entire descriptor and return its byte count, or -1 for a read error.

TODO:
1. Read repeatedly into a temporary buffer.
2. Accumulate successful read counts.
3. Stop when read returns zero.
4. Return -1 if read fails.

EXPECTED OUTPUT:
Test 1: 5
Test 2: 0
Test 3: 9
*/

static int	ft_test_file(const char *text)
{
	char	path[] = "/tmp/ft_io_XXXXXX";
	int		fd;
	int		length;

	fd = mkstemp(path);
	if (fd == -1)
		return (-1);
	unlink(path);
	length = (int)strlen(text);
	if (write(fd, text, length) != length || lseek(fd, 0, SEEK_SET) == -1)
	{
		close(fd);
		return (-1);
	}
	return (fd);
}

int	main(void)
{
	int	fd;

	fd = ft_test_file("hello");
	if (fd == -1)
		return (1);
	printf("Test 1: %d\n", ft_count_fd_bytes(fd));
	close(fd);

	fd = ft_test_file("");
	if (fd == -1)
		return (1);
	printf("Test 2: %d\n", ft_count_fd_bytes(fd));
	close(fd);

	fd = ft_test_file("123456789");
	if (fd == -1)
		return (1);
	printf("Test 3: %d\n", ft_count_fd_bytes(fd));
	close(fd);

	return (0);
}

/*
EDGE CASES:
Counts bytes, not characters or NUL-terminated strings.

LEARNING CHECK:
1. Does reading consume bytes?
2. Why use a buffer rather than one byte?
3. What is EOF?
4. How can this measure file content?

NOTE:
The function is intentionally empty. Implement it yourself.
Keep implementation functions at or below 25 lines and respect 42 Norm.
*/
EOF

cat > 04_ft_count_fd_newlines.c <<'EOF'
#include <unistd.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

int	ft_count_fd_newlines(int fd)
{
	
}

/*
GOAL:
Count newline bytes in data read from fd; return -1 on errors.

TODO:
1. Read successive chunks.
2. Inspect each byte for newline.
3. Keep a total across chunks.
4. Stop at EOF or return -1 on error.

EXPECTED OUTPUT:
Test 1: 2
Test 2: 0
Test 3: 0
*/

static int	ft_test_file(const char *text)
{
	char	path[] = "/tmp/ft_io_XXXXXX";
	int		fd;
	int		length;

	fd = mkstemp(path);
	if (fd == -1)
		return (-1);
	unlink(path);
	length = (int)strlen(text);
	if (write(fd, text, length) != length || lseek(fd, 0, SEEK_SET) == -1)
	{
		close(fd);
		return (-1);
	}
	return (fd);
}

int	main(void)
{
	int	fd;

	fd = ft_test_file("a\nb\n");
	if (fd == -1)
		return (1);
	printf("Test 1: %d\n", ft_count_fd_newlines(fd));
	close(fd);

	fd = ft_test_file("abc");
	if (fd == -1)
		return (1);
	printf("Test 2: %d\n", ft_count_fd_newlines(fd));
	close(fd);

	fd = ft_test_file("");
	if (fd == -1)
		return (1);
	printf("Test 3: %d\n", ft_count_fd_newlines(fd));
	close(fd);

	return (0);
}

/*
EDGE CASES:
A final unterminated line does not add a newline byte.

LEARNING CHECK:
1. What is the byte for newline?
2. Does every line end with newline?
3. What does read return at EOF?
4. How does this differ from counting logical lines?

NOTE:
The function is intentionally empty. Implement it yourself.
Keep implementation functions at or below 25 lines and respect 42 Norm.
*/
EOF

cat > 05_ft_count_fd_char.c <<'EOF'
#include <unistd.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

int	ft_count_fd_char(int fd, char target)
{
	
}

/*
GOAL:
Count occurrences of target byte in a descriptor; return -1 on read errors.

TODO:
1. Read into a temporary buffer.
2. Compare each byte with target.
3. Add every match to the count.
4. Continue until EOF.

EXPECTED OUTPUT:
Test 1: 3
Test 2: 0
Test 3: 0
*/

static int	ft_test_file(const char *text)
{
	char	path[] = "/tmp/ft_io_XXXXXX";
	int		fd;
	int		length;

	fd = mkstemp(path);
	if (fd == -1)
		return (-1);
	unlink(path);
	length = (int)strlen(text);
	if (write(fd, text, length) != length || lseek(fd, 0, SEEK_SET) == -1)
	{
		close(fd);
		return (-1);
	}
	return (fd);
}

int	main(void)
{
	int	fd;

	fd = ft_test_file("banana");
	if (fd == -1)
		return (1);
	printf("Test 1: %d\n", ft_count_fd_char(fd, 'a'));
	close(fd);

	fd = ft_test_file("hello");
	if (fd == -1)
		return (1);
	printf("Test 2: %d\n", ft_count_fd_char(fd, 'z'));
	close(fd);

	fd = ft_test_file("");
	if (fd == -1)
		return (1);
	printf("Test 3: %d\n", ft_count_fd_char(fd, 'a'));
	close(fd);

	return (0);
}

/*
EDGE CASES:
Empty input contains zero occurrences.

LEARNING CHECK:
1. Why scan only bytes actually read?
2. Can target be a NUL byte?
3. What happens at EOF?
4. Why is this streaming-friendly?

NOTE:
The function is intentionally empty. Implement it yourself.
Keep implementation functions at or below 25 lines and respect 42 Norm.
*/
EOF

cat > 06_ft_read_last.c <<'EOF'
#include <unistd.h>
#include <stdio.h>
#include <string.h>

int	ft_read_last(int fd, char *out)
{
	
}

/*
GOAL:
Consume fd and store the last byte; return 1 if found, 0 for empty, -1 on error.

TODO:
1. Read bytes until EOF.
2. Remember the latest byte read.
3. Handle an entirely empty stream.
4. Store the last byte only if one was read.

EXPECTED OUTPUT:
Test 1: 1
Test 2: d
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
	char	last;

	fd = ft_test_input("abcd");
	if (fd == -1)
		return (1);
	printf("Test 1: %d\n", ft_read_last(fd, &last));
	printf("Test 2: %c\n", last);
	close(fd);

	fd = ft_test_input("");
	if (fd == -1)
		return (1);
	printf("Test 3: %d\n", ft_read_last(fd, &last));
	close(fd);
	return (0);
}

/*
EDGE CASES:
On empty input, out should remain unchanged.

LEARNING CHECK:
1. Why is a last byte different from a line ending?
2. When may out be written?
3. How do you detect empty input?
4. Can pipes be read backwards?

NOTE:
The function is intentionally empty. Implement it yourself.
Keep implementation functions at or below 25 lines and respect 42 Norm.
*/
EOF

cat > 07_ft_copy_fd.c <<'EOF'
#include <unistd.h>
#include <stdio.h>
#include <string.h>

int	ft_copy_fd(int src_fd, int dst_fd)
{
	
}

/*
GOAL:
Copy all available bytes from src_fd to dst_fd; return copied bytes or -1.

TODO:
1. Read bytes in chunks from src_fd.
2. Write every read byte to dst_fd.
3. Handle partial writes.
4. Return copied count, or -1 on failure.

EXPECTED OUTPUT:
Test 1: 7 [copy me]
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
	int		in_fd;
	int		out_fd[2];
	char	buffer[32] = {0};
	int		ret;

	in_fd = ft_test_input("copy me");
	if (in_fd == -1 || pipe(out_fd) == -1)
		return (1);
	ret = ft_copy_fd(in_fd, out_fd[1]);
	close(in_fd);
	close(out_fd[1]);
	read(out_fd[0], buffer, sizeof(buffer) - 1);
	close(out_fd[0]);
	printf("Test 1: %d [%s]\n", ret, buffer);
	return (0);
}

/*
EDGE CASES:
A copy must handle multiple read and write operations.

LEARNING CHECK:
1. Why use separate source and destination fds?
2. What is partial write handling?
3. How does EOF terminate copying?
4. How is this related to cp?

NOTE:
The function is intentionally empty. Implement it yourself.
Keep implementation functions at or below 25 lines and respect 42 Norm.
*/
EOF

cat > 08_ft_read_first_line.c <<'EOF'
#include <unistd.h>
#include <stdio.h>
#include <string.h>

int	ft_read_first_line(int fd, char *out, int capacity)
{
	
}

/*
GOAL:
Read a line into a NUL-terminated buffer, retaining newline when space permits.

TODO:
1. Reserve one byte for NUL.
2. Read byte by byte until newline or EOF.
3. Stop at capacity - 1 bytes.
4. Return copied count or -1 on error.

EXPECTED OUTPUT:
Test 1: 4 [one
]
Test 2: 4 [last]
Test 3: 2 [ab]
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

	fd = ft_test_input("one\ntwo");
	if (fd == -1)
		return (1);
	memset(buffer, 0, sizeof(buffer));
	ret = ft_read_first_line(fd, buffer, 20);
	printf("Test 1: %d [%s]\n", ret, buffer);
	close(fd);

	fd = ft_test_input("last");
	if (fd == -1)
		return (1);
	memset(buffer, 0, sizeof(buffer));
	ret = ft_read_first_line(fd, buffer, 20);
	printf("Test 2: %d [%s]\n", ret, buffer);
	close(fd);

	fd = ft_test_input("abc\ndef");
	if (fd == -1)
		return (1);
	memset(buffer, 0, sizeof(buffer));
	ret = ft_read_first_line(fd, buffer, 3);
	printf("Test 3: %d [%s]\n", ret, buffer);
	close(fd);

	return (0);
}

/*
EDGE CASES:
A line without a trailing newline is still a valid final line.

LEARNING CHECK:
1. Should newline be included?
2. What happens if the buffer fills early?
3. Is EOF an error?
4. How does this connect to get_next_line?

NOTE:
The function is intentionally empty. Implement it yourself.
Keep implementation functions at or below 25 lines and respect 42 Norm.
*/
EOF

cat > 09_ft_read_byte_sum.c <<'EOF'
#include <unistd.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

int	ft_read_byte_sum(int fd)
{
	
}

/*
GOAL:
Return the sum of unsigned byte values read from fd; return -1 for read errors.

TODO:
1. Read input in chunks.
2. Treat each byte as unsigned char.
3. Add each value to the sum.
4. Stop at EOF or return -1 on error.

EXPECTED OUTPUT:
Test 1: 198
Test 2: 48
Test 3: 0
*/

static int	ft_test_file(const char *text)
{
	char	path[] = "/tmp/ft_io_XXXXXX";
	int		fd;
	int		length;

	fd = mkstemp(path);
	if (fd == -1)
		return (-1);
	unlink(path);
	length = (int)strlen(text);
	if (write(fd, text, length) != length || lseek(fd, 0, SEEK_SET) == -1)
	{
		close(fd);
		return (-1);
	}
	return (fd);
}

int	main(void)
{
	int	fd;

	fd = ft_test_file("ABC");
	if (fd == -1)
		return (1);
	printf("Test 1: %d\n", ft_read_byte_sum(fd));
	close(fd);

	fd = ft_test_file("0");
	if (fd == -1)
		return (1);
	printf("Test 2: %d\n", ft_read_byte_sum(fd));
	close(fd);

	fd = ft_test_file("");
	if (fd == -1)
		return (1);
	printf("Test 3: %d\n", ft_read_byte_sum(fd));
	close(fd);

	return (0);
}

/*
EDGE CASES:
Assume the total fits in int for the small training inputs.

LEARNING CHECK:
1. What is the ASCII value of A?
2. Why interpret bytes as unsigned?
3. What does empty input sum to?
4. How is a checksum different from a hash?

NOTE:
The function is intentionally empty. Implement it yourself.
Keep implementation functions at or below 25 lines and respect 42 Norm.
*/
EOF

cat > 10_ft_read_compare.c <<'EOF'
#include <unistd.h>
#include <stdio.h>
#include <string.h>

int	ft_read_compare(int left_fd, int right_fd)
{
	
}

/*
GOAL:
Return 1 if two input streams have identical byte sequences, otherwise 0; -1 on read failure.

TODO:
1. Read one byte from each stream per iteration.
2. Compare both read counts.
3. Compare bytes when both reads succeed.
4. Stop only when both reach EOF.

EXPECTED OUTPUT:
Test 1: 1
Test 2: 0
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
	int	left_fd;
	int	right_fd;

	left_fd = ft_test_input("abc");
	right_fd = ft_test_input("abc");
	if (left_fd == -1 || right_fd == -1)
		return (1);
	printf("Test 1: %d\n", ft_read_compare(left_fd, right_fd));
	close(left_fd);
	close(right_fd);
	left_fd = ft_test_input("abc");
	right_fd = ft_test_input("ab");
	if (left_fd == -1 || right_fd == -1)
		return (1);
	printf("Test 2: %d\n", ft_read_compare(left_fd, right_fd));
	close(left_fd);
	close(right_fd);
	return (0);
}

/*
EDGE CASES:
Streams of different lengths are not identical.

LEARNING CHECK:
1. Can streams be compared without seeking?
2. What if one stream ends first?
3. How should errors differ from mismatches?
4. Why compare raw bytes?

NOTE:
The function is intentionally empty. Implement it yourself.
Keep implementation functions at or below 25 lines and respect 42 Norm.
*/
EOF

cat > 11_ft_read_until_eof.c <<'EOF'
#include <unistd.h>
#include <stdio.h>
#include <string.h>

int	ft_read_until_eof(int fd, char *out, int capacity)
{
	
}

/*
GOAL:
Read as much as fits until EOF or capacity - 1, and produce a C string.

TODO:
1. Check capacity is positive.
2. Repeat reads into remaining space.
3. Stop at EOF or a full buffer.
4. Terminate with NUL and return bytes read.

EXPECTED OUTPUT:
Test 1: 4 [abcd]
Test 2: 2 [ab]
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

	fd = ft_test_input("abcd");
	if (fd == -1)
		return (1);
	memset(buffer, 0, sizeof(buffer));
	ret = ft_read_until_eof(fd, buffer, 12);
	printf("Test 1: %d [%s]\n", ret, buffer);
	close(fd);

	fd = ft_test_input("abc");
	if (fd == -1)
		return (1);
	memset(buffer, 0, sizeof(buffer));
	ret = ft_read_until_eof(fd, buffer, 3);
	printf("Test 2: %d [%s]\n", ret, buffer);
	close(fd);

	fd = ft_test_input("");
	if (fd == -1)
		return (1);
	memset(buffer, 0, sizeof(buffer));
	ret = ft_read_until_eof(fd, buffer, 12);
	printf("Test 3: %d [%s]\n", ret, buffer);
	close(fd);

	return (0);
}

/*
EDGE CASES:
Do not read beyond capacity - 1.

LEARNING CHECK:
1. Why repeat read?
2. What happens when the buffer is full before EOF?
3. Where does NUL go?
4. Why is this limited for large files?

NOTE:
The function is intentionally empty. Implement it yourself.
Keep implementation functions at or below 25 lines and respect 42 Norm.
*/
EOF

echo "Reset 12 exercises in 01_read_and_write!"
