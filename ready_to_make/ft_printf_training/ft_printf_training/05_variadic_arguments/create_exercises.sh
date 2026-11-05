#!/usr/bin/env bash
set -euo pipefail
DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

if [[ ! -e "$DIR/ft_get_first_int.c" ]]; then
    cat > "$DIR/ft_get_first_int.c" <<'EXERCISE_EOF'
#include <unistd.h>
#include <stdlib.h>
#include <stdarg.h>
#include <limits.h>
#include <stddef.h>
#include <stdint.h>

int	ft_get_first_int(int count, ...)
{
	
}

#include <stdio.h>

int	main(void)
{
	printf("Test 1: %d\n", ft_get_first_int(1, 42));
	printf("Test 2: %d\n", ft_get_first_int(1, -7));
	printf("Test 3: %d\n", ft_get_first_int(3, 10, 20, 30));
	printf("Test 4: %d\n", ft_get_first_int(2, 0, 9));
	printf("Test 5: %d\n", ft_get_first_int(1, 2147483647));
	return (0);
}

/*
ALLOWED FUNCTIONS:
None for the implementation; printf/fflush are test-only.

GOAL:
Read the first integer from a variadic argument list.

EXPLANATION:
Read the first integer from a variadic argument list.
The function parameters are the values passed by the test calls in main.
For printing exercises, return the number of bytes written or -1 on error.
For value exercises, return the value specified by the test contract.
This skill is used when constructing and verifying ft_printf conversions.

TODO:
1. Identify the values provided by each test and what the result means.
2. Use va_start, va_arg(args, int), va_end; count is at least 1.
3. Implement the function using only permitted operations.
4. Compare all test results with the output below.

EXPECTED OUTPUT:
Test 1: 42
Test 2: -7
Test 3: 10
Test 4: 0
Test 5: 2147483647

EDGE CASES:
Never read when no variadic argument was supplied.

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
    echo "Keeping existing ft_get_first_int.c"
fi

if [[ ! -e "$DIR/ft_print_2_strings.c" ]]; then
    cat > "$DIR/ft_print_2_strings.c" <<'EXERCISE_EOF'
#include <unistd.h>
#include <stdlib.h>
#include <stdarg.h>
#include <limits.h>
#include <stddef.h>
#include <stdint.h>

int	ft_print_2_strings(int count, ...)
{
	
}

#include <stdio.h>

int	main(void)
{
	int	ret;

	printf("Test 1: [");
	fflush(stdout);
	ret = ft_print_2_strings(2, "ab", "cd");
	printf("] (return: %d)\n", ret);
	printf("Test 2: [");
	fflush(stdout);
	ret = ft_print_2_strings(2, "", "X");
	printf("] (return: %d)\n", ret);
	printf("Test 3: [");
	fflush(stdout);
	ret = ft_print_2_strings(2, "hello", "!");
	printf("] (return: %d)\n", ret);
	printf("Test 4: [");
	fflush(stdout);
	ret = ft_print_2_strings(2, "A", "B");
	printf("] (return: %d)\n", ret);
	printf("Test 5: [");
	fflush(stdout);
	ret = ft_print_2_strings(2, "12", "34");
	printf("] (return: %d)\n", ret);
	return (0);
}

/*
ALLOWED FUNCTIONS:
write for the implementation; printf/fflush are test-only.

GOAL:
Read exactly two string pointers using va_arg and print consecutively.

EXPLANATION:
Read exactly two string pointers using va_arg and print consecutively.
The function parameters are the values passed by the test calls in main.
For printing exercises, return the number of bytes written or -1 on error.
For value exercises, return the value specified by the test contract.
This skill is used when constructing and verifying ft_printf conversions.

TODO:
1. Identify the values provided by each test and what the result means.
2. Use va_start/va_arg twice/va_end; count is always two; return printed
bytes.
3. Implement the function using only permitted operations.
4. Compare all test results with the output below.

EXPECTED OUTPUT:
Test 1: [abcd] (return: 4)
Test 2: [X] (return: 1)
Test 3: [hello!] (return: 6)
Test 4: [AB] (return: 2)
Test 5: [1234] (return: 4)

EDGE CASES:
Test strings are valid, non-NULL, and NUL-terminated.

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
    echo "Keeping existing ft_print_2_strings.c"
fi

if [[ ! -e "$DIR/ft_read_types.c" ]]; then
    cat > "$DIR/ft_read_types.c" <<'EXERCISE_EOF'
#include <unistd.h>
#include <stdlib.h>
#include <stdarg.h>
#include <limits.h>
#include <stddef.h>
#include <stdint.h>

int	ft_read_types(char type, ...)
{
	
}

#include <stdio.h>

int	main(void)
{
	printf("Test 1: %d\n", ft_read_types('d', 42));
	printf("Test 2: %d\n", ft_read_types('d', -7));
	printf("Test 3: %d\n", ft_read_types('c', 'A'));
	printf("Test 4: %d\n", ft_read_types('c', 'z'));
	printf("Test 5: %d\n", ft_read_types('d', 0));
	return (0);
}

/*
ALLOWED FUNCTIONS:
None for the implementation; printf/fflush are test-only.

GOAL:
Read an int for d or a promoted char (int) for c; return its numeric
value.

EXPLANATION:
Read an int for d or a promoted char (int) for c; return its numeric
value.
The function parameters are the values passed by the test calls in main.
For printing exercises, return the number of bytes written or -1 on error.
For value exercises, return the value specified by the test contract.
This skill is used when constructing and verifying ft_printf conversions.

TODO:
1. Identify the values provided by each test and what the result means.
2. Use va_arg(args, int) for both cases; char arguments undergo default
promotion.
3. Implement the function using only permitted operations.
4. Compare all test results with the output below.

EXPECTED OUTPUT:
Test 1: 42
Test 2: -7
Test 3: 65
Test 4: 122
Test 5: 0

EDGE CASES:
Contract supports only d and c; do not try va_arg(args, char).

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
    echo "Keeping existing ft_read_types.c"
fi

if [[ ! -e "$DIR/ft_sum_ints.c" ]]; then
    cat > "$DIR/ft_sum_ints.c" <<'EXERCISE_EOF'
#include <unistd.h>
#include <stdlib.h>
#include <stdarg.h>
#include <limits.h>
#include <stddef.h>
#include <stdint.h>

int	ft_sum_ints(int count, ...)
{
	
}

#include <stdio.h>

int	main(void)
{
	printf("Test 1: %d\n", ft_sum_ints(0));
	printf("Test 2: %d\n", ft_sum_ints(1, 42));
	printf("Test 3: %d\n", ft_sum_ints(2, 10, 20));
	printf("Test 4: %d\n", ft_sum_ints(3, -5, 10, 20));
	printf("Test 5: %d\n", ft_sum_ints(4, 1, 2, 3, 4));
	printf("Test 6: %d\n", ft_sum_ints(3, 0, 0, 0));
	return (0);
}

/*
ALLOWED FUNCTIONS:
None for the implementation; printf/fflush are test-only.

GOAL:
Sum exactly count variadic int values, including count zero.

EXPLANATION:
Sum exactly count variadic int values, including count zero.
The function parameters are the values passed by the test calls in main.
For printing exercises, return the number of bytes written or -1 on error.
For value exercises, return the value specified by the test contract.
This skill is used when constructing and verifying ft_printf conversions.

TODO:
1. Identify the values provided by each test and what the result means.
2. Initialize accumulator to zero and call va_arg exactly count times.
3. Implement the function using only permitted operations.
4. Compare all test results with the output below.

EXPECTED OUTPUT:
Test 1: 0
Test 2: 42
Test 3: 30
Test 4: 25
Test 5: 10
Test 6: 0

EDGE CASES:
Never request more arguments than actually provided.

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
    echo "Keeping existing ft_sum_ints.c"
fi
