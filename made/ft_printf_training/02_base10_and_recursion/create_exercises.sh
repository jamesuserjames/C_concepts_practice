#!/usr/bin/env bash
set -euo pipefail
DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

if [[ ! -e "$DIR/ft_count_digits.c" ]]; then
    cat > "$DIR/ft_count_digits.c" <<'EXERCISE_EOF'
#include <unistd.h>
#include <stdlib.h>
#include <stdarg.h>
#include <limits.h>
#include <stddef.h>
#include <stdint.h>

int	ft_count_digits(unsigned int n)
{
	
}

#include <stdio.h>

int	main(void)
{
	printf("Test 1: %d\n", ft_count_digits(0));
	printf("Test 2: %d\n", ft_count_digits(1));
	printf("Test 3: %d\n", ft_count_digits(9));
	printf("Test 4: %d\n", ft_count_digits(10));
	printf("Test 5: %d\n", ft_count_digits(99));
	printf("Test 6: %d\n", ft_count_digits(100));
	printf("Test 7: %d\n", ft_count_digits(4294967295U));
	return (0);
}

/*
ALLOWED FUNCTIONS:
None for the implementation; printf/fflush are test-only.

GOAL:
Count base-10 digits, including one digit for zero.

EXPLANATION:
Count base-10 digits, including one digit for zero.
The function parameters are the values passed by the test calls in main.
For printing exercises, return the number of bytes written or -1 on error.
For value exercises, return the value specified by the test contract.
This skill is used when constructing and verifying ft_printf conversions.

TODO:
1. Identify the values provided by each test and what the result means.
2. Divide by 10 until the magnitude fits one digit.
3. Implement the function using only permitted operations.
4. Compare all test results with the output below.

EXPECTED OUTPUT:
Test 1: 1
Test 2: 1
Test 3: 1
Test 4: 2
Test 5: 2
Test 6: 3
Test 7: 10

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
    echo "Keeping existing ft_count_digits.c"
fi

if [[ ! -e "$DIR/ft_last_digit.c" ]]; then
    cat > "$DIR/ft_last_digit.c" <<'EXERCISE_EOF'
#include <unistd.h>
#include <stdlib.h>
#include <stdarg.h>
#include <limits.h>
#include <stddef.h>
#include <stdint.h>

char	ft_last_digit(unsigned int n)
{
	
}

#include <stdio.h>

int	main(void)
{
	printf("Test 1: %c\n", ft_last_digit(0));
	printf("Test 2: %c\n", ft_last_digit(1));
	printf("Test 3: %c\n", ft_last_digit(9));
	printf("Test 4: %c\n", ft_last_digit(10));
	printf("Test 5: %c\n", ft_last_digit(42));
	printf("Test 6: %c\n", ft_last_digit(1239));
	return (0);
}

/*
ALLOWED FUNCTIONS:
None for the implementation; printf/fflush are test-only.

GOAL:
Convert the last decimal digit into its ASCII character.

EXPLANATION:
Convert the last decimal digit into its ASCII character.
The function parameters are the values passed by the test calls in main.
For printing exercises, return the number of bytes written or -1 on error.
For value exercises, return the value specified by the test contract.
This skill is used when constructing and verifying ft_printf conversions.

TODO:
1. Identify the values provided by each test and what the result means.
2. Use remainder modulo 10, then add the character code for zero.
3. Implement the function using only permitted operations.
4. Compare all test results with the output below.

EXPECTED OUTPUT:
Test 1: 0
Test 2: 1
Test 3: 9
Test 4: 0
Test 5: 2
Test 6: 9

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
    echo "Keeping existing ft_last_digit.c"
fi

if [[ ! -e "$DIR/ft_print_digits_recursive.c" ]]; then
    cat > "$DIR/ft_print_digits_recursive.c" <<'EXERCISE_EOF'
#include <unistd.h>
#include <stdlib.h>
#include <stdarg.h>
#include <limits.h>
#include <stddef.h>
#include <stdint.h>

int	ft_print_digits_recursive(unsigned int n)
{
	
}

#include <stdio.h>

int	main(void)
{
	int	ret;

	printf("Test 1: [");
	fflush(stdout);
	ret = ft_print_digits_recursive(0);
	printf("] (return: %d)\n", ret);
	printf("Test 2: [");
	fflush(stdout);
	ret = ft_print_digits_recursive(5);
	printf("] (return: %d)\n", ret);
	printf("Test 3: [");
	fflush(stdout);
	ret = ft_print_digits_recursive(10);
	printf("] (return: %d)\n", ret);
	printf("Test 4: [");
	fflush(stdout);
	ret = ft_print_digits_recursive(123);
	printf("] (return: %d)\n", ret);
	printf("Test 5: [");
	fflush(stdout);
	ret = ft_print_digits_recursive(1000);
	printf("] (return: %d)\n", ret);
	printf("Test 6: [");
	fflush(stdout);
	ret = ft_print_digits_recursive(4294967295U);
	printf("] (return: %d)\n", ret);
	return (0);
}

/*
ALLOWED FUNCTIONS:
write for the implementation; printf/fflush are test-only.

GOAL:
Print decimal digits in left-to-right order by recursion.

EXPLANATION:
Print decimal digits in left-to-right order by recursion.
The function parameters are the values passed by the test calls in main.
For printing exercises, return the number of bytes written or -1 on error.
For value exercises, return the value specified by the test contract.
This skill is used when constructing and verifying ft_printf conversions.

TODO:
1. Identify the values provided by each test and what the result means.
2. Recurse on n / 10 before printing the final digit; add each successful
return count.
3. Implement the function using only permitted operations.
4. Compare all test results with the output below.

EXPECTED OUTPUT:
Test 1: [0] (return: 1)
Test 2: [5] (return: 1)
Test 3: [10] (return: 2)
Test 4: [123] (return: 3)
Test 5: [1000] (return: 4)
Test 6: [4294967295] (return: 10)

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
    echo "Keeping existing ft_print_digits_recursive.c"
fi

if [[ ! -e "$DIR/ft_print_negative.c" ]]; then
    cat > "$DIR/ft_print_negative.c" <<'EXERCISE_EOF'
#include <unistd.h>
#include <stdlib.h>
#include <stdarg.h>
#include <limits.h>
#include <stddef.h>
#include <stdint.h>

int	ft_print_negative(int n)
{
	
}

#include <stdio.h>

int	main(void)
{
	int	ret;

	printf("Test 1: [");
	fflush(stdout);
	ret = ft_print_negative(-1);
	printf("] (return: %d)\n", ret);
	printf("Test 2: [");
	fflush(stdout);
	ret = ft_print_negative(-9);
	printf("] (return: %d)\n", ret);
	printf("Test 3: [");
	fflush(stdout);
	ret = ft_print_negative(-10);
	printf("] (return: %d)\n", ret);
	printf("Test 4: [");
	fflush(stdout);
	ret = ft_print_negative(-42);
	printf("] (return: %d)\n", ret);
	printf("Test 5: [");
	fflush(stdout);
	ret = ft_print_negative(-2147483647 - 1);
	printf("] (return: %d)\n", ret);
	return (0);
}

/*
ALLOWED FUNCTIONS:
write for the implementation; printf/fflush are test-only.

GOAL:
Print negative int values safely, including INT_MIN.

EXPLANATION:
Print negative int values safely, including INT_MIN.
The function parameters are the values passed by the test calls in main.
For printing exercises, return the number of bytes written or -1 on error.
For value exercises, return the value specified by the test contract.
This skill is used when constructing and verifying ft_printf conversions.

TODO:
1. Identify the values provided by each test and what the result means.
2. Convert to a wider signed type before negating, then print the minus
sign and magnitude.
3. Implement the function using only permitted operations.
4. Compare all test results with the output below.

EXPECTED OUTPUT:
Test 1: [-1] (return: 2)
Test 2: [-9] (return: 2)
Test 3: [-10] (return: 3)
Test 4: [-42] (return: 3)
Test 5: [-2147483648] (return: 11)

EDGE CASES:
The input contract is negative int values only.

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
    echo "Keeping existing ft_print_negative.c"
fi

if [[ ! -e "$DIR/ft_print_signed.c" ]]; then
    cat > "$DIR/ft_print_signed.c" <<'EXERCISE_EOF'
#include <unistd.h>
#include <stdlib.h>
#include <stdarg.h>
#include <limits.h>
#include <stddef.h>
#include <stdint.h>

int	ft_print_signed(int n)
{
	
}

#include <stdio.h>

int	main(void)
{
	int	ret;

	printf("Test 1: [");
	fflush(stdout);
	ret = ft_print_signed(0);
	printf("] (return: %d)\n", ret);
	printf("Test 2: [");
	fflush(stdout);
	ret = ft_print_signed(1);
	printf("] (return: %d)\n", ret);
	printf("Test 3: [");
	fflush(stdout);
	ret = ft_print_signed(-1);
	printf("] (return: %d)\n", ret);
	printf("Test 4: [");
	fflush(stdout);
	ret = ft_print_signed(42);
	printf("] (return: %d)\n", ret);
	printf("Test 5: [");
	fflush(stdout);
	ret = ft_print_signed(-42);
	printf("] (return: %d)\n", ret);
	printf("Test 6: [");
	fflush(stdout);
	ret = ft_print_signed(2147483647);
	printf("] (return: %d)\n", ret);
	printf("Test 7: [");
	fflush(stdout);
	ret = ft_print_signed(-2147483647 - 1);
	printf("] (return: %d)\n", ret);
	return (0);
}

/*
ALLOWED FUNCTIONS:
write for the implementation; printf/fflush are test-only.

GOAL:
Format signed decimal integers as required for %d and %i.

EXPLANATION:
Format signed decimal integers as required for %d and %i.
The function parameters are the values passed by the test calls in main.
For printing exercises, return the number of bytes written or -1 on error.
For value exercises, return the value specified by the test contract.
This skill is used when constructing and verifying ft_printf conversions.

TODO:
1. Identify the values provided by each test and what the result means.
2. Handle a minus sign then print magnitude as decimal digits; sum write
counts.
3. Implement the function using only permitted operations.
4. Compare all test results with the output below.

EXPECTED OUTPUT:
Test 1: [0] (return: 1)
Test 2: [1] (return: 1)
Test 3: [-1] (return: 2)
Test 4: [42] (return: 2)
Test 5: [-42] (return: 3)
Test 6: [2147483647] (return: 10)
Test 7: [-2147483648] (return: 11)

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
    echo "Keeping existing ft_print_signed.c"
fi

if [[ ! -e "$DIR/ft_print_unsigned.c" ]]; then
    cat > "$DIR/ft_print_unsigned.c" <<'EXERCISE_EOF'
#include <unistd.h>
#include <stdlib.h>
#include <stdarg.h>
#include <limits.h>
#include <stddef.h>
#include <stdint.h>

int	ft_print_unsigned(unsigned int n)
{
	
}

#include <stdio.h>

int	main(void)
{
	int	ret;

	printf("Test 1: [");
	fflush(stdout);
	ret = ft_print_unsigned(0U);
	printf("] (return: %d)\n", ret);
	printf("Test 2: [");
	fflush(stdout);
	ret = ft_print_unsigned(9U);
	printf("] (return: %d)\n", ret);
	printf("Test 3: [");
	fflush(stdout);
	ret = ft_print_unsigned(10U);
	printf("] (return: %d)\n", ret);
	printf("Test 4: [");
	fflush(stdout);
	ret = ft_print_unsigned(42U);
	printf("] (return: %d)\n", ret);
	printf("Test 5: [");
	fflush(stdout);
	ret = ft_print_unsigned(123456U);
	printf("] (return: %d)\n", ret);
	printf("Test 6: [");
	fflush(stdout);
	ret = ft_print_unsigned(4294967295U);
	printf("] (return: %d)\n", ret);
	return (0);
}

/*
ALLOWED FUNCTIONS:
write for the implementation; printf/fflush are test-only.

GOAL:
Format unsigned integers in decimal for %u.

EXPLANATION:
Format unsigned integers in decimal for %u.
The function parameters are the values passed by the test calls in main.
For printing exercises, return the number of bytes written or -1 on error.
For value exercises, return the value specified by the test contract.
This skill is used when constructing and verifying ft_printf conversions.

TODO:
1. Identify the values provided by each test and what the result means.
2. Do not use signed negation; repeatedly divide the unsigned number by
ten.
3. Implement the function using only permitted operations.
4. Compare all test results with the output below.

EXPECTED OUTPUT:
Test 1: [0] (return: 1)
Test 2: [9] (return: 1)
Test 3: [10] (return: 2)
Test 4: [42] (return: 2)
Test 5: [123456] (return: 6)
Test 6: [4294967295] (return: 10)

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
    echo "Keeping existing ft_print_unsigned.c"
fi
