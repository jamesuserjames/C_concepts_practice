#!/usr/bin/env bash

set -euo pipefail

cd "$(dirname "$0")" || exit 1

cat > 00_ft_recursive_countdown_sum.c <<'EOF'
#include <stdio.h>

int	ft_recursive_countdown_sum(int n)
{
	
}

/*
GOAL:
Return the sum n + (n - 1) + ... + 0 for non-negative n.

ALLOWED FUNCTIONS:
none

TODO:
1. Stop when n reaches zero.
2. Add the current value to the result of a smaller problem.
3. Make each recursive call approach the base case.

EXPECTED OUTPUT:
Test 1: 15
Test 2: 1
Test 3: 0
*/

int	main(void)
{
	printf("Test 1: %d\n", ft_recursive_countdown_sum(5));
	printf("Test 2: %d\n", ft_recursive_countdown_sum(1));
	printf("Test 3: %d\n", ft_recursive_countdown_sum(0));
	return (0);
}

/*
EDGE CASES:
Accept non-negative n; do not recurse below zero.

LEARNING CHECK:
1. What is the base case, and what does it return?
2. How does the result depend on the order of recursive calls?
3. Which condition prevents invalid input in ft_recursive_countdown_sum()?
4. What value or state is carried into the next recursive call?

NOTE:
The function is intentionally empty. Implement it yourself.
Keep implementation functions at or below 25 lines and respect 42 Norm.
*/
EOF

cat > 01_ft_recursive_count_up_sum.c <<'EOF'
#include <stdio.h>

int	ft_recursive_count_up_sum(int current, int max)
{
	
}

/*
GOAL:
Sum the inclusive range from current to max; return zero for an empty range.

ALLOWED FUNCTIONS:
none

TODO:
1. Stop with zero if current exceeds max.
2. Add current to the sum of the remaining range.
3. Increment current during recursion.

EXPECTED OUTPUT:
Test 1: 15
Test 2: 3
Test 3: 0
*/

int	main(void)
{
	printf("Test 1: %d\n", ft_recursive_count_up_sum(1, 5));
	printf("Test 2: %d\n", ft_recursive_count_up_sum(3, 3));
	printf("Test 3: %d\n", ft_recursive_count_up_sum(5, 3));
	return (0);
}

/*
EDGE CASES:
An inverted range returns zero; avoid ranges whose sum overflows int.

LEARNING CHECK:
1. What is the base case, and what does it return?
2. How does the result depend on the order of recursive calls?
3. Which condition prevents invalid input in ft_recursive_count_up_sum()?
4. What value or state is carried into the next recursive call?

NOTE:
The function is intentionally empty. Implement it yourself.
Keep implementation functions at or below 25 lines and respect 42 Norm.
*/
EOF

cat > 02_ft_recursive_countdown_print.c <<'EOF'
#include <unistd.h>

void	ft_recursive_countdown_print(int n)
{
	
}

/*
GOAL:
Print decimal digits from n down to 0 using recursive calls.

ALLOWED FUNCTIONS:
write

TODO:
1. Write the current digit.
2. Stop after writing zero.
3. Continue recursively with n - 1.

EXPECTED OUTPUT:
Test 1: 543210
Test 2: 10
Test 3: 0
*/

int	main(void)
{
	write(1, "Test 1: ", 8);
	ft_recursive_countdown_print(5);
	write(1, "\nTest 2: ", 9);
	ft_recursive_countdown_print(1);
	write(1, "\nTest 3: ", 9);
	ft_recursive_countdown_print(0);
	write(1, "\n", 1);
	return (0);
}

/*
EDGE CASES:
Inputs are restricted to digits 0 through 9.

LEARNING CHECK:
1. What is the base case, and what does it return?
2. How does the result depend on the order of recursive calls?
3. Which condition prevents invalid input in ft_recursive_countdown_print()?
4. What value or state is carried into the next recursive call?

NOTE:
The function is intentionally empty. Implement it yourself.
Keep implementation functions at or below 25 lines and respect 42 Norm.
*/
EOF

cat > 03_ft_recursive_count_up_print.c <<'EOF'
#include <unistd.h>

void	ft_recursive_count_up_print(int current, int max)
{
	
}

/*
GOAL:
Print decimal digits from current through max, in ascending order.

ALLOWED FUNCTIONS:
write

TODO:
1. Stop when current exceeds max.
2. Print the current digit before recursion.
3. Recurse with current + 1.

EXPECTED OUTPUT:
Test 1: 2345
Test 2: 3
Test 3: []
*/

int	main(void)
{
	write(1, "Test 1: ", 8);
	ft_recursive_count_up_print(2, 5);
	write(1, "\nTest 2: ", 9);
	ft_recursive_count_up_print(3, 3);
	write(1, "\nTest 3: [", 10);
	ft_recursive_count_up_print(5, 3);
	write(1, "]\n", 2);
	return (0);
}

/*
EDGE CASES:
Inputs are single decimal digits (0-9); an empty range prints nothing.

LEARNING CHECK:
1. What is the base case, and what does it return?
2. How does the result depend on the order of recursive calls?
3. Which condition prevents invalid input in ft_recursive_count_up_print()?
4. What value or state is carried into the next recursive call?

NOTE:
The function is intentionally empty. Implement it yourself.
Keep implementation functions at or below 25 lines and respect 42 Norm.
*/
EOF

cat > 04_ft_recursive_sum_even.c <<'EOF'
#include <stdio.h>

int	ft_recursive_sum_even(int n)
{
	
}

/*
GOAL:
Sum all even non-negative integers from zero through n.

ALLOWED FUNCTIONS:
none

TODO:
1. Stop when n reaches zero or less.
2. Decide whether n contributes to the sum.
3. Recurse with n - 1.

EXPECTED OUTPUT:
Test 1: 12
Test 2: 6
Test 3: 0
*/

int	main(void)
{
	printf("Test 1: %d\n", ft_recursive_sum_even(6));
	printf("Test 2: %d\n", ft_recursive_sum_even(5));
	printf("Test 3: %d\n", ft_recursive_sum_even(0));
	return (0);
}

/*
EDGE CASES:
Negative n returns zero; large sums may overflow int.

LEARNING CHECK:
1. What is the base case, and what does it return?
2. How does the result depend on the order of recursive calls?
3. Which condition prevents invalid input in ft_recursive_sum_even()?
4. What value or state is carried into the next recursive call?

NOTE:
The function is intentionally empty. Implement it yourself.
Keep implementation functions at or below 25 lines and respect 42 Norm.
*/
EOF

cat > 05_ft_recursive_sum_odd.c <<'EOF'
#include <stdio.h>

int	ft_recursive_sum_odd(int n)
{
	
}

/*
GOAL:
Sum all odd positive integers from one through n.

ALLOWED FUNCTIONS:
none

TODO:
1. Return zero when n is below one.
2. Include n only when it is odd.
3. Recurse with n - 1.

EXPECTED OUTPUT:
Test 1: 16
Test 2: 9
Test 3: 0
*/

int	main(void)
{
	printf("Test 1: %d\n", ft_recursive_sum_odd(7));
	printf("Test 2: %d\n", ft_recursive_sum_odd(6));
	printf("Test 3: %d\n", ft_recursive_sum_odd(0));
	return (0);
}

/*
EDGE CASES:
Zero or negative input has no positive odd values.

LEARNING CHECK:
1. What is the base case, and what does it return?
2. How does the result depend on the order of recursive calls?
3. Which condition prevents invalid input in ft_recursive_sum_odd()?
4. What value or state is carried into the next recursive call?

NOTE:
The function is intentionally empty. Implement it yourself.
Keep implementation functions at or below 25 lines and respect 42 Norm.
*/
EOF

cat > 06_ft_recursive_factorial.c <<'EOF'
#include <stdio.h>

int	ft_recursive_factorial(int nb)
{
	
}

/*
GOAL:
Compute nb! using recursion; return zero for negative inputs.

ALLOWED FUNCTIONS:
none

TODO:
1. Reject negative input with zero.
2. Return one for factorial of zero or one.
3. Multiply nb by factorial of nb - 1.

EXPECTED OUTPUT:
Test 1: 120
Test 2: 1
Test 3: 0
*/

int	main(void)
{
	printf("Test 1: %d\n", ft_recursive_factorial(5));
	printf("Test 2: %d\n", ft_recursive_factorial(0));
	printf("Test 3: %d\n", ft_recursive_factorial(-2));
	return (0);
}

/*
EDGE CASES:
Tests stay within 0..12 to avoid signed int overflow.

LEARNING CHECK:
1. What is the base case, and what does it return?
2. How does the result depend on the order of recursive calls?
3. Which condition prevents invalid input in ft_recursive_factorial()?
4. What value or state is carried into the next recursive call?

NOTE:
The function is intentionally empty. Implement it yourself.
Keep implementation functions at or below 25 lines and respect 42 Norm.
*/
EOF

cat > 07_ft_recursive_power.c <<'EOF'
#include <stdio.h>

int	ft_recursive_power(int nb, int power)
{
	
}

/*
GOAL:
Calculate nb raised to a non-negative integer power recursively.

ALLOWED FUNCTIONS:
none

TODO:
1. Return zero for negative exponents.
2. Return one when power is zero.
3. Multiply by nb and recurse with power - 1.

EXPECTED OUTPUT:
Test 1: 16
Test 2: -8
Test 3: 1
Test 4: 0
*/

int	main(void)
{
	printf("Test 1: %d\n", ft_recursive_power(2, 4));
	printf("Test 2: %d\n", ft_recursive_power(-2, 3));
	printf("Test 3: %d\n", ft_recursive_power(5, 0));
	printf("Test 4: %d\n", ft_recursive_power(2, -1));
	return (0);
}

/*
EDGE CASES:
Zero exponent returns one, including 0^0 by this exercise contract.

LEARNING CHECK:
1. What is the base case, and what does it return?
2. How does the result depend on the order of recursive calls?
3. Which condition prevents invalid input in ft_recursive_power()?
4. What value or state is carried into the next recursive call?

NOTE:
The function is intentionally empty. Implement it yourself.
Keep implementation functions at or below 25 lines and respect 42 Norm.
*/
EOF

cat > 08_ft_recursive_multiply.c <<'EOF'
#include <stdio.h>

int	ft_recursive_multiply(int a, int b)
{
	
}

/*
GOAL:
Multiply two non-negative integers using recursive addition.

ALLOWED FUNCTIONS:
none

TODO:
1. Stop when b equals zero.
2. Add one copy of a.
3. Recurse using b - 1 rather than the multiplication operator.

EXPECTED OUTPUT:
Test 1: 12
Test 2: 7
Test 3: 0
*/

int	main(void)
{
	printf("Test 1: %d\n", ft_recursive_multiply(4, 3));
	printf("Test 2: %d\n", ft_recursive_multiply(7, 1));
	printf("Test 3: %d\n", ft_recursive_multiply(5, 0));
	return (0);
}

/*
EDGE CASES:
The contract uses non-negative inputs only; avoid overflow.

LEARNING CHECK:
1. What is the base case, and what does it return?
2. How does the result depend on the order of recursive calls?
3. Which condition prevents invalid input in ft_recursive_multiply()?
4. What value or state is carried into the next recursive call?

NOTE:
The function is intentionally empty. Implement it yourself.
Keep implementation functions at or below 25 lines and respect 42 Norm.
*/
EOF

cat > 09_ft_recursive_count_digits.c <<'EOF'
#include <stdio.h>

int	ft_recursive_count_digits(int n)
{
	
}

/*
GOAL:
Count decimal digits in a non-negative integer, counting zero as one digit.

ALLOWED FUNCTIONS:
none

TODO:
1. Return one if n is smaller than ten.
2. Remove one digit with division by ten.
3. Add one per recursive level.

EXPECTED OUTPUT:
Test 1: 5
Test 2: 1
Test 3: 1
*/

int	main(void)
{
	printf("Test 1: %d\n", ft_recursive_count_digits(12345));
	printf("Test 2: %d\n", ft_recursive_count_digits(7));
	printf("Test 3: %d\n", ft_recursive_count_digits(0));
	return (0);
}

/*
EDGE CASES:
Inputs are non-negative; zero has one displayed digit.

LEARNING CHECK:
1. What is the base case, and what does it return?
2. How does the result depend on the order of recursive calls?
3. Which condition prevents invalid input in ft_recursive_count_digits()?
4. What value or state is carried into the next recursive call?

NOTE:
The function is intentionally empty. Implement it yourself.
Keep implementation functions at or below 25 lines and respect 42 Norm.
*/
EOF

cat > 10_ft_recursive_digit_sum.c <<'EOF'
#include <stdio.h>

int	ft_recursive_digit_sum(int n)
{
	
}

/*
GOAL:
Sum the decimal digits of a non-negative integer.

ALLOWED FUNCTIONS:
none

TODO:
1. Use n % 10 to obtain the last digit.
2. Discard that digit using n / 10.
3. Stop at zero.

EXPECTED OUTPUT:
Test 1: 18
Test 2: 7
Test 3: 0
*/

int	main(void)
{
	printf("Test 1: %d\n", ft_recursive_digit_sum(5832));
	printf("Test 2: %d\n", ft_recursive_digit_sum(7));
	printf("Test 3: %d\n", ft_recursive_digit_sum(0));
	return (0);
}

/*
EDGE CASES:
Only non-negative values; leading zeroes are not represented in integers.

LEARNING CHECK:
1. What is the base case, and what does it return?
2. How does the result depend on the order of recursive calls?
3. Which condition prevents invalid input in ft_recursive_digit_sum()?
4. What value or state is carried into the next recursive call?

NOTE:
The function is intentionally empty. Implement it yourself.
Keep implementation functions at or below 25 lines and respect 42 Norm.
*/
EOF

cat > 11_ft_recursive_reverse_number.c <<'EOF'
#include <stdio.h>

int	ft_recursive_reverse_number(int n, int result)
{
	
}

/*
GOAL:
Reverse decimal digits by carrying the partially constructed result.

ALLOWED FUNCTIONS:
none

TODO:
1. Stop when n becomes zero.
2. Append the last digit of n to result.
3. Recurse with the remaining digits.

EXPECTED OUTPUT:
Test 1: 4321
Test 2: 21
Test 3: 0
*/

int	main(void)
{
	printf("Test 1: %d\n", ft_recursive_reverse_number(1234, 0));
	printf("Test 2: %d\n", ft_recursive_reverse_number(120, 0));
	printf("Test 3: %d\n", ft_recursive_reverse_number(0, 0));
	return (0);
}

/*
EDGE CASES:
Inputs are non-negative and small enough not to overflow the result.

LEARNING CHECK:
1. What is the base case, and what does it return?
2. How does the result depend on the order of recursive calls?
3. Which condition prevents invalid input in ft_recursive_reverse_number()?
4. What value or state is carried into the next recursive call?

NOTE:
The function is intentionally empty. Implement it yourself.
Keep implementation functions at or below 25 lines and respect 42 Norm.
*/
EOF

echo "Reset 12 exercises in 00_recursion_basics."
