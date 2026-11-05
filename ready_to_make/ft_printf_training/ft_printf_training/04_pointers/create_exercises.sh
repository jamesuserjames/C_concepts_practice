#!/usr/bin/env bash
set -euo pipefail
DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

if [[ ! -e "$DIR/ft_pointer_width.c" ]]; then
    cat > "$DIR/ft_pointer_width.c" <<'EXERCISE_EOF'
#include <unistd.h>
#include <stdlib.h>
#include <stdarg.h>
#include <limits.h>
#include <stddef.h>
#include <stdint.h>

int	ft_pointer_width(void)
{
	
}

#include <stdio.h>

int	main(void)
{
	printf("Test 1: %d\n", ft_pointer_width());
	printf("Test 2: %d\n", ft_pointer_width());
	printf("Test 3: %d\n", ft_pointer_width());
	printf("Test 4: %d\n", ft_pointer_width());
	printf("Test 5: %d\n", ft_pointer_width());
	return (0);
}

/*
ALLOWED FUNCTIONS:
None for the implementation; printf/fflush are test-only.

GOAL:
Report the number of bits in a pointer on this machine.

EXPLANATION:
Report the number of bits in a pointer on this machine.
The function parameters are the values passed by the test calls in main.
For printing exercises, return the number of bytes written or -1 on error.
For value exercises, return the value specified by the test contract.
This skill is used when constructing and verifying ft_printf conversions.

TODO:
1. Identify the values provided by each test and what the result means.
2. Calculate sizeof(void *) * 8; return the width as int.
3. Implement the function using only permitted operations.
4. Compare all test results with the output below.

EXPECTED OUTPUT:
Test 1: 64
Test 2: 64
Test 3: 64
Test 4: 64
Test 5: 64

EDGE CASES:
Usually 64 bits on modern macOS; tests calculate expected value dynamically.

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
    echo "Keeping existing ft_pointer_width.c"
fi

if [[ ! -e "$DIR/ft_print_address_digits.c" ]]; then
    cat > "$DIR/ft_print_address_digits.c" <<'EXERCISE_EOF'
#include <unistd.h>
#include <stdlib.h>
#include <stdarg.h>
#include <limits.h>
#include <stddef.h>
#include <stdint.h>

int	ft_print_address_digits(unsigned long address)
{
	
}

#include <stdio.h>

int	main(void)
{
	int	ret;

	printf("Test 1: [");
	fflush(stdout);
	ret = ft_print_address_digits(0UL);
	printf("] (return: %d)\n", ret);
	printf("Test 2: [");
	fflush(stdout);
	ret = ft_print_address_digits(1UL);
	printf("] (return: %d)\n", ret);
	printf("Test 3: [");
	fflush(stdout);
	ret = ft_print_address_digits(15UL);
	printf("] (return: %d)\n", ret);
	printf("Test 4: [");
	fflush(stdout);
	ret = ft_print_address_digits(16UL);
	printf("] (return: %d)\n", ret);
	printf("Test 5: [");
	fflush(stdout);
	ret = ft_print_address_digits(255UL);
	printf("] (return: %d)\n", ret);
	printf("Test 6: [");
	fflush(stdout);
	ret = ft_print_address_digits(4096UL);
	printf("] (return: %d)\n", ret);
	return (0);
}

/*
ALLOWED FUNCTIONS:
write for the implementation; printf/fflush are test-only.

GOAL:
Print the hexadecimal digits of an address value without the 0x prefix.

EXPLANATION:
Print the hexadecimal digits of an address value without the 0x prefix.
The function parameters are the values passed by the test calls in main.
For printing exercises, return the number of bytes written or -1 on error.
For value exercises, return the value specified by the test contract.
This skill is used when constructing and verifying ft_printf conversions.

TODO:
1. Identify the values provided by each test and what the result means.
2. Convert the unsigned long value to lowercase hex.
3. Implement the function using only permitted operations.
4. Compare all test results with the output below.

EXPECTED OUTPUT:
Test 1: [0] (return: 1)
Test 2: [1] (return: 1)
Test 3: [f] (return: 1)
Test 4: [10] (return: 2)
Test 5: [ff] (return: 2)
Test 6: [1000] (return: 4)

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
    echo "Keeping existing ft_print_address_digits.c"
fi

if [[ ! -e "$DIR/ft_print_pointer.c" ]]; then
    cat > "$DIR/ft_print_pointer.c" <<'EXERCISE_EOF'
#include <unistd.h>
#include <stdlib.h>
#include <stdarg.h>
#include <limits.h>
#include <stddef.h>
#include <stdint.h>

int	ft_print_pointer(void *ptr)
{
	
}

#include <stdio.h>

int	main(void)
{
	int	ret;

	printf("Test 1: [");
	fflush(stdout);
	ret = ft_print_pointer(NULL);
	printf("] (return: %d)\n", ret);
	printf("Test 2: [");
	fflush(stdout);
	ret = ft_print_pointer(NULL);
	printf("] (return: %d)\n", ret);
	printf("Test 3: [");
	fflush(stdout);
	ret = ft_print_pointer(NULL);
	printf("] (return: %d)\n", ret);
	printf("Test 4: [");
	fflush(stdout);
	ret = ft_print_pointer(NULL);
	printf("] (return: %d)\n", ret);
	printf("Test 5: [");
	fflush(stdout);
	ret = ft_print_pointer(NULL);
	printf("] (return: %d)\n", ret);
	return (0);
}

/*
ALLOWED FUNCTIONS:
write for the implementation; printf/fflush are test-only.

GOAL:
Implement the explicitly chosen NULL pointer representation (nil).

EXPLANATION:
Implement the explicitly chosen NULL pointer representation (nil).
The function parameters are the values passed by the test calls in main.
For printing exercises, return the number of bytes written or -1 on error.
For value exercises, return the value specified by the test contract.
This skill is used when constructing and verifying ft_printf conversions.

TODO:
1. Identify the values provided by each test and what the result means.
2. Check NULL and emit (nil); for non-NULL pointers print 0x followed by
hexadecimal address.
3. Implement the function using only permitted operations.
4. Compare all test results with the output below.

EXPECTED OUTPUT:
Test 1: [(nil)] (return: 5)
Test 2: [(nil)] (return: 5)
Test 3: [(nil)] (return: 5)
Test 4: [(nil)] (return: 5)
Test 5: [(nil)] (return: 5)

EDGE CASES:
Non-NULL pointer text depends on runtime address, so exact-output tests use NULL only.

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
    echo "Keeping existing ft_print_pointer.c"
fi
