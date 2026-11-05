#!/usr/bin/env bash
set -euo pipefail
DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

if [[ ! -e "$DIR/ft_hex_count.c" ]]; then
    cat > "$DIR/ft_hex_count.c" <<'EXERCISE_EOF'
#include <unistd.h>
#include <stdlib.h>
#include <stdarg.h>
#include <limits.h>
#include <stddef.h>
#include <stdint.h>

int	ft_hex_count(unsigned int n)
{
	
}

#include <stdio.h>

int	main(void)
{
	printf("Test 1: %d\n", ft_hex_count(0U));
	printf("Test 2: %d\n", ft_hex_count(1U));
	printf("Test 3: %d\n", ft_hex_count(15U));
	printf("Test 4: %d\n", ft_hex_count(16U));
	printf("Test 5: %d\n", ft_hex_count(255U));
	printf("Test 6: %d\n", ft_hex_count(256U));
	printf("Test 7: %d\n", ft_hex_count(4294967295U));
	return (0);
}

/*
ALLOWED FUNCTIONS:
None for the implementation; printf/fflush are test-only.

GOAL:
Count the base-16 digits needed for an unsigned number.

EXPLANATION:
Count the base-16 digits needed for an unsigned number.
The function parameters are the values passed by the test calls in main.
For printing exercises, return the number of bytes written or -1 on error.
For value exercises, return the value specified by the test contract.
This skill is used when constructing and verifying ft_printf conversions.

TODO:
1. Identify the values provided by each test and what the result means.
2. Divide by sixteen until the remaining value is below sixteen.
3. Implement the function using only permitted operations.
4. Compare all test results with the output below.

EXPECTED OUTPUT:
Test 1: 1
Test 2: 1
Test 3: 1
Test 4: 2
Test 5: 2
Test 6: 3
Test 7: 8

EDGE CASES:
Zero, boundary values, and invalid inputs where applicable.

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
    echo "Keeping existing ft_hex_count.c"
fi

if [[ ! -e "$DIR/ft_hex_digit.c" ]]; then
    cat > "$DIR/ft_hex_digit.c" <<'EXERCISE_EOF'
#include <unistd.h>
#include <stdlib.h>
#include <stdarg.h>
#include <limits.h>
#include <stddef.h>
#include <stdint.h>

char	ft_hex_digit(unsigned int digit, char format)
{
	
}

#include <stdio.h>

int	main(void)
{
	printf("Test 1: %c\n", ft_hex_digit(0, 'x'));
	printf("Test 2: %c\n", ft_hex_digit(9, 'x'));
	printf("Test 3: %c\n", ft_hex_digit(10, 'x'));
	printf("Test 4: %c\n", ft_hex_digit(15, 'x'));
	printf("Test 5: %c\n", ft_hex_digit(10, 'X'));
	printf("Test 6: %c\n", ft_hex_digit(15, 'X'));
	printf("Test 7: %c\n", ft_hex_digit(14, 'x'));
	return (0);
}

/*
ALLOWED FUNCTIONS:
None for the implementation; printf/fflush are test-only.

GOAL:
Map values 0..15 to lowercase or uppercase hex characters.

EXPLANATION:
Map values 0..15 to lowercase or uppercase hex characters.
The function parameters are the values passed by the test calls in main.
For printing exercises, return the number of bytes written or -1 on error.
For value exercises, return the value specified by the test contract.
This skill is used when constructing and verifying ft_printf conversions.

TODO:
1. Identify the values provided by each test and what the result means.
2. Use digit tables or conditionals; never confuse numeric 10 with the
character a.
3. Implement the function using only permitted operations.
4. Compare all test results with the output below.

EXPECTED OUTPUT:
Test 1: 0
Test 2: 9
Test 3: a
Test 4: f
Test 5: A
Test 6: F
Test 7: e

EDGE CASES:
Only digit values 0..15 and formats x/X are in scope.

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
    echo "Keeping existing ft_hex_digit.c"
fi

if [[ ! -e "$DIR/ft_print_base.c" ]]; then
    cat > "$DIR/ft_print_base.c" <<'EXERCISE_EOF'
#include <unistd.h>
#include <stdlib.h>
#include <stdarg.h>
#include <limits.h>
#include <stddef.h>
#include <stdint.h>

int	ft_print_base(unsigned long n, const char *digits, unsigned int base)
{
	
}

#include <stdio.h>

int	main(void)
{
	int	ret;

	printf("Test 1: [");
	fflush(stdout);
	ret = ft_print_base(0UL, "01", 2);
	printf("] (return: %d)\n", ret);
	printf("Test 2: [");
	fflush(stdout);
	ret = ft_print_base(5UL, "01", 2);
	printf("] (return: %d)\n", ret);
	printf("Test 3: [");
	fflush(stdout);
	ret = ft_print_base(15UL, "0123456789abcdef", 16);
	printf("] (return: %d)\n", ret);
	printf("Test 4: [");
	fflush(stdout);
	ret = ft_print_base(16UL, "0123456789abcdef", 16);
	printf("] (return: %d)\n", ret);
	printf("Test 5: [");
	fflush(stdout);
	ret = ft_print_base(255UL, "0123456789ABCDEF", 16);
	printf("] (return: %d)\n", ret);
	printf("Test 6: [");
	fflush(stdout);
	ret = ft_print_base(42UL, "0123456789", 10);
	printf("] (return: %d)\n", ret);
	return (0);
}

/*
ALLOWED FUNCTIONS:
write for the implementation; printf/fflush are test-only.

GOAL:
Print unsigned numbers using a supplied digit alphabet and base.

EXPLANATION:
Print unsigned numbers using a supplied digit alphabet and base.
The function parameters are the values passed by the test calls in main.
For printing exercises, return the number of bytes written or -1 on error.
For value exercises, return the value specified by the test contract.
This skill is used when constructing and verifying ft_printf conversions.

TODO:
1. Identify the values provided by each test and what the result means.
2. Repeated division and remainder select a character from digits; recurse
before emitting it.
3. Implement the function using only permitted operations.
4. Compare all test results with the output below.

EXPECTED OUTPUT:
Test 1: [0] (return: 1)
Test 2: [101] (return: 3)
Test 3: [f] (return: 1)
Test 4: [10] (return: 2)
Test 5: [FF] (return: 2)
Test 6: [42] (return: 2)

EDGE CASES:
Assume valid bases 2..16 and matching digit alphabet.

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
    echo "Keeping existing ft_print_base.c"
fi

if [[ ! -e "$DIR/ft_print_hex_lower.c" ]]; then
    cat > "$DIR/ft_print_hex_lower.c" <<'EXERCISE_EOF'
#include <unistd.h>
#include <stdlib.h>
#include <stdarg.h>
#include <limits.h>
#include <stddef.h>
#include <stdint.h>

int	ft_print_hex_lower(unsigned int n)
{
	
}

#include <stdio.h>

int	main(void)
{
	int	ret;

	printf("Test 1: [");
	fflush(stdout);
	ret = ft_print_hex_lower(0U);
	printf("] (return: %d)\n", ret);
	printf("Test 2: [");
	fflush(stdout);
	ret = ft_print_hex_lower(9U);
	printf("] (return: %d)\n", ret);
	printf("Test 3: [");
	fflush(stdout);
	ret = ft_print_hex_lower(10U);
	printf("] (return: %d)\n", ret);
	printf("Test 4: [");
	fflush(stdout);
	ret = ft_print_hex_lower(15U);
	printf("] (return: %d)\n", ret);
	printf("Test 5: [");
	fflush(stdout);
	ret = ft_print_hex_lower(16U);
	printf("] (return: %d)\n", ret);
	printf("Test 6: [");
	fflush(stdout);
	ret = ft_print_hex_lower(255U);
	printf("] (return: %d)\n", ret);
	printf("Test 7: [");
	fflush(stdout);
	ret = ft_print_hex_lower(4294967295U);
	printf("] (return: %d)\n", ret);
	return (0);
}

/*
ALLOWED FUNCTIONS:
write for the implementation; printf/fflush are test-only.

GOAL:
Convert unsigned int to lowercase hexadecimal for %x.

EXPLANATION:
Convert unsigned int to lowercase hexadecimal for %x.
The function parameters are the values passed by the test calls in main.
For printing exercises, return the number of bytes written or -1 on error.
For value exercises, return the value specified by the test contract.
This skill is used when constructing and verifying ft_printf conversions.

TODO:
1. Identify the values provided by each test and what the result means.
2. Divide by 16 and print 0..9 then a..f.
3. Implement the function using only permitted operations.
4. Compare all test results with the output below.

EXPECTED OUTPUT:
Test 1: [0] (return: 1)
Test 2: [9] (return: 1)
Test 3: [a] (return: 1)
Test 4: [f] (return: 1)
Test 5: [10] (return: 2)
Test 6: [ff] (return: 2)
Test 7: [ffffffff] (return: 8)

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
    echo "Keeping existing ft_print_hex_lower.c"
fi

if [[ ! -e "$DIR/ft_print_hex_upper.c" ]]; then
    cat > "$DIR/ft_print_hex_upper.c" <<'EXERCISE_EOF'
#include <unistd.h>
#include <stdlib.h>
#include <stdarg.h>
#include <limits.h>
#include <stddef.h>
#include <stdint.h>

int	ft_print_hex_upper(unsigned int n)
{
	
}

#include <stdio.h>

int	main(void)
{
	int	ret;

	printf("Test 1: [");
	fflush(stdout);
	ret = ft_print_hex_upper(0U);
	printf("] (return: %d)\n", ret);
	printf("Test 2: [");
	fflush(stdout);
	ret = ft_print_hex_upper(9U);
	printf("] (return: %d)\n", ret);
	printf("Test 3: [");
	fflush(stdout);
	ret = ft_print_hex_upper(10U);
	printf("] (return: %d)\n", ret);
	printf("Test 4: [");
	fflush(stdout);
	ret = ft_print_hex_upper(15U);
	printf("] (return: %d)\n", ret);
	printf("Test 5: [");
	fflush(stdout);
	ret = ft_print_hex_upper(16U);
	printf("] (return: %d)\n", ret);
	printf("Test 6: [");
	fflush(stdout);
	ret = ft_print_hex_upper(255U);
	printf("] (return: %d)\n", ret);
	printf("Test 7: [");
	fflush(stdout);
	ret = ft_print_hex_upper(4294967295U);
	printf("] (return: %d)\n", ret);
	return (0);
}

/*
ALLOWED FUNCTIONS:
write for the implementation; printf/fflush are test-only.

GOAL:
Convert unsigned int to uppercase hexadecimal for %X.

EXPLANATION:
Convert unsigned int to uppercase hexadecimal for %X.
The function parameters are the values passed by the test calls in main.
For printing exercises, return the number of bytes written or -1 on error.
For value exercises, return the value specified by the test contract.
This skill is used when constructing and verifying ft_printf conversions.

TODO:
1. Identify the values provided by each test and what the result means.
2. Use digits 0123456789ABCDEF.
3. Implement the function using only permitted operations.
4. Compare all test results with the output below.

EXPECTED OUTPUT:
Test 1: [0] (return: 1)
Test 2: [9] (return: 1)
Test 3: [A] (return: 1)
Test 4: [F] (return: 1)
Test 5: [10] (return: 2)
Test 6: [FF] (return: 2)
Test 7: [FFFFFFFF] (return: 8)

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
    echo "Keeping existing ft_print_hex_upper.c"
fi
