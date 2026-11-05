#include <unistd.h>
#include <stdlib.h>
#include <stdarg.h>
#include <limits.h>
#include <stddef.h>
#include <stdint.h>

int	ft_check_fd(int fd)
{
	if (write(fd, "", 0) == -1)
		return (-1);
	return (1);
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
