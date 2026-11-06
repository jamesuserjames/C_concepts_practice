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
