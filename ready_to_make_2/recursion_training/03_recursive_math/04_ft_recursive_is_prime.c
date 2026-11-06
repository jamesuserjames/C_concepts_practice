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
