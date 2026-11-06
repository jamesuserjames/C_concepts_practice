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
