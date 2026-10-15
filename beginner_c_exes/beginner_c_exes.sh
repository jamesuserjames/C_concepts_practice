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