#!/bin/bash

PROJECT="beginner_c_exes"

mkdir -p "$PROJECT/ex00"
cat > "$PROJECT/ex00/ft_print_a.c" <<'EOF'
#include <unistd.h>

void	ft_print_a(void)
{
	
}

int	main(void)
{
	ft_print_a();
	return (0);
}

/*
Allowed functions: write

Goal:
Print the character a.

TODO:
1. Create a character containing a
2. Use write with file descriptor 1
3. Write exactly one character

Test notes:
The test proves that the function prints exactly one lowercase a.

Expected output:
a
*/
EOF

mkdir -p "$PROJECT/ex01"
cat > "$PROJECT/ex01/ft_print_alphabet.c" <<'EOF'
#include <unistd.h>

void	ft_print_alphabet(void)
{
	
}

int	main(void)
{
	ft_print_alphabet();
	return (0);
}

/*
Allowed functions: write

Goal:
Print the lowercase alphabet from a to z.

TODO:
1. Start with the character a
2. Print the current character
3. Continue until z has been printed

Test notes:
The test proves that all lowercase letters are printed once and in ascending order.

Expected output:
abcdefghijklmnopqrstuvwxyz
*/
EOF

mkdir -p "$PROJECT/ex02"
cat > "$PROJECT/ex02/ft_print_numbers.c" <<'EOF'
#include <unistd.h>

void	ft_print_numbers(void)
{
	
}

int	main(void)
{
	ft_print_numbers();
	return (0);
}

/*
Allowed functions: write

Goal:
Print all decimal digits from 0 to 9 in ascending order.

TODO:
1. Start with the character 0
2. Print the current digit
3. Continue until 9 has been printed

Test notes:
The test proves that all ten digits are printed once and in ascending order.

Expected output:
0123456789
*/
EOF

mkdir -p "$PROJECT/ex03"
cat > "$PROJECT/ex03/ft_is_negative.c" <<'EOF'
#include <unistd.h>

void	ft_is_negative(int n)
{
	
}

int	main(void)
{
	ft_is_negative(42);
	write(1, "\n", 1);
	ft_is_negative(-42);
	write(1, "\n", 1);
	ft_is_negative(0);
	write(1, "\n", 1);
	return (0);
}

/*
Allowed functions: write

Goal:
Print N when n is negative and P when n is zero or positive.

TODO:
1. Compare n with zero
2. Print N if n is negative
3. Otherwise print P

Test notes:
The tests cover a positive number, a negative number, and zero as the boundary case.

Expected output:
P
N
P
*/
EOF

mkdir -p "$PROJECT/ex04"
cat > "$PROJECT/ex04/ft_set_value.c" <<'EOF'
#include <stdio.h>

void	ft_set_value(int *n)
{
	
}

int	main(void)
{
	int	a;
	int	b;
	int	c;

	a = 5;
	b = -10;
	c = 0;
	ft_set_value(&a);
	ft_set_value(&b);
	ft_set_value(&c);
	printf("%d\n", a);
	printf("%d\n", b);
	printf("%d\n", c);
	return (0);
}

/*
Allowed functions: none

Goal:
Change the integer pointed to by n so its value becomes 42.

TODO:
1. Understand that n contains the address of an integer
2. Dereference n
3. Assign 42 to the integer at that address

Test notes:
The tests prove that positive, negative, and zero starting values can all be changed through a pointer.

Expected output:
42
42
42
*/
EOF

mkdir -p "$PROJECT/ex05"
cat > "$PROJECT/ex05/ft_swap.c" <<'EOF'
#include <stdio.h>

void	ft_swap(int *a, int *b)
{
	
}

int	main(void)
{
	int	a;
	int	b;

	a = 10;
	b = 20;
	ft_swap(&a, &b);
	printf("%d %d\n", a, b);
	a = -5;
	b = 0;
	ft_swap(&a, &b);
	printf("%d %d\n", a, b);
	a = 7;
	b = 7;
	ft_swap(&a, &b);
	printf("%d %d\n", a, b);
	return (0);
}

/*
Allowed functions: none

Goal:
Swap the values of two integers using pointers.

TODO:
1. Save one of the values temporarily
2. Replace the first value with the second
3. Put the saved value into the second integer

Test notes:
The tests cover different positive values, a negative value with zero, and two equal values.

Expected output:
20 10
0 -5
7 7
*/
EOF

mkdir -p "$PROJECT/ex06"
cat > "$PROJECT/ex06/ft_abs.c" <<'EOF'
#include <stdio.h>

int	ft_abs(int n)
{
	
}

int	main(void)
{
	printf("%d\n", ft_abs(7));
	printf("%d\n", ft_abs(-7));
	printf("%d\n", ft_abs(0));
	return (0);
}

/*
Allowed functions: none

Goal:
Return the absolute value of n.

TODO:
1. Check whether n is negative
2. Reverse its sign if necessary
3. Return the resulting value

Test notes:
The tests cover a positive value, a negative value, and zero as the boundary case.

Expected output:
7
7
0
*/
EOF

mkdir -p "$PROJECT/ex07"
cat > "$PROJECT/ex07/ft_max.c" <<'EOF'
#include <stdio.h>

int	ft_max(int a, int b)
{
	
}

int	main(void)
{
	printf("%d\n", ft_max(4, 9));
	printf("%d\n", ft_max(12, -3));
	printf("%d\n", ft_max(5, 5));
	return (0);
}

/*
Allowed functions: none

Goal:
Return the larger of two integers.

TODO:
1. Compare a with b
2. Return a if a is larger
3. Otherwise return b

Test notes:
The tests cover b being larger, a being larger, and equal values as the boundary case.

Expected output:
9
12
5
*/
EOF

mkdir -p "$PROJECT/ex08"
cat > "$PROJECT/ex08/ft_is_even.c" <<'EOF'
#include <stdio.h>

int	ft_is_even(int n)
{
	
}

int	main(void)
{
	printf("%d\n", ft_is_even(8));
	printf("%d\n", ft_is_even(7));
	printf("%d\n", ft_is_even(0));
	return (0);
}

/*
Allowed functions: none

Goal:
Return 1 if n is even and 0 if n is odd.

TODO:
1. Find the remainder when n is divided by 2
2. Determine whether the remainder is zero
3. Return 1 or 0

Test notes:
The tests cover an even number, an odd number, and zero as the boundary case.

Expected output:
1
0
1
*/
EOF

mkdir -p "$PROJECT/ex09"
cat > "$PROJECT/ex09/ft_sum_to_n.c" <<'EOF'
#include <stdio.h>

int	ft_sum_to_n(int n)
{
	
}

int	main(void)
{
	printf("%d\n", ft_sum_to_n(5));
	printf("%d\n", ft_sum_to_n(1));
	printf("%d\n", ft_sum_to_n(0));
	return (0);
}

/*
Allowed functions: none

Goal:
Return the sum of every integer from 1 through n using a loop.

TODO:
1. Create a variable to store the total
2. Add each number from 1 through n
3. Return the final total

Test notes:
The tests cover a normal multi-step sum, the smallest positive case, and zero as the boundary case.

Expected output:
15
1
0
*/
EOF

mkdir -p "$PROJECT/ex10"
cat > "$PROJECT/ex10/ft_factorial.c" <<'EOF'
#include <stdio.h>

int	ft_factorial(int n)
{
	
}

int	main(void)
{
	printf("%d\n", ft_factorial(5));
	printf("%d\n", ft_factorial(1));
	printf("%d\n", ft_factorial(0));
	return (0);
}

/*
Allowed functions: none

Goal:
Return the factorial of n using a loop.

TODO:
1. Create a result starting at 1
2. Multiply the result by each required integer
3. Return the final result

Test notes:
The tests cover a normal factorial, the value 1, and 0 factorial as the boundary case.

Expected output:
120
1
1
*/
EOF

mkdir -p "$PROJECT/ex11"
cat > "$PROJECT/ex11/ft_strlen.c" <<'EOF'
#include <stdio.h>

int	ft_strlen(char *str)
{
	
}

int	main(void)
{
	printf("%d\n", ft_strlen("hello"));
	printf("%d\n", ft_strlen("a"));
	printf("%d\n", ft_strlen(""));
	return (0);
}

/*
Allowed functions: none

Goal:
Return the number of characters in a null-terminated string.

TODO:
1. Start at the first character
2. Move through the string until the null terminator
3. Return the number of characters encountered

Test notes:
The tests cover a normal string, a one-character string, and an empty string as the boundary case.

Expected output:
5
1
0
*/
EOF

mkdir -p "$PROJECT/ex12"
cat > "$PROJECT/ex12/ft_str_is_numeric.c" <<'EOF'
#include <stdio.h>

int	ft_str_is_numeric(char *str)
{
	
}

int	main(void)
{
	printf("%d\n", ft_str_is_numeric("58391"));
	printf("%d\n", ft_str_is_numeric("58a91"));
	printf("%d\n", ft_str_is_numeric(""));
	return (0);
}

/*
Allowed functions: none

Goal:
Return 1 if every character in str is a decimal digit and return 0 otherwise.

TODO:
1. Inspect each character in the string
2. Check whether it is between 0 and 9
3. Return 1 only if the entire string is valid

Test notes:
The tests cover a numeric string, a string containing a non-digit, and the empty-string boundary case.

Expected output:
1
0
1
*/
EOF

mkdir -p "$PROJECT/ex13"
cat > "$PROJECT/ex13/ft_str_is_alpha.c" <<'EOF'
#include <stdio.h>

int	ft_str_is_alpha(char *str)
{
	
}

int	main(void)
{
	printf("%d\n", ft_str_is_alpha("Hello"));
	printf("%d\n", ft_str_is_alpha("Hello42"));
	printf("%d\n", ft_str_is_alpha(""));
	return (0);
}

/*
Allowed functions: none

Goal:
Return 1 if every character in str is a letter and return 0 otherwise.

TODO:
1. Inspect each character in the string
2. Accept uppercase and lowercase letters
3. Return 1 only if the entire string is valid

Test notes:
The tests cover a valid alphabetic string, a string containing digits, and the empty-string boundary case.

Expected output:
1
0
1
*/
EOF

mkdir -p "$PROJECT/ex14"
cat > "$PROJECT/ex14/ft_recursive_sum.c" <<'EOF'
#include <stdio.h>

int	ft_recursive_sum(int n)
{
	
}

int	main(void)
{
	printf("%d\n", ft_recursive_sum(5));
	printf("%d\n", ft_recursive_sum(1));
	printf("%d\n", ft_recursive_sum(0));
	return (0);
}

/*
Allowed functions: none

Goal:
Return the sum of every integer from 1 through n using recursion.

TODO:
1. Identify the base case
2. Add n to a recursive call using n - 1
3. Ensure every call moves toward the base case

Test notes:
The tests cover a normal recursive chain, a one-step chain, and the base-case boundary.

Expected output:
15
1
0
*/
EOF

mkdir -p "$PROJECT/ex15"
cat > "$PROJECT/ex15/ft_recursive_factorial.c" <<'EOF'
#include <stdio.h>

int	ft_recursive_factorial(int n)
{
	
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
Return the factorial of n using recursion.

TODO:
1. Identify the factorial base case
2. Multiply n by a recursive call using n - 1
3. Ensure every call moves toward the base case

Test notes:
The tests cover a normal recursive factorial, the value 1, and 0 factorial as the boundary case.

Expected output:
120
1
1
*/
EOF

mkdir -p "$PROJECT/ex16"
cat > "$PROJECT/ex16/ft_recursive_power.c" <<'EOF'
#include <stdio.h>

int	ft_recursive_power(int nb, int power)
{
	
}

int	main(void)
{
	printf("%d\n", ft_recursive_power(2, 4));
	printf("%d\n", ft_recursive_power(7, 1));
	printf("%d\n", ft_recursive_power(5, 0));
	return (0);
}

/*
Allowed functions: none

Goal:
Return nb raised to power using recursion.

TODO:
1. Identify the base case for a power of zero
2. Multiply nb by a recursive call with power - 1
3. Ensure every call moves toward the base case

Test notes:
The tests cover repeated multiplication, a power of one, and a power of zero as the boundary case.

Expected output:
16
7
1
*/
EOF




mkdir -p "$PROJECT/ex17"
cat > "$PROJECT/ex17/ft_recursive_power.c" <<'EOF'
#include <stdio.h>

int	ft_recursive_power(int nb, int power)
{
	
}

int	main(void)
{
	printf("%d\n", ft_recursive_power(2, 4));
	printf("%d\n", ft_recursive_power(7, 1));
	printf("%d\n", ft_recursive_power(5, 0));
	return (0);
}

/*
Allowed functions: none

Goal:
Return nb raised to power using recursion.

TODO:
1. Identify what any number raised to power 0 should return
2. Reduce power by 1 in each recursive call
3. Combine nb with the result of the recursive call

Test notes:
The tests cover repeated recursion, a power of one, and the power-zero boundary.

Expected output:
16
7
1
*/
EOF

mkdir -p "$PROJECT/ex18"
cat > "$PROJECT/ex18/ft_recursive_countdown.c" <<'EOF'
#include <unistd.h>

void	ft_recursive_countdown(int n)
{
	
}

int	main(void)
{
	ft_recursive_countdown(5);
	write(1, "\n", 1);
	ft_recursive_countdown(1);
	write(1, "\n", 1);
	ft_recursive_countdown(0);
	write(1, "\n", 1);
	return (0);
}

/*
Allowed functions: write

Goal:
Print every digit from n down to 0 using recursion. The tests only use values from 0 to 9.

TODO:
1. Print the current value of n
2. Decide when recursion should stop
3. Recursively continue with n - 1

Test notes:
The tests cover a normal countdown, the smallest countdown above zero, and the base-case boundary.

Expected output:
543210
10
0
*/
EOF

mkdir -p "$PROJECT/ex19"
cat > "$PROJECT/ex19/ft_recursive_strlen.c" <<'EOF'
#include <stdio.h>

int	ft_recursive_strlen(char *str)
{
	
}

int	main(void)
{
	printf("%d\n", ft_recursive_strlen("codam"));
	printf("%d\n", ft_recursive_strlen("a"));
	printf("%d\n", ft_recursive_strlen(""));
	return (0);
}

/*
Allowed functions: none

Goal:
Return the length of a null-terminated string using recursion.

TODO:
1. Examine the current character
2. Identify the end-of-string base case
3. Move to the next character recursively

Test notes:
The tests cover a normal string, a one-character string, and the empty-string boundary.

Expected output:
5
1
0
*/
EOF

mkdir -p "$PROJECT/ex20"
cat > "$PROJECT/ex20/ft_recursive_digit_sum.c" <<'EOF'
#include <stdio.h>

int	ft_recursive_digit_sum(int n)
{
	
}

int	main(void)
{
	printf("%d\n", ft_recursive_digit_sum(5832));
	printf("%d\n", ft_recursive_digit_sum(7));
	printf("%d\n", ft_recursive_digit_sum(0));
	return (0);
}

/*
Allowed functions: none

Goal:
Return the sum of all decimal digits in a non-negative integer using recursion.

TODO:
1. Find the last digit of n
2. Remove the last digit for the recursive call
3. Identify when no digits remain

Test notes:
The tests cover a multi-digit number, a single-digit number, and zero as the boundary.

Expected output:
18
7
0
*/
EOF

mkdir -p "$PROJECT/ex21"
cat > "$PROJECT/ex21/ft_fibonacci.c" <<'EOF'
#include <stdio.h>

int	ft_fibonacci(int index)
{
	
}

int	main(void)
{
	printf("%d\n", ft_fibonacci(6));
	printf("%d\n", ft_fibonacci(1));
	printf("%d\n", ft_fibonacci(0));
	return (0);
}

/*
Allowed functions: none

Goal:
Return the Fibonacci number at the given index using recursion.

TODO:
1. Determine the values at indexes 0 and 1
2. Express a Fibonacci number using the previous two indexes
3. Recursively calculate both previous values

Test notes:
The tests cover a normal recursive Fibonacci calculation and both base-case boundaries.

Expected output:
8
1
0
*/
EOF

mkdir -p "$PROJECT/ex22"
cat > "$PROJECT/ex22/ft_strcpy.c" <<'EOF'
#include <stdio.h>

char	*ft_strcpy(char *dest, char *src)
{
	
}

int	main(void)
{
	char	dest1[20];
	char	dest2[20];
	char	dest3[20];

	ft_strcpy(dest1, "hello");
	ft_strcpy(dest2, "a");
	ft_strcpy(dest3, "");
	printf("%s\n", dest1);
	printf("%s\n", dest2);
	printf("[%s]\n", dest3);
	return (0);
}

/*
Allowed functions: none

Goal:
Copy src into dest, including the terminating null character, and return dest.

TODO:
1. Read src one character at a time
2. Copy each character into the matching position in dest
3. Copy the null terminator and return dest

Test notes:
The tests cover a normal string, a one-character string, and an empty string.

Expected output:
hello
a
[]
*/
EOF

mkdir -p "$PROJECT/ex23"
cat > "$PROJECT/ex23/ft_strcmp.c" <<'EOF'
#include <stdio.h>

int	ft_strcmp(char *s1, char *s2)
{
	
}

int	main(void)
{
	printf("%d\n", ft_strcmp("hello", "hello"));
	printf("%d\n", ft_strcmp("abc", "abd") < 0);
	printf("%d\n", ft_strcmp("abd", "abc") > 0);
	return (0);
}

/*
Allowed functions: none

Goal:
Compare two strings character by character like strcmp.

TODO:
1. Move through both strings while their characters are equal
2. Stop at the first difference or at the end of a string
3. Return the difference between the first unequal unsigned characters

Test notes:
The tests prove equality, a negative comparison, and a positive comparison without depending on the exact magnitude of nonzero results.

Expected output:
0
1
1
*/
EOF

mkdir -p "$PROJECT/ex24"
cat > "$PROJECT/ex24/ft_strupcase.c" <<'EOF'
#include <stdio.h>

char	*ft_strupcase(char *str)
{
	
}

int	main(void)
{
	char	str1[] = "Hello World!";
	char	str2[] = "abc123";
	char	str3[] = "";

	printf("%s\n", ft_strupcase(str1));
	printf("%s\n", ft_strupcase(str2));
	printf("[%s]\n", ft_strupcase(str3));
	return (0);
}

/*
Allowed functions: none

Goal:
Convert every lowercase letter in str to uppercase and return str.

TODO:
1. Move through the string character by character
2. Detect lowercase ASCII letters
3. Convert only lowercase letters to uppercase

Test notes:
The tests cover mixed text with punctuation, letters mixed with digits, and the empty-string boundary.

Expected output:
HELLO WORLD!
ABC123
[]
*/
EOF

mkdir -p "$PROJECT/ex25"
cat > "$PROJECT/ex25/ft_reverse_int_array.c" <<'EOF'
#include <stdio.h>

void	ft_reverse_int_array(int *tab, int size)
{
	
}

int	main(void)
{
	int	tab1[] = {1, 2, 3, 4, 5};
	int	tab2[] = {10, 20};
	int	tab3[] = {42};
	int	i;

	ft_reverse_int_array(tab1, 5);
	i = 0;
	while (i < 5)
	{
		printf("%d", tab1[i]);
		if (i < 4)
			printf(" ");
		i++;
	}
	printf("\n");
	ft_reverse_int_array(tab2, 2);
	printf("%d %d\n", tab2[0], tab2[1]);
	ft_reverse_int_array(tab3, 1);
	printf("%d\n", tab3[0]);
	return (0);
}

/*
Allowed functions: none

Goal:
Reverse the order of the integers in an array.

TODO:
1. Identify matching positions from the beginning and end
2. Swap those two values
3. Continue until the positions meet in the middle

Test notes:
The tests cover an odd-sized array, an even-sized array, and a one-element boundary case.

Expected output:
5 4 3 2 1
20 10
42
*/
EOF

mkdir -p "$PROJECT/ex26"
cat > "$PROJECT/ex26/ft_sort_int_array.c" <<'EOF'
#include <stdio.h>

void	ft_sort_int_array(int *tab, int size)
{
	
}

int	main(void)
{
	int	tab1[] = {5, 2, 4, 1, 3};
	int	tab2[] = {3, -1, 0};
	int	tab3[] = {7};
	int	i;

	ft_sort_int_array(tab1, 5);
	i = 0;
	while (i < 5)
	{
		printf("%d", tab1[i]);
		if (i < 4)
			printf(" ");
		i++;
	}
	printf("\n");
	ft_sort_int_array(tab2, 3);
	printf("%d %d %d\n", tab2[0], tab2[1], tab2[2]);
	ft_sort_int_array(tab3, 1);
	printf("%d\n", tab3[0]);
	return (0);
}

/*
Allowed functions: none

Goal:
Sort an integer array from smallest to largest.

TODO:
1. Compare values in the array
2. Swap values that are in the wrong order
3. Continue until the entire array is sorted

Test notes:
The tests cover an unsorted positive array, negative and zero values, and a one-element boundary case.

Expected output:
1 2 3 4 5
-1 0 3
7
*/
EOF

mkdir -p "$PROJECT/ex27"
cat > "$PROJECT/ex27/ft_iterative_power.c" <<'EOF'
#include <stdio.h>

int	ft_iterative_power(int nb, int power)
{
	
}

int	main(void)
{
	printf("%d\n", ft_iterative_power(3, 4));
	printf("%d\n", ft_iterative_power(-2, 3));
	printf("%d\n", ft_iterative_power(10, 0));
	return (0);
}

/*
Allowed functions: none

Goal:
Return nb raised to power using a loop instead of recursion.

TODO:
1. Create a result with the correct starting value
2. Multiply it by nb repeatedly
3. Handle power zero correctly

Test notes:
The tests cover repeated multiplication, a negative base with an odd power, and the power-zero boundary.

Expected output:
81
-8
1
*/
EOF

mkdir -p "$PROJECT/ex28"
cat > "$PROJECT/ex28/ft_is_prime.c" <<'EOF'
#include <stdio.h>

int	ft_is_prime(int nb)
{
	
}

int	main(void)
{
	printf("%d\n", ft_is_prime(17));
	printf("%d\n", ft_is_prime(18));
	printf("%d\n", ft_is_prime(2));
	return (0);
}

/*
Allowed functions: none

Goal:
Return 1 if nb is prime and 0 otherwise.

TODO:
1. Understand what makes a number prime
2. Test whether another integer divides nb exactly
3. Return the correct result when a divisor is found or all required divisors have been checked

Test notes:
The tests cover a normal prime number, a composite number, and 2 as the smallest prime boundary.

Expected output:
1
0
1
*/
EOF

mkdir -p "$PROJECT/ex29"
cat > "$PROJECT/ex29/ft_find_next_prime.c" <<'EOF'
#include <stdio.h>

int	ft_find_next_prime(int nb)
{
	
}

int	main(void)
{
	printf("%d\n", ft_find_next_prime(14));
	printf("%d\n", ft_find_next_prime(17));
	printf("%d\n", ft_find_next_prime(0));
	return (0);
}

/*
Allowed functions: none

Goal:
Return the smallest prime number greater than or equal to nb.

TODO:
1. Start checking at nb
2. Determine whether the current number is prime
3. Continue upward until a prime number is found

Test notes:
The tests cover moving forward to a prime, receiving an already-prime value, and an input below the smallest prime.

Expected output:
17
17
2
*/
EOF