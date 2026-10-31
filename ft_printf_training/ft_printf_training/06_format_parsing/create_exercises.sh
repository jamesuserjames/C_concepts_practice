#!/usr/bin/env bash
set -euo pipefail
DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

if [[ ! -e "$DIR/ft_count_placeholders.c" ]]; then
    cat > "$DIR/ft_count_placeholders.c" <<'EXERCISE_EOF'
#include <unistd.h>
#include <stdlib.h>
#include <stdarg.h>
#include <limits.h>
#include <stddef.h>
#include <stdint.h>

int	ft_count_placeholders(const char *format)
{
	
}

#include <stdio.h>

int	main(void)
{
	printf("Test 1: %d\n", ft_count_placeholders("hello"));
	printf("Test 2: %d\n", ft_count_placeholders("%d"));
	printf("Test 3: %d\n", ft_count_placeholders("%d %s"));
	printf("Test 4: %d\n", ft_count_placeholders("%%"));
	printf("Test 5: %d\n", ft_count_placeholders("x%%y%d"));
	printf("Test 6: %d\n", ft_count_placeholders("%x %X %p"));
	printf("Test 7: %d\n", ft_count_placeholders(""));
	return (0);
}

/*
ALLOWED FUNCTIONS:
None for the implementation; printf/fflush are test-only.

GOAL:
Count supported % conversion pairs, treating %% as one conversion.

EXPLANATION:
Count supported % conversion pairs, treating %% as one conversion.
The function parameters are the values passed by the test calls in main.
For printing exercises, return the number of bytes written or -1 on error.
For value exercises, return the value specified by the test contract.
This skill is used when constructing and verifying ft_printf conversions.

TODO:
1. Identify the values provided by each test and what the result means.
2. Walk format; if % is followed by a supported specifier, count it and
skip two chars.
3. Implement the function using only permitted operations.
4. Compare all test results with the output below.

EXPECTED OUTPUT:
Test 1: 0
Test 2: 1
Test 3: 2
Test 4: 1
Test 5: 2
Test 6: 3
Test 7: 0

EDGE CASES:
Inputs contain no dangling or invalid percent sequences.

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
    echo "Keeping existing ft_count_placeholders.c"
fi

if [[ ! -e "$DIR/ft_dispatch_char.c" ]]; then
    cat > "$DIR/ft_dispatch_char.c" <<'EXERCISE_EOF'
#include <unistd.h>
#include <stdlib.h>
#include <stdarg.h>
#include <limits.h>
#include <stddef.h>
#include <stdint.h>

int	ft_dispatch_char(char spec, va_list args)
{
	
}

#include <stdio.h>

static int	test_dispatch(char spec, ...)
{
	va_list	args;
	int		ret;

	va_start(args, spec);
	ret = ft_dispatch_char(spec, args);
	va_end(args);
	return (ret);
}


int	main(void)
{
	int	ret;

	printf("Test 1: [");
	fflush(stdout);
	ret = test_dispatch('c', 'A');
	printf("] (return: %d)\n", ret);
	printf("Test 2: [");
	fflush(stdout);
	ret = test_dispatch('s', "Hi");
	printf("] (return: %d)\n", ret);
	printf("Test 3: [");
	fflush(stdout);
	ret = test_dispatch('d', -42);
	printf("] (return: %d)\n", ret);
	printf("Test 4: [");
	fflush(stdout);
	ret = test_dispatch('u', 42U);
	printf("] (return: %d)\n", ret);
	printf("Test 5: [");
	fflush(stdout);
	ret = test_dispatch('x', 255U);
	printf("] (return: %d)\n", ret);
	printf("Test 6: [");
	fflush(stdout);
	ret = test_dispatch('X', 255U);
	printf("] (return: %d)\n", ret);
	return (0);
}

/*
ALLOWED FUNCTIONS:
write for the implementation; printf/fflush are test-only.

GOAL:
Dispatch a specifier to the appropriate output logic using va_list.

EXPLANATION:
Dispatch a specifier to the appropriate output logic using va_list.
The function parameters are the values passed by the test calls in main.
For printing exercises, return the number of bytes written or -1 on error.
For value exercises, return the value specified by the test contract.
This skill is used when constructing and verifying ft_printf conversions.

TODO:
1. Identify the values provided by each test and what the result means.
2. Read the right promoted type from args for the specifier; return printed
count.
3. Implement the function using only permitted operations.
4. Compare all test results with the output below.

EXPECTED OUTPUT:
Test 1: [A] (return: 1)
Test 2: [Hi] (return: 2)
Test 3: [-42] (return: 3)
Test 4: [42] (return: 2)
Test 5: [ff] (return: 2)
Test 6: [FF] (return: 2)

EDGE CASES:
The supplied test wrapper is test-only and builds a va_list.

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
    echo "Keeping existing ft_dispatch_char.c"
fi

if [[ ! -e "$DIR/ft_is_specifier.c" ]]; then
    cat > "$DIR/ft_is_specifier.c" <<'EXERCISE_EOF'
#include <unistd.h>
#include <stdlib.h>
#include <stdarg.h>
#include <limits.h>
#include <stddef.h>
#include <stdint.h>

int	ft_is_specifier(char c)
{
	
}

#include <stdio.h>

int	main(void)
{
	printf("Test 1: %d\n", ft_is_specifier('c'));
	printf("Test 2: %d\n", ft_is_specifier('s'));
	printf("Test 3: %d\n", ft_is_specifier('p'));
	printf("Test 4: %d\n", ft_is_specifier('d'));
	printf("Test 5: %d\n", ft_is_specifier('i'));
	printf("Test 6: %d\n", ft_is_specifier('u'));
	printf("Test 7: %d\n", ft_is_specifier('x'));
	printf("Test 8: %d\n", ft_is_specifier('X'));
	printf("Test 9: %d\n", ft_is_specifier('%'));
	printf("Test 10: %d\n", ft_is_specifier('q'));
	printf("Test 11: %d\n", ft_is_specifier('a'));
	printf("Test 12: %d\n", ft_is_specifier('0'));
	return (0);
}

/*
ALLOWED FUNCTIONS:
None for the implementation; printf/fflush are test-only.

GOAL:
Recognize the nine mandatory ft_printf conversions.

EXPLANATION:
Recognize the nine mandatory ft_printf conversions.
The function parameters are the values passed by the test calls in main.
For printing exercises, return the number of bytes written or -1 on error.
For value exercises, return the value specified by the test contract.
This skill is used when constructing and verifying ft_printf conversions.

TODO:
1. Identify the values provided by each test and what the result means.
2. Return 1 for c s p d i u x X %; return 0 otherwise.
3. Implement the function using only permitted operations.
4. Compare all test results with the output below.

EXPECTED OUTPUT:
Test 1: 1
Test 2: 1
Test 3: 1
Test 4: 1
Test 5: 1
Test 6: 1
Test 7: 1
Test 8: 1
Test 9: 1
Test 10: 0
Test 11: 0
Test 12: 0

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
    echo "Keeping existing ft_is_specifier.c"
fi

if [[ ! -e "$DIR/ft_print_literals.c" ]]; then
    cat > "$DIR/ft_print_literals.c" <<'EXERCISE_EOF'
#include <unistd.h>
#include <stdlib.h>
#include <stdarg.h>
#include <limits.h>
#include <stddef.h>
#include <stdint.h>

int	ft_print_literals(const char *format)
{
	
}

#include <stdio.h>

int	main(void)
{
	int	ret;

	printf("Test 1: [");
	fflush(stdout);
	ret = ft_print_literals("abc");
	printf("] (return: %d)\n", ret);
	printf("Test 2: [");
	fflush(stdout);
	ret = ft_print_literals("");
	printf("] (return: %d)\n", ret);
	printf("Test 3: [");
	fflush(stdout);
	ret = ft_print_literals("100%%");
	printf("] (return: %d)\n", ret);
	printf("Test 4: [");
	fflush(stdout);
	ret = ft_print_literals("hello world");
	printf("] (return: %d)\n", ret);
	printf("Test 5: [");
	fflush(stdout);
	ret = ft_print_literals("abc%d");
	printf("] (return: %d)\n", ret);
	printf("Test 6: [");
	fflush(stdout);
	ret = ft_print_literals("x%sy");
	printf("] (return: %d)\n", ret);
	return (0);
}

/*
ALLOWED FUNCTIONS:
write for the implementation; printf/fflush are test-only.

GOAL:
Print literal characters and stop at the first conversion marker.

EXPLANATION:
Print literal characters and stop at the first conversion marker.
The function parameters are the values passed by the test calls in main.
For printing exercises, return the number of bytes written or -1 on error.
For value exercises, return the value specified by the test contract.
This skill is used when constructing and verifying ft_printf conversions.

TODO:
1. Identify the values provided by each test and what the result means.
2. Walk format and emit until NUL or the next %; return bytes printed.
3. Implement the function using only permitted operations.
4. Compare all test results with the output below.

EXPECTED OUTPUT:
Test 1: [abc] (return: 3)
Test 2: [] (return: 0)
Test 3: [100] (return: 3)
Test 4: [hello world] (return: 11)
Test 5: [abc] (return: 3)
Test 6: [x] (return: 1)

EDGE CASES:
This drill intentionally stops at %, even if it introduces %%.

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
    echo "Keeping existing ft_print_literals.c"
fi
