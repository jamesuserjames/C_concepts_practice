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
