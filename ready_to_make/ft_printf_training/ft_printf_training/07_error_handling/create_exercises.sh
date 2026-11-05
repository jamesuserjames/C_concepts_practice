#!/usr/bin/env bash
set -euo pipefail
DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

if [[ ! -e "$DIR/ft_check_fd.c" ]]; then
    cat > "$DIR/ft_check_fd.c" <<'EXERCISE_EOF'
#include <unistd.h>
#include <stdlib.h>
#include <stdarg.h>
#include <limits.h>
#include <stddef.h>
#include <stdint.h>

int	ft_check_fd(int fd)
{
	
}

#include <stdio.h>

int	main(void)
{
	printf("Test 1: %d\n", ft_check_fd(1));
	printf("Test 2: %d\n", ft_check_fd(-1));
	printf("Test 3: %d\n", ft_check_fd(1));
	printf("Test 4: %d\n", ft_check_fd(-1));
	printf("Test 5: %d\n", ft_check_fd(1));
	return (0);
}

/*
ALLOWED FUNCTIONS:
write for the implementation; printf/fflush are test-only.

GOAL:
Determine whether write(fd, "", 0) succeeds on stdout or invalid fd.

EXPLANATION:
Determine whether write(fd, "", 0) succeeds on stdout or invalid fd.
The function parameters are the values passed by the test calls in main.
For printing exercises, return the number of bytes written or -1 on error.
For value exercises, return the value specified by the test contract.
This skill is used when constructing and verifying ft_printf conversions.

TODO:
1. Identify the values provided by each test and what the result means.
2. Attempt a zero-length write to the supplied descriptor and return 1 on
success, -1 on failure.
3. Implement the function using only permitted operations.
4. Compare all test results with the output below.

EXPECTED OUTPUT:
Test 1: 1
Test 2: -1
Test 3: 1
Test 4: -1
Test 5: 1

EDGE CASES:
Only fd 1 and -1 are tested; some operating systems differ for other descriptors.

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
    echo "Keeping existing ft_check_fd.c"
fi

if [[ ! -e "$DIR/ft_safe_add.c" ]]; then
    cat > "$DIR/ft_safe_add.c" <<'EXERCISE_EOF'
#include <unistd.h>
#include <stdlib.h>
#include <stdarg.h>
#include <limits.h>
#include <stddef.h>
#include <stdint.h>

int	ft_safe_add(int count, int ret)
{
	
}

#include <stdio.h>

int	main(void)
{
	printf("Test 1: %d\n", ft_safe_add(0, 1));
	printf("Test 2: %d\n", ft_safe_add(3, 2));
	printf("Test 3: %d\n", ft_safe_add(10, 0));
	printf("Test 4: %d\n", ft_safe_add(-1, 2));
	printf("Test 5: %d\n", ft_safe_add(4, -1));
	printf("Test 6: %d\n", ft_safe_add(100, 20));
	return (0);
}

/*
ALLOWED FUNCTIONS:
None for the implementation; printf/fflush are test-only.

GOAL:
Accumulate successful byte counts, propagating write errors.

EXPLANATION:
Accumulate successful byte counts, propagating write errors.
The function parameters are the values passed by the test calls in main.
For printing exercises, return the number of bytes written or -1 on error.
For value exercises, return the value specified by the test contract.
This skill is used when constructing and verifying ft_printf conversions.

TODO:
1. Identify the values provided by each test and what the result means.
2. If count or ret equals -1, return -1; otherwise return the sum.
3. Implement the function using only permitted operations.
4. Compare all test results with the output below.

EXPECTED OUTPUT:
Test 1: 1
Test 2: 5
Test 3: 10
Test 4: -1
Test 5: -1
Test 6: 120

EDGE CASES:
Assume the sum is within the int range.

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
    echo "Keeping existing ft_safe_add.c"
fi

if [[ ! -e "$DIR/ft_write_all.c" ]]; then
    cat > "$DIR/ft_write_all.c" <<'EXERCISE_EOF'
#include <unistd.h>
#include <stdlib.h>
#include <stdarg.h>
#include <limits.h>
#include <stddef.h>
#include <stdint.h>

int	ft_write_all(int fd, const char *str, int len)
{
	
}

#include <stdio.h>

int	main(void)
{
	int	ret;

	printf("Test 1: [");
	fflush(stdout);
	ret = ft_write_all(1, "Hello", 5);
	printf("] (return: %d)\n", ret);
	printf("Test 2: [");
	fflush(stdout);
	ret = ft_write_all(1, "abcdef", 3);
	printf("] (return: %d)\n", ret);
	printf("Test 3: [");
	fflush(stdout);
	ret = ft_write_all(1, "", 0);
	printf("] (return: %d)\n", ret);
	printf("Test 4: [");
	fflush(stdout);
	ret = ft_write_all(1, "XY", 2);
	printf("] (return: %d)\n", ret);
	printf("Test 5: [");
	fflush(stdout);
	ret = ft_write_all(1, "123456", 4);
	printf("] (return: %d)\n", ret);
	return (0);
}

/*
ALLOWED FUNCTIONS:
write for the implementation; printf/fflush are test-only.

GOAL:
Write exactly len bytes even if write performs a partial transfer.

EXPLANATION:
Write exactly len bytes even if write performs a partial transfer.
The function parameters are the values passed by the test calls in main.
For printing exercises, return the number of bytes written or -1 on error.
For value exercises, return the value specified by the test contract.
This skill is used when constructing and verifying ft_printf conversions.

TODO:
1. Identify the values provided by each test and what the result means.
2. Repeat write until all bytes are written; handle 0 or -1 and accumulate
counts.
3. Implement the function using only permitted operations.
4. Compare all test results with the output below.

EXPECTED OUTPUT:
Test 1: [Hello] (return: 5)
Test 2: [abc] (return: 3)
Test 3: [] (return: 0)
Test 4: [XY] (return: 2)
Test 5: [1234] (return: 4)

EDGE CASES:
Test cases use fd=1; write is allowed to complete in multiple calls.

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
    echo "Keeping existing ft_write_all.c"
fi
