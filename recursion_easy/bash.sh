#!/bin/bash

PROJECT="recursion_easy"

mkdir -p "$PROJECT"

mkdir -p "$PROJECT/ex00"
cat > "$PROJECT/ex00/ft_recursive_countdown_sum.c" <<'EOF'
#include <stdio.h>

int	ft_recursive_countdown_sum(int n)
{
	(void)n;
	return (0);
}

int	main(void)
{
	printf("%d\n", ft_recursive_countdown_sum(5));
	printf("%d\n", ft_recursive_countdown_sum(1));
	printf("%d\n", ft_recursive_countdown_sum(0));
	return (0);
}

/*
Allowed functions: none

Goal:
Return the sum from n down to 0 recursively

TODO:
1. Return 0 when n is 0
2. Return n plus recursive call with n - 1
3. Stop recursion correctly

Test notes:
Tests normal case, edge case 1, and boundary case 0

Expected output:
15
1
0
*/
EOF

mkdir -p "$PROJECT/ex01"
cat > "$PROJECT/ex01/ft_recursive_count_up_sum.c" <<'EOF'
#include <stdio.h>

int	ft_recursive_count_up_sum(int current, int max)
{
	(void)current;
	(void)max;
	return (0);
}

int	main(void)
{
	printf("%d\n", ft_recursive_count_up_sum(1, 5));
	printf("%d\n", ft_recursive_count_up_sum(3, 3));
	printf("%d\n", ft_recursive_count_up_sum(5, 3));
	return (0);
}

/*
Allowed functions: none

Goal:
Return the sum from current up to max recursively

TODO:
1. Return 0 when current is greater than max
2. Return current plus recursive call with current + 1
3. Stop when current passes max

Test notes:
Tests normal range, one-value range, and invalid range

Expected output:
15
3
0
*/
EOF

mkdir -p "$PROJECT/ex02"
cat > "$PROJECT/ex02/ft_recursive_strlen.c" <<'EOF'
#include <stdio.h>

int	ft_recursive_strlen(char *str)
{
	(void)str;
	return (0);
}

int	main(void)
{
	printf("%d\n", ft_recursive_strlen("hello"));
	printf("%d\n", ft_recursive_strlen(""));
	printf("%d\n", ft_recursive_strlen("42"));
	return (0);
}

/*
Allowed functions: none

Goal:
Return string length recursively

TODO:
1. Return 0 when str points to '\0'
2. Return 1 plus recursive call with str + 1
3. Move through the string recursively

Test notes:
Tests normal string, empty string, and short string

Expected output:
5
0
2
*/
EOF

mkdir -p "$PROJECT/ex03"
cat > "$PROJECT/ex03/ft_recursive_count_char.c" <<'EOF'
#include <stdio.h>

int	ft_recursive_count_char(char *str, char c)
{
	(void)str;
	(void)c;
	return (0);
}

int	main(void)
{
	printf("%d\n", ft_recursive_count_char("banana", 'a'));
	printf("%d\n", ft_recursive_count_char("banana", 'x'));
	printf("%d\n", ft_recursive_count_char("", 'a'));
	return (0);
}

/*
Allowed functions: none

Goal:
Count how many times c appears in str recursively

TODO:
1. Return 0 at the null terminator
2. Add 1 when current character equals c
3. Recurse with str + 1

Test notes:
Tests repeated character, missing character, and empty string

Expected output:
3
0
0
*/
EOF

mkdir -p "$PROJECT/ex04"
cat > "$PROJECT/ex04/ft_recursive_has_char.c" <<'EOF'
#include <stdio.h>

int	ft_recursive_has_char(char *str, char c)
{
	(void)str;
	(void)c;
	return (0);
}

int	main(void)
{
	printf("%d\n", ft_recursive_has_char("hello", 'e'));
	printf("%d\n", ft_recursive_has_char("hello", 'z'));
	printf("%d\n", ft_recursive_has_char("", 'a'));
	return (0);
}

/*
Allowed functions: none

Goal:
Return 1 if c exists in str recursively

TODO:
1. Return 0 at the null terminator
2. Return 1 if current character equals c
3. Otherwise recurse with str + 1

Test notes:
Tests found character, missing character, and empty string

Expected output:
1
0
0
*/
EOF

mkdir -p "$PROJECT/ex05"
cat > "$PROJECT/ex05/ft_recursive_only_digits.c" <<'EOF'
#include <stdio.h>

int	ft_recursive_only_digits(char *str)
{
	(void)str;
	return (0);
}

int	main(void)
{
	printf("%d\n", ft_recursive_only_digits("12345"));
	printf("%d\n", ft_recursive_only_digits("12a45"));
	printf("%d\n", ft_recursive_only_digits(""));
	return (0);
}

/*
Allowed functions: none

Goal:
Return 1 if all characters are digits recursively

TODO:
1. Return 1 at the null terminator
2. Return 0 if current character is not a digit
3. Otherwise recurse with str + 1

Test notes:
Tests all digits, mixed characters, and empty string

Expected output:
1
0
1
*/
EOF

mkdir -p "$PROJECT/ex06"
cat > "$PROJECT/ex06/ft_recursive_array_sum.c" <<'EOF'
#include <stdio.h>

int	ft_recursive_array_sum(int *arr, int size)
{
	(void)arr;
	(void)size;
	return (0);
}

int	main(void)
{
	int	a[4] = {1, 2, 3, 4};
	int	b[1] = {7};

	printf("%d\n", ft_recursive_array_sum(a, 4));
	printf("%d\n", ft_recursive_array_sum(b, 1));
	printf("%d\n", ft_recursive_array_sum(a, 0));
	return (0);
}

/*
Allowed functions: none

Goal:
Return the sum of an int array recursively

TODO:
1. Return 0 when size is 0
2. Return arr[0] plus recursive call with arr + 1
3. Decrease size each recursive call

Test notes:
Tests normal array, one-element array, and zero-size boundary

Expected output:
10
7
0
*/
EOF

mkdir -p "$PROJECT/ex07"
cat > "$PROJECT/ex07/ft_recursive_array_count_positive.c" <<'EOF'
#include <stdio.h>

int	ft_recursive_array_count_positive(int *arr, int size)
{
	(void)arr;
	(void)size;
	return (0);
}

int	main(void)
{
	int	a[5] = {-1, 2, 0, 4, -5};
	int	b[1] = {-7};

	printf("%d\n", ft_recursive_array_count_positive(a, 5));
	printf("%d\n", ft_recursive_array_count_positive(b, 1));
	printf("%d\n", ft_recursive_array_count_positive(a, 0));
	return (0);
}

/*
Allowed functions: none

Goal:
Count positive numbers in an int array recursively

TODO:
1. Return 0 when size is 0
2. Add 1 if arr[0] is greater than 0
3. Recurse with arr + 1 and size - 1

Test notes:
Tests mixed values, no positive values, and empty boundary

Expected output:
2
0
0
*/
EOF

mkdir -p "$PROJECT/ex08"
cat > "$PROJECT/ex08/ft_recursive_factorial.c" <<'EOF'
#include <stdio.h>

int	ft_recursive_factorial(int nb)
{
	(void)nb;
	return (0);
}

int	main(void)
{
	printf("%d\n", ft_recursive_factorial(5));
	printf("%d\n", ft_recursive_factorial(1));
	printf("%d\n", ft_recursive_factorial(0));
	return (0);
}

/*
Allowed functions: none

Goal:
Return factorial recursively

TODO:
1. Return 1 when nb is 0 or 1
2. Return nb times recursive call with nb - 1
3. Stop before nb becomes negative

Test notes:
Tests normal factorial, edge case 1, and boundary case 0

Expected output:
120
1
1
*/
EOF

mkdir -p "$PROJECT/ex09"
cat > "$PROJECT/ex09/ft_recursive_power.c" <<'EOF'
#include <stdio.h>

int	ft_recursive_power(int nb, int power)
{
	(void)nb;
	(void)power;
	return (0);
}

int	main(void)
{
	printf("%d\n", ft_recursive_power(2, 3));
	printf("%d\n", ft_recursive_power(5, 0));
	printf("%d\n", ft_recursive_power(3, 1));
	return (0);
}

/*
Allowed functions: none

Goal:
Return nb raised to power recursively

TODO:
1. Return 1 when power is 0
2. Return nb times recursive call with power - 1
3. Return 0 if power is negative

Test notes:
Tests normal power, zero power, and power one

Expected output:
8
1
3
*/
EOF

mkdir -p "$PROJECT/ex10"
cat > "$PROJECT/ex10/ft_recursive_digit_sum.c" <<'EOF'
#include <stdio.h>

int	ft_recursive_digit_sum(int n)
{
	(void)n;
	return (0);
}

int	main(void)
{
	printf("%d\n", ft_recursive_digit_sum(1234));
	printf("%d\n", ft_recursive_digit_sum(7));
	printf("%d\n", ft_recursive_digit_sum(0));
	return (0);
}

/*
Allowed functions: none

Goal:
Return the sum of digits recursively

TODO:
1. Return 0 when n is 0
2. Add n % 10
3. Recurse with n / 10

Test notes:
Tests multi-digit number, one digit, and zero boundary

Expected output:
10
7
0
*/
EOF

mkdir -p "$PROJECT/ex11"
cat > "$PROJECT/ex11/ft_recursive_count_digits.c" <<'EOF'
#include <stdio.h>

int	ft_recursive_count_digits(int n)
{
	(void)n;
	return (0);
}

int	main(void)
{
	printf("%d\n", ft_recursive_count_digits(1234));
	printf("%d\n", ft_recursive_count_digits(7));
	printf("%d\n", ft_recursive_count_digits(0));
	return (0);
}

/*
Allowed functions: none

Goal:
Count digits recursively

TODO:
1. Return 1 when n is between 0 and 9
2. Return 1 plus recursive call with n / 10
3. Handle 0 as one digit

Test notes:
Tests multi-digit number, one digit, and zero boundary

Expected output:
4
1
1
*/
EOF

mkdir -p "$PROJECT/ex12"
cat > "$PROJECT/ex12/ft_recursive_fibonacci.c" <<'EOF'
#include <stdio.h>

int	ft_recursive_fibonacci(int index)
{
	(void)index;
	return (0);
}

int	main(void)
{
	printf("%d\n", ft_recursive_fibonacci(7));
	printf("%d\n", ft_recursive_fibonacci(1));
	printf("%d\n", ft_recursive_fibonacci(0));
	return (0);
}

/*
Allowed functions: none

Goal:
Return fibonacci value recursively

TODO:
1. Return index when index is 0 or 1
2. Return fibonacci(index - 1) plus fibonacci(index - 2)
3. Return 0 for negative index

Test notes:
Tests normal fibonacci, edge case 1, and boundary case 0

Expected output:
13
1
0
*/
EOF

mkdir -p "$PROJECT/ex13"
cat > "$PROJECT/ex13/ft_recursive_is_power_of_two.c" <<'EOF'
#include <stdio.h>

int	ft_recursive_is_power_of_two(int n)
{
	(void)n;
	return (0);
}

int	main(void)
{
	printf("%d\n", ft_recursive_is_power_of_two(8));
	printf("%d\n", ft_recursive_is_power_of_two(7));
	printf("%d\n", ft_recursive_is_power_of_two(1));
	return (0);
}

/*
Allowed functions: none

Goal:
Return 1 if n is a power of two recursively

TODO:
1. Return 1 when n is 1
2. Return 0 if n is less than 1 or odd
3. Recurse with n / 2

Test notes:
Tests power of two, non-power, and boundary case 1

Expected output:
1
0
1
*/
EOF

mkdir -p "$PROJECT/ex14"
cat > "$PROJECT/ex14/ft_recursive_gcd.c" <<'EOF'
#include <stdio.h>

int	ft_recursive_gcd(int a, int b)
{
	(void)a;
	(void)b;
	return (0);
}

int	main(void)
{
	printf("%d\n", ft_recursive_gcd(12, 8));
	printf("%d\n", ft_recursive_gcd(7, 3));
	printf("%d\n", ft_recursive_gcd(5, 0));
	return (0);
}

/*
Allowed functions: none

Goal:
Return greatest common divisor recursively

TODO:
1. Return a when b is 0
2. Recurse with b and a % b
3. Stop when remainder reaches 0

Test notes:
Tests common divisor, coprime numbers, and zero boundary

Expected output:
4
1
5
*/
EOF

mkdir -p "$PROJECT/ex15"
cat > "$PROJECT/ex15/ft_recursive_array_max.c" <<'EOF'
#include <stdio.h>

int	ft_recursive_array_max(int *arr, int size)
{
	(void)arr;
	(void)size;
	return (0);
}

int	main(void)
{
	int	a[4] = {3, 9, 2, 5};
	int	b[1] = {-4};

	printf("%d\n", ft_recursive_array_max(a, 4));
	printf("%d\n", ft_recursive_array_max(b, 1));
	printf("%d\n", ft_recursive_array_max(a, 0));
	return (0);
}

/*
Allowed functions: none

Goal:
Return the largest value in an int array recursively

TODO:
1. Return 0 when size is 0
2. Compare arr[0] with max of the rest
3. Return the larger value

Test notes:
Tests normal array, one-element array, and zero-size boundary

Expected output:
9
-4
0
*/
EOF

mkdir -p "$PROJECT/ex16"
cat > "$PROJECT/ex16/ft_recursive_min_array.c" <<'EOF'
#include <stdio.h>

int	ft_recursive_min_array(int *arr, int size)
{
	(void)arr;
	(void)size;
	return (0);
}

int	main(void)
{
	int	a[4] = {4, 2, 9, 1};
	int	b[1] = {-3};

	printf("%d\n", ft_recursive_min_array(a, 4));
	printf("%d\n", ft_recursive_min_array(b, 1));
	printf("%d\n", ft_recursive_min_array(a, 0));
	return (0);
}

/*
Allowed functions: none

Goal:
Return the smallest value in an int array recursively

TODO:
1. Return 0 when size is 0
2. Compare arr[0] with min of the rest
3. Return the smaller value

Test notes:
Tests normal array, one-element array, and zero-size boundary

Expected output:
1
-3
0
*/
EOF

mkdir -p "$PROJECT/ex17"
cat > "$PROJECT/ex17/ft_recursive_all_positive.c" <<'EOF'
#include <stdio.h>

int	ft_recursive_all_positive(int *arr, int size)
{
	(void)arr;
	(void)size;
	return (0);
}

int	main(void)
{
	int	a[3] = {1, 2, 3};
	int	b[3] = {1, -2, 3};

	printf("%d\n", ft_recursive_all_positive(a, 3));
	printf("%d\n", ft_recursive_all_positive(b, 3));
	printf("%d\n", ft_recursive_all_positive(a, 0));
	return (0);
}

/*
Allowed functions: none

Goal:
Return 1 if all numbers in array are positive recursively

TODO:
1. Return 1 when size is 0
2. Return 0 if arr[0] is not positive
3. Recurse with arr + 1 and size - 1

Test notes:
Tests all positive, one negative, and empty boundary

Expected output:
1
0
1
*/
EOF

mkdir -p "$PROJECT/ex18"
cat > "$PROJECT/ex18/ft_recursive_find_index.c" <<'EOF'
#include <stdio.h>

int	ft_recursive_find_index(char *str, char c, int index)
{
	(void)str;
	(void)c;
	(void)index;
	return (0);
}

int	main(void)
{
	printf("%d\n", ft_recursive_find_index("hello", 'l', 0));
	printf("%d\n", ft_recursive_find_index("hello", 'z', 0));
	printf("%d\n", ft_recursive_find_index("", 'a', 0));
	return (0);
}

/*
Allowed functions: none

Goal:
Return the first index of c in str recursively

TODO:
1. Return -1 at the null terminator
2. Return index if current character equals c
3. Recurse with str + 1 and index + 1

Test notes:
Tests found character, missing character, and empty string

Expected output:
2
-1
-1
*/
EOF

mkdir -p "$PROJECT/ex19"
cat > "$PROJECT/ex19/ft_recursive_strcmp.c" <<'EOF'
#include <stdio.h>

int	ft_recursive_strcmp(char *s1, char *s2)
{
	(void)s1;
	(void)s2;
	return (0);
}

int	main(void)
{
	printf("%d\n", ft_recursive_strcmp("abc", "abc"));
	printf("%d\n", ft_recursive_strcmp("abc", "abd"));
	printf("%d\n", ft_recursive_strcmp("abd", "abc"));
	return (0);
}

/*
Allowed functions: none

Goal:
Compare two strings recursively

TODO:
1. Return difference when current characters differ
2. Return 0 when both strings end
3. Recurse with s1 + 1 and s2 + 1

Test notes:
Tests equal strings, smaller difference, and larger difference

Expected output:
0
-1
1
*/
EOF

mkdir -p "$PROJECT/ex20"
cat > "$PROJECT/ex20/ft_recursive_skip_spaces.c" <<'EOF'
#include <stdio.h>

char	*ft_recursive_skip_spaces(char *str)
{
	(void)str;
	return (NULL);
}

int	main(void)
{
	printf("%s\n", ft_recursive_skip_spaces("   hello"));
	printf("%s\n", ft_recursive_skip_spaces("world"));
	printf("%s\n", ft_recursive_skip_spaces(""));
	return (0);
}

/*
Allowed functions: none

Goal:
Return pointer to first non-space character recursively

TODO:
1. Return str when current character is not a space
2. Recurse with str + 1 while current character is space
3. Stop safely at the null terminator

Test notes:
Tests leading spaces, no spaces, and empty string

Expected output:
hello
world

*/
EOF

mkdir -p "$PROJECT/ex21"
cat > "$PROJECT/ex21/ft_recursive_is_palindrome.c" <<'EOF'
#include <stdio.h>

int	ft_recursive_is_palindrome(char *str, int left, int right)
{
	(void)str;
	(void)left;
	(void)right;
	return (0);
}

int	main(void)
{
	printf("%d\n", ft_recursive_is_palindrome("level", 0, 4));
	printf("%d\n", ft_recursive_is_palindrome("hello", 0, 4));
	printf("%d\n", ft_recursive_is_palindrome("", 0, -1));
	return (0);
}

/*
Allowed functions: none

Goal:
Return 1 if a string is a palindrome recursively

TODO:
1. Return 1 when left is greater than or equal to right
2. Return 0 if str[left] and str[right] differ
3. Recurse with left + 1 and right - 1

Test notes:
Tests palindrome, non-palindrome, and empty string boundary

Expected output:
1
0
1
*/
EOF

mkdir -p "$PROJECT/ex22"
cat > "$PROJECT/ex22/ft_recursive_count_words.c" <<'EOF'
#include <stdio.h>

int	ft_recursive_count_words(char *str, int in_word)
{
	(void)str;
	(void)in_word;
	return (0);
}

int	main(void)
{
	printf("%d\n", ft_recursive_count_words("hello world 42", 0));
	printf("%d\n", ft_recursive_count_words("   one", 0));
	printf("%d\n", ft_recursive_count_words("", 0));
	return (0);
}

/*
Allowed functions: none

Goal:
Count words separated by spaces recursively

TODO:
1. Return 0 at the null terminator
2. Count a word when entering from a space
3. Recurse while tracking whether you are inside a word

Test notes:
Tests multiple words, leading spaces, and empty string

Expected output:
3
1
0
*/
EOF

mkdir -p "$PROJECT/ex23"
cat > "$PROJECT/ex23/ft_recursive_reverse_number.c" <<'EOF'
#include <stdio.h>

int	ft_recursive_reverse_number(int n, int result)
{
	(void)n;
	(void)result;
	return (0);
}

int	main(void)
{
	printf("%d\n", ft_recursive_reverse_number(123, 0));
	printf("%d\n", ft_recursive_reverse_number(7, 0));
	printf("%d\n", ft_recursive_reverse_number(0, 0));
	return (0);
}

/*
Allowed functions: none

Goal:
Reverse positive integer digits recursively

TODO:
1. Return result when n is 0
2. Add last digit to result times 10
3. Recurse with n / 10

Test notes:
Tests multi-digit number, single digit, and zero boundary

Expected output:
321
7
0
*/
EOF

mkdir -p "$PROJECT/ex24"
cat > "$PROJECT/ex24/ft_recursive_print_string.c" <<'EOF'
#include <unistd.h>

void	ft_recursive_print_string(char *str)
{
	(void)str;
}

int	main(void)
{
	ft_recursive_print_string("hello");
	write(1, "\n", 1);
	ft_recursive_print_string("");
	write(1, "\n", 1);
	ft_recursive_print_string("42");
	write(1, "\n", 1);
	return (0);
}

/*
Allowed functions: write

Goal:
Print a string recursively

TODO:
1. Stop at null terminator
2. Write current character
3. Recurse with str + 1

Test notes:
Tests normal string, empty string, and short string

Expected output:
hello

42
*/
EOF

mkdir -p "$PROJECT/ex25"
cat > "$PROJECT/ex25/ft_recursive_print_reverse.c" <<'EOF'
#include <unistd.h>

void	ft_recursive_print_reverse(char *str)
{
	(void)str;
}

int	main(void)
{
	ft_recursive_print_reverse("hello");
	write(1, "\n", 1);
	ft_recursive_print_reverse("");
	write(1, "\n", 1);
	ft_recursive_print_reverse("42");
	write(1, "\n", 1);
	return (0);
}

/*
Allowed functions: write

Goal:
Print a string in reverse recursively

TODO:
1. Recurse to the end first
2. Write character while recursion unwinds
3. Stop at null terminator

Test notes:
Tests normal string, empty string, and short string

Expected output:
olleh

24
*/
EOF

mkdir -p "$PROJECT/ex26"
cat > "$PROJECT/ex26/ft_recursive_print_digits.c" <<'EOF'
#include <unistd.h>

void	ft_recursive_print_digits(int n)
{
	(void)n;
}

int	main(void)
{
	ft_recursive_print_digits(123);
	write(1, "\n", 1);
	ft_recursive_print_digits(7);
	write(1, "\n", 1);
	ft_recursive_print_digits(0);
	write(1, "\n", 1);
	return (0);
}

/*
Allowed functions: write

Goal:
Print positive integer digits recursively

TODO:
1. Recurse with n / 10 for multi-digit numbers
2. Convert last digit to char
3. Write the digit

Test notes:
Tests multi-digit number, single digit, and zero boundary

Expected output:
123
7
0
*/
EOF

mkdir -p "$PROJECT/ex27"
cat > "$PROJECT/ex27/ft_recursive_binary.c" <<'EOF'
#include <unistd.h>

void	ft_recursive_binary(int n)
{
	(void)n;
}

int	main(void)
{
	ft_recursive_binary(5);
	write(1, "\n", 1);
	ft_recursive_binary(1);
	write(1, "\n", 1);
	ft_recursive_binary(0);
	write(1, "\n", 1);
	return (0);
}

/*
Allowed functions: write

Goal:
Print positive number in binary recursively

TODO:
1. Recurse with n / 2 for numbers greater than 1
2. Convert n % 2 to char
3. Write the binary digit

Test notes:
Tests normal binary, one boundary, and zero boundary

Expected output:
101
1
0
*/
EOF

mkdir -p "$PROJECT/ex28"
cat > "$PROJECT/ex28/ft_recursive_is_sorted.c" <<'EOF'
#include <stdio.h>

int	ft_recursive_is_sorted(int *arr, int size)
{
	(void)arr;
	(void)size;
	return (0);
}

int	main(void)
{
	int	a[4] = {1, 2, 3, 4};
	int	b[4] = {1, 3, 2, 4};

	printf("%d\n", ft_recursive_is_sorted(a, 4));
	printf("%d\n", ft_recursive_is_sorted(b, 4));
	printf("%d\n", ft_recursive_is_sorted(a, 1));
	return (0);
}

/*
Allowed functions: none

Goal:
Return 1 if an int array is sorted ascending recursively

TODO:
1. Return 1 when size is 0 or 1
2. Return 0 if arr[0] is greater than arr[1]
3. Recurse with arr + 1 and size - 1

Test notes:
Tests sorted array, unsorted array, and one-element boundary

Expected output:
1
0
1
*/
EOF

mkdir -p "$PROJECT/ex29"
cat > "$PROJECT/ex29/ft_recursive_countdown_print.c" <<'EOF'
#include <unistd.h>

void	ft_recursive_countdown_print(int n)
{
	(void)n;
}

int	main(void)
{
	ft_recursive_countdown_print(5);
	write(1, "\n", 1);
	ft_recursive_countdown_print(1);
	write(1, "\n", 1);
	ft_recursive_countdown_print(0);
	write(1, "\n", 1);
	return (0);
}

/*
Allowed functions: write

Goal:
Print numbers from n down to 0 recursively

TODO:
1. Print current digit
2. Stop after printing 0
3. Recurse with n - 1 while n is greater than 0

Test notes:
Tests normal countdown, edge case 1, and boundary case 0

Expected output:
543210
10
0
*/
EOF

# ============================================================
# REMOVE PLACEHOLDERS FROM EXERCISE FUNCTIONS
# ============================================================

for file in "$PROJECT"/ex*/ft_*.c
do
	sed -i '' \
		-e '/^[[:space:]]*(void)[[:space:]]*[a-zA-Z_][a-zA-Z_0-9]*;[[:space:]]*$/d' \
		-e '/^[[:space:]]*return (0);[[:space:]]*$/{
			/./d
		}' \
		-e '/^[[:space:]]*return (NULL);[[:space:]]*$/d' \
		"$file"
done

# ============================================================
# ADD TAB INSIDE EMPTY FUNCTIONS
# ============================================================

for file in "$PROJECT"/ex*/ft_*.c
do
	awk '
	/^\{$/ {
		open = 1
		print
		next
	}

	open && /^\}$/ {
		print "\t"
		print
		open = 0
		next
	}

	open {
		open = 0
	}

	{
		print
	}
	' "$file" > "$file.tmp"

	mv "$file.tmp" "$file"
done