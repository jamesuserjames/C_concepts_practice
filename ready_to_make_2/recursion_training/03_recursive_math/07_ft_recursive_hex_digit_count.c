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
