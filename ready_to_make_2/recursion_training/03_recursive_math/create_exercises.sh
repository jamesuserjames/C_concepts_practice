#!/usr/bin/env bash

set -euo pipefail

cd "$(dirname "$0")" || exit 1

cat > 00_ft_recursive_fibonacci.c <<'EOF'
#include <stdio.h>

int	ft_recursive_fibonacci(int index)
{
	
}

/*
GOAL:
Return the Fibonacci number at a non-negative index.

ALLOWED FUNCTIONS:
none

TODO:
1. Return zero for negative index.
2. Use base cases F(0)=0 and F(1)=1.
3. Sum the two preceding recursive values.

EXPECTED OUTPUT:
Test 1: 13
Test 2: 1
Test 3: 0
Test 4: 0
*/

int	main(void)
{
	printf("Test 1: %d\n", ft_recursive_fibonacci(7));
	printf("Test 2: %d\n", ft_recursive_fibonacci(1));
	printf("Test 3: %d\n", ft_recursive_fibonacci(0));
	printf("Test 4: %d\n", ft_recursive_fibonacci(-1));
	return (0);
}

/*
EDGE CASES:
Naive branching is exponential; use small non-negative indices.

LEARNING CHECK:
1. Which mathematical property determines the recursive relation?
2. What input causes the recursion to stop?
3. Which condition prevents invalid input in ft_recursive_fibonacci()?
4. What value or state is carried into the next recursive call?

NOTE:
The function is intentionally empty. Implement it yourself.
Keep implementation functions at or below 25 lines and respect 42 Norm.
*/
EOF

cat > 01_ft_recursive_is_power_of_two.c <<'EOF'
#include <stdio.h>

int	ft_recursive_is_power_of_two(int n)
{
	
}

/*
GOAL:
Return one if positive n is an integer power of two.

ALLOWED FUNCTIONS:
none

TODO:
1. Return one for n == 1.
2. Reject zero, negatives, and odd numbers greater than one.
3. Recurse with n / 2.

EXPECTED OUTPUT:
Test 1: 1
Test 2: 0
Test 3: 1
Test 4: 0
*/

int	main(void)
{
	printf("Test 1: %d\n", ft_recursive_is_power_of_two(8));
	printf("Test 2: %d\n", ft_recursive_is_power_of_two(7));
	printf("Test 3: %d\n", ft_recursive_is_power_of_two(1));
	printf("Test 4: %d\n", ft_recursive_is_power_of_two(0));
	return (0);
}

/*
EDGE CASES:
One is 2^0; zero and negative values are not powers of two.

LEARNING CHECK:
1. Which mathematical property determines the recursive relation?
2. What input causes the recursion to stop?
3. Which condition prevents invalid input in ft_recursive_is_power_of_two()?
4. What value or state is carried into the next recursive call?

NOTE:
The function is intentionally empty. Implement it yourself.
Keep implementation functions at or below 25 lines and respect 42 Norm.
*/
EOF

cat > 02_ft_recursive_gcd.c <<'EOF'
#include <stdio.h>

int	ft_recursive_gcd(int a, int b)
{
	
}

/*
GOAL:
Find the greatest common divisor by the Euclidean algorithm.

ALLOWED FUNCTIONS:
none

TODO:
1. Stop when b becomes zero.
2. Use the remainder a % b.
3. Recurse on b and the remainder.

EXPECTED OUTPUT:
Test 1: 4
Test 2: 1
Test 3: 5
*/

int	main(void)
{
	printf("Test 1: %d\n", ft_recursive_gcd(12, 8));
	printf("Test 2: %d\n", ft_recursive_gcd(7, 3));
	printf("Test 3: %d\n", ft_recursive_gcd(5, 0));
	return (0);
}

/*
EDGE CASES:
Inputs are non-negative; gcd(0,0) is excluded.

LEARNING CHECK:
1. Which mathematical property determines the recursive relation?
2. What input causes the recursion to stop?
3. Which condition prevents invalid input in ft_recursive_gcd()?
4. What value or state is carried into the next recursive call?

NOTE:
The function is intentionally empty. Implement it yourself.
Keep implementation functions at or below 25 lines and respect 42 Norm.
*/
EOF

cat > 03_ft_recursive_lcm.c <<'EOF'
#include <stdio.h>

int	ft_recursive_lcm(int a, int b)
{
	
}

/*
GOAL:
Compute least common multiple using a recursive GCD helper.

ALLOWED FUNCTIONS:
none

TODO:
1. Handle zero inputs with result zero.
2. Compute the greatest common divisor recursively.
3. Combine a, b, and the gcd without overflowing for given tests.

EXPECTED OUTPUT:
Test 1: 12
Test 2: 21
Test 3: 0
*/

int	main(void)
{
	printf("Test 1: %d\n", ft_recursive_lcm(4, 6));
	printf("Test 2: %d\n", ft_recursive_lcm(7, 3));
	printf("Test 3: %d\n", ft_recursive_lcm(0, 5));
	return (0);
}

/*
EDGE CASES:
Inputs are non-negative; write a recursive helper rather than using libraries.

LEARNING CHECK:
1. Which mathematical property determines the recursive relation?
2. What input causes the recursion to stop?
3. Which condition prevents invalid input in ft_recursive_lcm()?
4. What value or state is carried into the next recursive call?

NOTE:
The function is intentionally empty. Implement it yourself.
Keep implementation functions at or below 25 lines and respect 42 Norm.
*/
EOF

cat > 04_ft_recursive_is_prime.c <<'EOF'
#include <stdio.h>

int	ft_recursive_is_prime(int n, int divisor)
{
	
}

/*
GOAL:
Return one if n is prime, testing candidate divisors recursively.

ALLOWED FUNCTIONS:
none

TODO:
1. Reject integers below two.
2. Stop when divisor exceeds n / divisor.
3. Reject exact divisors; otherwise recurse with the next divisor.

EXPECTED OUTPUT:
Test 1: 1
Test 2: 0
Test 3: 1
Test 4: 0
*/

int	main(void)
{
	printf("Test 1: %d\n", ft_recursive_is_prime(17, 2));
	printf("Test 2: %d\n", ft_recursive_is_prime(18, 2));
	printf("Test 3: %d\n", ft_recursive_is_prime(2, 2));
	printf("Test 4: %d\n", ft_recursive_is_prime(1, 2));
	return (0);
}

/*
EDGE CASES:
Initial divisor is 2; avoid testing divisors beyond the square root.

LEARNING CHECK:
1. Which mathematical property determines the recursive relation?
2. What input causes the recursion to stop?
3. Which condition prevents invalid input in ft_recursive_is_prime()?
4. What value or state is carried into the next recursive call?

NOTE:
The function is intentionally empty. Implement it yourself.
Keep implementation functions at or below 25 lines and respect 42 Norm.
*/
EOF

cat > 05_ft_recursive_next_prime.c <<'EOF'
#include <stdio.h>

int	ft_recursive_next_prime(int n)
{
	
}

/*
GOAL:
Return the smallest prime greater than or equal to n.

ALLOWED FUNCTIONS:
none

TODO:
1. Start at two for input below two.
2. Check whether the current candidate is prime.
3. Recurse with the next candidate when it is composite.

EXPECTED OUTPUT:
Test 1: 17
Test 2: 17
Test 3: 2
*/

int	main(void)
{
	printf("Test 1: %d\n", ft_recursive_next_prime(14));
	printf("Test 2: %d\n", ft_recursive_next_prime(17));
	printf("Test 3: %d\n", ft_recursive_next_prime(0));
	return (0);
}

/*
EDGE CASES:
Write a helper to test primality; inputs are small positive integers.

LEARNING CHECK:
1. Which mathematical property determines the recursive relation?
2. What input causes the recursion to stop?
3. Which condition prevents invalid input in ft_recursive_next_prime()?
4. What value or state is carried into the next recursive call?

NOTE:
The function is intentionally empty. Implement it yourself.
Keep implementation functions at or below 25 lines and respect 42 Norm.
*/
EOF

cat > 06_ft_recursive_binary_digits.c <<'EOF'
#include <stdio.h>

int	ft_recursive_binary_digits(int n)
{
	
}

/*
GOAL:
Return a non-negative integer whose decimal digits spell n in binary.

ALLOWED FUNCTIONS:
none

TODO:
1. Return n when n is zero or one.
2. Recursively convert n / 2.
3. Append remainder n % 2 to the decimal-digit result.

EXPECTED OUTPUT:
Test 1: 101
Test 2: 1010
Test 3: 0
*/

int	main(void)
{
	printf("Test 1: %d\n", ft_recursive_binary_digits(5));
	printf("Test 2: %d\n", ft_recursive_binary_digits(10));
	printf("Test 3: %d\n", ft_recursive_binary_digits(0));
	return (0);
}

/*
EDGE CASES:
This is a numeric representation, not printed binary; test values avoid overflow.

LEARNING CHECK:
1. Which mathematical property determines the recursive relation?
2. What input causes the recursion to stop?
3. Which condition prevents invalid input in ft_recursive_binary_digits()?
4. What value or state is carried into the next recursive call?

NOTE:
The function is intentionally empty. Implement it yourself.
Keep implementation functions at or below 25 lines and respect 42 Norm.
*/
EOF

cat > 07_ft_recursive_hex_digit_count.c <<'EOF'
#include <stdio.h>

int	ft_recursive_hex_digit_count(unsigned int n)
{
	
}

/*
GOAL:
Count how many base-16 digits are needed to represent n.

ALLOWED FUNCTIONS:
none

TODO:
1. Return one if n is below sixteen.
2. Divide by sixteen to remove the last digit.
3. Add one for each recursive step.

EXPECTED OUTPUT:
Test 1: 2
Test 2: 4
Test 3: 1
*/

int	main(void)
{
	printf("Test 1: %d\n", ft_recursive_hex_digit_count(255));
	printf("Test 2: %d\n", ft_recursive_hex_digit_count(4096));
	printf("Test 3: %d\n", ft_recursive_hex_digit_count(0));
	return (0);
}

/*
EDGE CASES:
Zero requires one hexadecimal digit; no printing in this exercise.

LEARNING CHECK:
1. Which mathematical property determines the recursive relation?
2. What input causes the recursion to stop?
3. Which condition prevents invalid input in ft_recursive_hex_digit_count()?
4. What value or state is carried into the next recursive call?

NOTE:
The function is intentionally empty. Implement it yourself.
Keep implementation functions at or below 25 lines and respect 42 Norm.
*/
EOF

cat > 08_ft_recursive_sum_of_squares.c <<'EOF'
#include <stdio.h>

int	ft_recursive_sum_of_squares(int n)
{
	
}

/*
GOAL:
Return 1^2 + 2^2 + ... + n^2 for non-negative n.

ALLOWED FUNCTIONS:
none

TODO:
1. Stop at n <= 0.
2. Square the current n.
3. Add the square to a recursive smaller sum.

EXPECTED OUTPUT:
Test 1: 14
Test 2: 1
Test 3: 0
*/

int	main(void)
{
	printf("Test 1: %d\n", ft_recursive_sum_of_squares(3));
	printf("Test 2: %d\n", ft_recursive_sum_of_squares(1));
	printf("Test 3: %d\n", ft_recursive_sum_of_squares(0));
	return (0);
}

/*
EDGE CASES:
Use small n to stay in the int range.

LEARNING CHECK:
1. Which mathematical property determines the recursive relation?
2. What input causes the recursion to stop?
3. Which condition prevents invalid input in ft_recursive_sum_of_squares()?
4. What value or state is carried into the next recursive call?

NOTE:
The function is intentionally empty. Implement it yourself.
Keep implementation functions at or below 25 lines and respect 42 Norm.
*/
EOF

cat > 09_ft_recursive_triangular_number.c <<'EOF'
#include <stdio.h>

int	ft_recursive_triangular_number(int n)
{
	
}

/*
GOAL:
Compute the nth triangular number using recursive addition.

ALLOWED FUNCTIONS:
none

TODO:
1. Return zero at n <= 0.
2. Add n to the previous triangular number.
3. Make the recursive argument smaller.

EXPECTED OUTPUT:
Test 1: 21
Test 2: 1
Test 3: 0
*/

int	main(void)
{
	printf("Test 1: %d\n", ft_recursive_triangular_number(6));
	printf("Test 2: %d\n", ft_recursive_triangular_number(1));
	printf("Test 3: %d\n", ft_recursive_triangular_number(0));
	return (0);
}

/*
EDGE CASES:
Compare with countdown_sum: the mathematics match, but context differs.

LEARNING CHECK:
1. Which mathematical property determines the recursive relation?
2. What input causes the recursion to stop?
3. Which condition prevents invalid input in ft_recursive_triangular_number()?
4. What value or state is carried into the next recursive call?

NOTE:
The function is intentionally empty. Implement it yourself.
Keep implementation functions at or below 25 lines and respect 42 Norm.
*/
EOF

cat > 10_ft_recursive_binomial.c <<'EOF'
#include <stdio.h>

int	ft_recursive_binomial(int n, int k)
{
	
}

/*
GOAL:
Compute the binomial coefficient C(n,k) with Pascal recursion.

ALLOWED FUNCTIONS:
none

TODO:
1. Return zero when k < 0 or k > n.
2. Return one for k == 0 or k == n.
3. Add both branches from the previous row.

EXPECTED OUTPUT:
Test 1: 10
Test 2: 1
Test 3: 0
*/

int	main(void)
{
	printf("Test 1: %d\n", ft_recursive_binomial(5, 2));
	printf("Test 2: %d\n", ft_recursive_binomial(6, 0));
	printf("Test 3: %d\n", ft_recursive_binomial(4, 5));
	return (0);
}

/*
EDGE CASES:
Use n >= 0, small inputs, and well-defined out-of-range k.

LEARNING CHECK:
1. Which mathematical property determines the recursive relation?
2. What input causes the recursion to stop?
3. Which condition prevents invalid input in ft_recursive_binomial()?
4. What value or state is carried into the next recursive call?

NOTE:
The function is intentionally empty. Implement it yourself.
Keep implementation functions at or below 25 lines and respect 42 Norm.
*/
EOF

cat > 11_ft_recursive_collatz_steps.c <<'EOF'
#include <stdio.h>

int	ft_recursive_collatz_steps(unsigned int n)
{
	
}

/*
GOAL:
Count steps needed for a positive Collatz sequence to reach one.

ALLOWED FUNCTIONS:
none

TODO:
1. Return zero when n equals one.
2. For even n, recurse on n / 2.
3. For odd n, recurse on 3*n + 1, counting each step.

EXPECTED OUTPUT:
Test 1: 8
Test 2: 1
Test 3: 0
*/

int	main(void)
{
	printf("Test 1: %d\n", ft_recursive_collatz_steps(6));
	printf("Test 2: %d\n", ft_recursive_collatz_steps(2));
	printf("Test 3: %d\n", ft_recursive_collatz_steps(1));
	return (0);
}

/*
EDGE CASES:
Input must be positive; test numbers avoid overflow in 3*n+1.

LEARNING CHECK:
1. Which mathematical property determines the recursive relation?
2. What input causes the recursion to stop?
3. Which condition prevents invalid input in ft_recursive_collatz_steps()?
4. What value or state is carried into the next recursive call?

NOTE:
The function is intentionally empty. Implement it yourself.
Keep implementation functions at or below 25 lines and respect 42 Norm.
*/
EOF

echo "Reset 12 exercises in 03_recursive_math."
