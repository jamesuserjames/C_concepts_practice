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
