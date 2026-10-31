#!/usr/bin/env bash
set -euo pipefail
DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

if [[ ! -e "$DIR/ft_join_counts.c" ]]; then
    cat > "$DIR/ft_join_counts.c" <<'EXERCISE_EOF'
#include <unistd.h>
#include <stdlib.h>
#include <stdarg.h>
#include <limits.h>
#include <stddef.h>
#include <stdint.h>

int	ft_join_counts(int first, int second)
{
	
}

#include <stdio.h>

int	main(void)
{
	printf("Test 1: %d\n", ft_join_counts(0, 0));
	printf("Test 2: %d\n", ft_join_counts(1, 2));
	printf("Test 3: %d\n", ft_join_counts(3, 5));
	printf("Test 4: %d\n", ft_join_counts(10, -1));
	printf("Test 5: %d\n", ft_join_counts(-1, 7));
	printf("Test 6: %d\n", ft_join_counts(100, 20));
	return (0);
}

/*
ALLOWED FUNCTIONS:
None for the implementation; printf/fflush are test-only.

GOAL:
Combine byte counts from successive operations; a negative result means
failure.

EXPLANATION:
Combine byte counts from successive operations; a negative result means
failure.
The function parameters are the values passed by the test calls in main.
For printing exercises, return the number of bytes written or -1 on error.
For value exercises, return the value specified by the test contract.
This skill is used when constructing and verifying ft_printf conversions.

TODO:
1. Identify the values provided by each test and what the result means.
2. If either result is -1, return -1; otherwise return their sum.
3. Implement the function using only permitted operations.
4. Compare all test results with the output below.

EXPECTED OUTPUT:
Test 1: 0
Test 2: 3
Test 3: 8
Test 4: -1
Test 5: -1
Test 6: 120

EDGE CASES:
Both zero, one failure, both successes.

LEARNING CHECK:
1. What does each input parameter represent?
2. Why does the function return its specified result?
3. Which boundary input might reveal an implementation error?
4. How does this operation help build ft_printf?

NOTE:
The function body is intentionally empty. Build without -Werror until
you have completed the implementation. Matching tests is useful evidence,
not proof of correctness for every possible input.
*/
EXERCISE_EOF
else
    echo "Keeping existing ft_join_counts.c"
fi

if [[ ! -e "$DIR/ft_write_char.c" ]]; then
    cat > "$DIR/ft_write_char.c" <<'EXERCISE_EOF'
#include <unistd.h>
#include <stdlib.h>
#include <stdarg.h>
#include <limits.h>
#include <stddef.h>
#include <stdint.h>

int	ft_write_char(char c)
{
	
}

#include <stdio.h>

int	main(void)
{
	int	ret;

	printf("Test 1: [");
	fflush(stdout);
	ret = ft_write_char('A');
	printf("] (return: %d)\n", ret);
	printf("Test 2: [");
	fflush(stdout);
	ret = ft_write_char('0');
	printf("] (return: %d)\n", ret);
	printf("Test 3: [");
	fflush(stdout);
	ret = ft_write_char('z');
	printf("] (return: %d)\n", ret);
	printf("Test 4: [");
	fflush(stdout);
	ret = ft_write_char('!');
	printf("] (return: %d)\n", ret);
	printf("Test 5: [");
	fflush(stdout);
	ret = ft_write_char(' ');
	printf("] (return: %d)\n", ret);
	printf("Test 6: [");
	fflush(stdout);
	ret = ft_write_char('#');
	printf("] (return: %d)\n", ret);
	return (0);
}

/*
ALLOWED FUNCTIONS:
write for the implementation; printf/fflush are test-only.

GOAL:
Write a single byte to stdout using write(1, &c, 1).

EXPLANATION:
Write a single byte to stdout using write(1, &c, 1).
The function parameters are the values passed by the test calls in main.
For printing exercises, return the number of bytes written or -1 on error.
For value exercises, return the value specified by the test contract.
This skill is used when constructing and verifying ft_printf conversions.

TODO:
1. Identify the values provided by each test and what the result means.
2. Save and return the result of write; do not assume it always succeeds.
3. Implement the function using only permitted operations.
4. Compare all test results with the output below.

EXPECTED OUTPUT:
Test 1: [A] (return: 1)
Test 2: [0] (return: 1)
Test 3: [z] (return: 1)
Test 4: [!] (return: 1)
Test 5: [ ] (return: 1)
Test 6: [#] (return: 1)

EDGE CASES:
Zero, boundary values, and output errors where applicable.

LEARNING CHECK:
1. What does each input parameter represent?
2. Why does the function return its specified result?
3. Which boundary input might reveal an implementation error?
4. How does this operation help build ft_printf?

NOTE:
The function body is intentionally empty. Build without -Werror until
you have completed the implementation. Matching tests is useful evidence,
not proof of correctness for every possible input.
*/
EXERCISE_EOF
else
    echo "Keeping existing ft_write_char.c"
fi

if [[ ! -e "$DIR/ft_write_count.c" ]]; then
    cat > "$DIR/ft_write_count.c" <<'EXERCISE_EOF'
#include <unistd.h>
#include <stdlib.h>
#include <stdarg.h>
#include <limits.h>
#include <stddef.h>
#include <stdint.h>

int	ft_write_count(const char *str)
{
	
}

#include <stdio.h>

int	main(void)
{
	int	ret;

	printf("Test 1: [");
	fflush(stdout);
	ret = ft_write_count("Hi");
	printf("] (return: %d)\n", ret);
	printf("Test 2: [");
	fflush(stdout);
	ret = ft_write_count("");
	printf("] (return: %d)\n", ret);
	printf("Test 3: [");
	fflush(stdout);
	ret = ft_write_count("A");
	printf("] (return: %d)\n", ret);
	printf("Test 4: [");
	fflush(stdout);
	ret = ft_write_count("42!");
	printf("] (return: %d)\n", ret);
	printf("Test 5: [");
	fflush(stdout);
	ret = ft_write_count("hello");
	printf("] (return: %d)\n", ret);
	printf("Test 6: [");
	fflush(stdout);
	ret = ft_write_count("a b");
	printf("] (return: %d)\n", ret);
	return (0);
}

/*
ALLOWED FUNCTIONS:
write for the implementation; printf/fflush are test-only.

GOAL:
Count the actual bytes emitted while writing a NUL-terminated string.

EXPLANATION:
Count the actual bytes emitted while writing a NUL-terminated string.
The function parameters are the values passed by the test calls in main.
For printing exercises, return the number of bytes written or -1 on error.
For value exercises, return the value specified by the test contract.
This skill is used when constructing and verifying ft_printf conversions.

TODO:
1. Identify the values provided by each test and what the result means.
2. Loop through characters, write each one, accumulate successful byte
counts; propagate -1.
3. Implement the function using only permitted operations.
4. Compare all test results with the output below.

EXPECTED OUTPUT:
Test 1: [Hi] (return: 2)
Test 2: [] (return: 0)
Test 3: [A] (return: 1)
Test 4: [42!] (return: 3)
Test 5: [hello] (return: 5)
Test 6: [a b] (return: 3)

EDGE CASES:
Zero, boundary values, and output errors where applicable.

LEARNING CHECK:
1. What does each input parameter represent?
2. Why does the function return its specified result?
3. Which boundary input might reveal an implementation error?
4. How does this operation help build ft_printf?

NOTE:
The function body is intentionally empty. Build without -Werror until
you have completed the implementation. Matching tests is useful evidence,
not proof of correctness for every possible input.
*/
EXERCISE_EOF
else
    echo "Keeping existing ft_write_count.c"
fi

if [[ ! -e "$DIR/ft_write_error.c" ]]; then
    cat > "$DIR/ft_write_error.c" <<'EXERCISE_EOF'
#include <unistd.h>
#include <stdlib.h>
#include <stdarg.h>
#include <limits.h>
#include <stddef.h>
#include <stdint.h>

int	ft_write_error(int fd, char c)
{
	
}

#include <stdio.h>

int	main(void)
{
	int	ret;

	printf("Test 1: [");
	fflush(stdout);
	ret = ft_write_error(1, 'A');
	printf("] (return: %d)\n", ret);
	printf("Test 2: [");
	fflush(stdout);
	ret = ft_write_error(-1, 'B');
	printf("] (return: %d)\n", ret);
	printf("Test 3: [");
	fflush(stdout);
	ret = ft_write_error(1, '!');
	printf("] (return: %d)\n", ret);
	printf("Test 4: [");
	fflush(stdout);
	ret = ft_write_error(-1, 'X');
	printf("] (return: %d)\n", ret);
	printf("Test 5: [");
	fflush(stdout);
	ret = ft_write_error(1, '0');
	printf("] (return: %d)\n", ret);
	return (0);
}

/*
ALLOWED FUNCTIONS:
write for the implementation; printf/fflush are test-only.

GOAL:
Observe both successful writes and invalid file descriptors.

EXPLANATION:
Observe both successful writes and invalid file descriptors.
The function parameters are the values passed by the test calls in main.
For printing exercises, return the number of bytes written or -1 on error.
For value exercises, return the value specified by the test contract.
This skill is used when constructing and verifying ft_printf conversions.

TODO:
1. Identify the values provided by each test and what the result means.
2. Call write(fd, &c, 1); return its result without discarding errors.
3. Implement the function using only permitted operations.
4. Compare all test results with the output below.

EXPECTED OUTPUT:
Test 1: [A] (return: 1)
Test 2: [] (return: -1)
Test 3: [!] (return: 1)
Test 4: [] (return: -1)
Test 5: [0] (return: 1)

EDGE CASES:
fd=-1 deliberately fails; fd=1 should print one byte.

LEARNING CHECK:
1. What does each input parameter represent?
2. Why does the function return its specified result?
3. Which boundary input might reveal an implementation error?
4. How does this operation help build ft_printf?

NOTE:
The function body is intentionally empty. Build without -Werror until
you have completed the implementation. Matching tests is useful evidence,
not proof of correctness for every possible input.
*/
EXERCISE_EOF
else
    echo "Keeping existing ft_write_error.c"
fi

if [[ ! -e "$DIR/ft_write_string.c" ]]; then
    cat > "$DIR/ft_write_string.c" <<'EXERCISE_EOF'
#include <unistd.h>
#include <stdlib.h>
#include <stdarg.h>
#include <limits.h>
#include <stddef.h>
#include <stdint.h>

int	ft_write_string(const char *str)
{
	
}

#include <stdio.h>

int	main(void)
{
	int	ret;

	printf("Test 1: [");
	fflush(stdout);
	ret = ft_write_string("Hello");
	printf("] (return: %d)\n", ret);
	printf("Test 2: [");
	fflush(stdout);
	ret = ft_write_string("");
	printf("] (return: %d)\n", ret);
	printf("Test 3: [");
	fflush(stdout);
	ret = ft_write_string("A");
	printf("] (return: %d)\n", ret);
	printf("Test 4: [");
	fflush(stdout);
	ret = ft_write_string("abc");
	printf("] (return: %d)\n", ret);
	printf("Test 5: [");
	fflush(stdout);
	ret = ft_write_string("42");
	printf("] (return: %d)\n", ret);
	printf("Test 6: [");
	fflush(stdout);
	ret = ft_write_string("some text");
	printf("] (return: %d)\n", ret);
	return (0);
}

/*
ALLOWED FUNCTIONS:
write for the implementation; printf/fflush are test-only.

GOAL:
Traverse a string and print all characters in order.

EXPLANATION:
Traverse a string and print all characters in order.
The function parameters are the values passed by the test calls in main.
For printing exercises, return the number of bytes written or -1 on error.
For value exercises, return the value specified by the test contract.
This skill is used when constructing and verifying ft_printf conversions.

TODO:
1. Identify the values provided by each test and what the result means.
2. Advance until the NUL byte, write each character, and return total
bytes.
3. Implement the function using only permitted operations.
4. Compare all test results with the output below.

EXPECTED OUTPUT:
Test 1: [Hello] (return: 5)
Test 2: [] (return: 0)
Test 3: [A] (return: 1)
Test 4: [abc] (return: 3)
Test 5: [42] (return: 2)
Test 6: [some text] (return: 9)

EDGE CASES:
Zero, boundary values, and output errors where applicable.

LEARNING CHECK:
1. What does each input parameter represent?
2. Why does the function return its specified result?
3. Which boundary input might reveal an implementation error?
4. How does this operation help build ft_printf?

NOTE:
The function body is intentionally empty. Build without -Werror until
you have completed the implementation. Matching tests is useful evidence,
not proof of correctness for every possible input.
*/
EXERCISE_EOF
else
    echo "Keeping existing ft_write_string.c"
fi
