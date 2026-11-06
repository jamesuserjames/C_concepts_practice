#!/usr/bin/env bash

set -euo pipefail

cd "$(dirname "$0")" || exit 1

cat > 00_ft_recursive_strlen.c <<'EOF'
#include <stdio.h>

int	ft_recursive_strlen(const char *str)
{
	
}

/*
GOAL:
Count characters before the terminating NUL using pointer recursion.

ALLOWED FUNCTIONS:
none

TODO:
1. Detect the end of the string.
2. Advance to str + 1.
3. Add one on the way back.

EXPECTED OUTPUT:
Test 1: 5
Test 2: 0
Test 3: 2
*/

int	main(void)
{
	printf("Test 1: %d\n", ft_recursive_strlen("hello"));
	printf("Test 2: %d\n", ft_recursive_strlen(""));
	printf("Test 3: %d\n", ft_recursive_strlen("42"));
	return (0);
}

/*
EDGE CASES:
String arguments are valid NUL-terminated strings.

LEARNING CHECK:
1. When does recursion stop at the NUL terminator?
2. Why can pointer arithmetic replace an explicit loop here?
3. Which condition prevents invalid input in ft_recursive_strlen()?
4. What value or state is carried into the next recursive call?

NOTE:
The function is intentionally empty. Implement it yourself.
Keep implementation functions at or below 25 lines and respect 42 Norm.
*/
EOF

cat > 01_ft_recursive_count_char.c <<'EOF'
#include <stdio.h>

int	ft_recursive_count_char(const char *str, char c)
{
	
}

/*
GOAL:
Count occurrences of c in a NUL-terminated string.

ALLOWED FUNCTIONS:
none

TODO:
1. Stop at the string terminator.
2. Add one if the current character matches c.
3. Recurse on the remaining string.

EXPECTED OUTPUT:
Test 1: 3
Test 2: 0
Test 3: 0
*/

int	main(void)
{
	printf("Test 1: %d\n", ft_recursive_count_char("banana", 'a'));
	printf("Test 2: %d\n", ft_recursive_count_char("banana", 'x'));
	printf("Test 3: %d\n", ft_recursive_count_char("", 'a'));
	return (0);
}

/*
EDGE CASES:
The NUL terminator is not counted as an occurrence.

LEARNING CHECK:
1. When does recursion stop at the NUL terminator?
2. Why can pointer arithmetic replace an explicit loop here?
3. Which condition prevents invalid input in ft_recursive_count_char()?
4. What value or state is carried into the next recursive call?

NOTE:
The function is intentionally empty. Implement it yourself.
Keep implementation functions at or below 25 lines and respect 42 Norm.
*/
EOF

cat > 02_ft_recursive_has_char.c <<'EOF'
#include <stdio.h>

int	ft_recursive_has_char(const char *str, char c)
{
	
}

/*
GOAL:
Return one when c occurs before the end of str; zero otherwise.

ALLOWED FUNCTIONS:
none

TODO:
1. Return zero on end of string.
2. Return one immediately on a match.
3. Check the remaining characters recursively.

EXPECTED OUTPUT:
Test 1: 1
Test 2: 0
Test 3: 0
*/

int	main(void)
{
	printf("Test 1: %d\n", ft_recursive_has_char("hello", 'e'));
	printf("Test 2: %d\n", ft_recursive_has_char("hello", 'z'));
	printf("Test 3: %d\n", ft_recursive_has_char("", 'a'));
	return (0);
}

/*
EDGE CASES:
Stop on the first match rather than traversing unnecessarily.

LEARNING CHECK:
1. When does recursion stop at the NUL terminator?
2. Why can pointer arithmetic replace an explicit loop here?
3. Which condition prevents invalid input in ft_recursive_has_char()?
4. What value or state is carried into the next recursive call?

NOTE:
The function is intentionally empty. Implement it yourself.
Keep implementation functions at or below 25 lines and respect 42 Norm.
*/
EOF

cat > 03_ft_recursive_only_digits.c <<'EOF'
#include <stdio.h>

int	ft_recursive_only_digits(const char *str)
{
	
}

/*
GOAL:
Return one if every character is an ASCII digit, including empty string.

ALLOWED FUNCTIONS:
none

TODO:
1. Return one on end of string.
2. Reject any character outside 0..9.
3. Recurse with the next character.

EXPECTED OUTPUT:
Test 1: 1
Test 2: 0
Test 3: 1
*/

int	main(void)
{
	printf("Test 1: %d\n", ft_recursive_only_digits("12345"));
	printf("Test 2: %d\n", ft_recursive_only_digits("12a45"));
	printf("Test 3: %d\n", ft_recursive_only_digits(""));
	return (0);
}

/*
EDGE CASES:
An empty string satisfies the all-characters condition.

LEARNING CHECK:
1. When does recursion stop at the NUL terminator?
2. Why can pointer arithmetic replace an explicit loop here?
3. Which condition prevents invalid input in ft_recursive_only_digits()?
4. What value or state is carried into the next recursive call?

NOTE:
The function is intentionally empty. Implement it yourself.
Keep implementation functions at or below 25 lines and respect 42 Norm.
*/
EOF

cat > 04_ft_recursive_find_index.c <<'EOF'
#include <stdio.h>

int	ft_recursive_find_index(const char *str, char c, int index)
{
	
}

/*
GOAL:
Return the first index of c from the current position, or -1 if absent.

ALLOWED FUNCTIONS:
none

TODO:
1. Return -1 at the terminator.
2. Return index on the first match.
3. Advance str and index recursively.

EXPECTED OUTPUT:
Test 1: 2
Test 2: -1
Test 3: -1
*/

int	main(void)
{
	printf("Test 1: %d\n", ft_recursive_find_index("hello", 'l', 0));
	printf("Test 2: %d\n", ft_recursive_find_index("hello", 'z', 0));
	printf("Test 3: %d\n", ft_recursive_find_index("", 'a', 0));
	return (0);
}

/*
EDGE CASES:
Index starts at zero; the search stops before the terminator.

LEARNING CHECK:
1. When does recursion stop at the NUL terminator?
2. Why can pointer arithmetic replace an explicit loop here?
3. Which condition prevents invalid input in ft_recursive_find_index()?
4. What value or state is carried into the next recursive call?

NOTE:
The function is intentionally empty. Implement it yourself.
Keep implementation functions at or below 25 lines and respect 42 Norm.
*/
EOF

cat > 05_ft_recursive_skip_spaces.c <<'EOF'
#include <stdio.h>

const char *ft_recursive_skip_spaces(const char *str)
{
	
}

/*
GOAL:
Return a pointer to the first character that is not an ASCII space.

ALLOWED FUNCTIONS:
none

TODO:
1. Return str at a non-space or at NUL.
2. Skip one leading space.
3. Return the recursive result.

EXPECTED OUTPUT:
Test 1: [hello]
Test 2: [world]
Test 3: []
*/

int	main(void)
{
	printf("Test 1: [%s]\n", ft_recursive_skip_spaces("   hello"));
	printf("Test 2: [%s]\n", ft_recursive_skip_spaces("world"));
	printf("Test 3: [%s]\n", ft_recursive_skip_spaces("   "));
	return (0);
}

/*
EDGE CASES:
Only literal space character is skipped; other whitespace remains.

LEARNING CHECK:
1. When does recursion stop at the NUL terminator?
2. Why can pointer arithmetic replace an explicit loop here?
3. Which condition prevents invalid input in ft_recursive_skip_spaces()?
4. What value or state is carried into the next recursive call?

NOTE:
The function is intentionally empty. Implement it yourself.
Keep implementation functions at or below 25 lines and respect 42 Norm.
*/
EOF

cat > 06_ft_recursive_print_string.c <<'EOF'
#include <unistd.h>

void	ft_recursive_print_string(const char *str)
{
	
}

/*
GOAL:
Print a string in its original order using write and recursion.

ALLOWED FUNCTIONS:
write

TODO:
1. Stop at the NUL terminator.
2. Write the current character.
3. Recurse on the rest of the string.

EXPECTED OUTPUT:
Test 1: [hello]
Test 2: []
Test 3: [42]
*/

int	main(void)
{
	write(1, "Test 1: [", 9);
	ft_recursive_print_string("hello");
	write(1, "]\nTest 2: [", 11);
	ft_recursive_print_string("");
	write(1, "]\nTest 3: [", 11);
	ft_recursive_print_string("42");
	write(1, "]\n", 2);
	return (0);
}

/*
EDGE CASES:
Empty input prints no characters; test delimiters are printed by main.

LEARNING CHECK:
1. When does recursion stop at the NUL terminator?
2. Why can pointer arithmetic replace an explicit loop here?
3. Which condition prevents invalid input in ft_recursive_print_string()?
4. What value or state is carried into the next recursive call?

NOTE:
The function is intentionally empty. Implement it yourself.
Keep implementation functions at or below 25 lines and respect 42 Norm.
*/
EOF

cat > 07_ft_recursive_print_reverse.c <<'EOF'
#include <unistd.h>

void	ft_recursive_print_reverse(const char *str)
{
	
}

/*
GOAL:
Print a string in reverse order during recursion unwinding.

ALLOWED FUNCTIONS:
write

TODO:
1. Recurse to the end before writing.
2. Stop at the string terminator.
3. Write characters as calls return.

EXPECTED OUTPUT:
Test 1: [olleh]
Test 2: []
Test 3: [24]
*/

int	main(void)
{
	write(1, "Test 1: [", 9);
	ft_recursive_print_reverse("hello");
	write(1, "]\nTest 2: [", 11);
	ft_recursive_print_reverse("");
	write(1, "]\nTest 3: [", 11);
	ft_recursive_print_reverse("42");
	write(1, "]\n", 2);
	return (0);
}

/*
EDGE CASES:
Compare printing before and after the recursive call.

LEARNING CHECK:
1. When does recursion stop at the NUL terminator?
2. Why can pointer arithmetic replace an explicit loop here?
3. Which condition prevents invalid input in ft_recursive_print_reverse()?
4. What value or state is carried into the next recursive call?

NOTE:
The function is intentionally empty. Implement it yourself.
Keep implementation functions at or below 25 lines and respect 42 Norm.
*/
EOF

cat > 08_ft_recursive_strcmp.c <<'EOF'
#include <stdio.h>

int	ft_recursive_strcmp(const char *s1, const char *s2)
{
	
}

/*
GOAL:
Compare strings lexicographically as strcmp does, recursively.

ALLOWED FUNCTIONS:
none

TODO:
1. Compare current bytes as unsigned char.
2. Return their difference if unequal or at end.
3. Otherwise recurse with both pointers advanced.

EXPECTED OUTPUT:
Test 1: 0
Test 2: 1
Test 3: 1
*/

int	main(void)
{
	printf("Test 1: %d\n", ft_recursive_strcmp("abc", "abc"));
	printf("Test 2: %d\n", ft_recursive_strcmp("abc", "abd") < 0);
	printf("Test 3: %d\n", ft_recursive_strcmp("abd", "abc") > 0);
	return (0);
}

/*
EDGE CASES:
Only the sign of unequal results matters; compare unsigned bytes.

LEARNING CHECK:
1. When does recursion stop at the NUL terminator?
2. Why can pointer arithmetic replace an explicit loop here?
3. Which condition prevents invalid input in ft_recursive_strcmp()?
4. What value or state is carried into the next recursive call?

NOTE:
The function is intentionally empty. Implement it yourself.
Keep implementation functions at or below 25 lines and respect 42 Norm.
*/
EOF

cat > 09_ft_recursive_strcpy.c <<'EOF'
#include <stdio.h>

char *ft_recursive_strcpy(char *dest, const char *src)
{
	
}

/*
GOAL:
Copy a NUL-terminated string to a sufficiently large destination recursively.

ALLOWED FUNCTIONS:
none

TODO:
1. Copy the current character.
2. Stop after copying the terminator.
3. Recurse using the next positions, then return original dest.

EXPECTED OUTPUT:
Test 1: [hello]
Test 2: [a]
Test 3: []
*/

int	main(void)
{
	char first[16] = {0};
	char second[16] = {0};
	char third[16] = {0};

	printf("Test 1: [%s]\n", ft_recursive_strcpy(first, "hello"));
	printf("Test 2: [%s]\n", ft_recursive_strcpy(second, "a"));
	printf("Test 3: [%s]\n", ft_recursive_strcpy(third, ""));
	return (0);
}

/*
EDGE CASES:
Destination must have room for the source including its terminator.

LEARNING CHECK:
1. When does recursion stop at the NUL terminator?
2. Why can pointer arithmetic replace an explicit loop here?
3. Which condition prevents invalid input in ft_recursive_strcpy()?
4. What value or state is carried into the next recursive call?

NOTE:
The function is intentionally empty. Implement it yourself.
Keep implementation functions at or below 25 lines and respect 42 Norm.
*/
EOF

cat > 10_ft_recursive_is_palindrome.c <<'EOF'
#include <stdio.h>

int	ft_recursive_is_palindrome(const char *str, int left, int right)
{
	
}

/*
GOAL:
Determine whether characters between left and right form a palindrome.

ALLOWED FUNCTIONS:
none

TODO:
1. Return one once the indices meet or cross.
2. Return zero when opposite characters differ.
3. Recurse inward from both ends.

EXPECTED OUTPUT:
Test 1: 1
Test 2: 0
Test 3: 1
*/

int	main(void)
{
	printf("Test 1: %d\n", ft_recursive_is_palindrome("level", 0, 4));
	printf("Test 2: %d\n", ft_recursive_is_palindrome("hello", 0, 4));
	printf("Test 3: %d\n", ft_recursive_is_palindrome("", 0, -1));
	return (0);
}

/*
EDGE CASES:
Indices are valid for the given string; an empty range is palindromic.

LEARNING CHECK:
1. When does recursion stop at the NUL terminator?
2. Why can pointer arithmetic replace an explicit loop here?
3. Which condition prevents invalid input in ft_recursive_is_palindrome()?
4. What value or state is carried into the next recursive call?

NOTE:
The function is intentionally empty. Implement it yourself.
Keep implementation functions at or below 25 lines and respect 42 Norm.
*/
EOF

cat > 11_ft_recursive_count_words.c <<'EOF'
#include <stdio.h>

int	ft_recursive_count_words(const char *str, int in_word)
{
	
}

/*
GOAL:
Count words separated by literal spaces, tracking whether a word is active.

ALLOWED FUNCTIONS:
none

TODO:
1. Return zero at end of string.
2. Count transitions from space to a non-space.
3. Carry the updated in_word state into recursion.

EXPECTED OUTPUT:
Test 1: 3
Test 2: 1
Test 3: 0
Test 4: 2
*/

int	main(void)
{
	printf("Test 1: %d\n", ft_recursive_count_words("hello world 42", 0));
	printf("Test 2: %d\n", ft_recursive_count_words("   one", 0));
	printf("Test 3: %d\n", ft_recursive_count_words("", 0));
	printf("Test 4: %d\n", ft_recursive_count_words("a  b", 0));
	return (0);
}

/*
EDGE CASES:
Words are separated only by ASCII space, not tabs/newlines.

LEARNING CHECK:
1. When does recursion stop at the NUL terminator?
2. Why can pointer arithmetic replace an explicit loop here?
3. Which condition prevents invalid input in ft_recursive_count_words()?
4. What value or state is carried into the next recursive call?

NOTE:
The function is intentionally empty. Implement it yourself.
Keep implementation functions at or below 25 lines and respect 42 Norm.
*/
EOF

echo "Reset 12 exercises in 01_recursive_strings."
