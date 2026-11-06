#include <unistd.h>

void	ft_recursive_print_digits(int n)
{
	
}

/*
GOAL:
Print the non-negative decimal representation with recursive decomposition.

ALLOWED FUNCTIONS:
write

TODO:
1. Print higher digits first using n / 10.
2. Convert the final digit to a character.
3. Write that digit; print zero correctly.

EXPECTED OUTPUT:
Test 1: 123
Test 2: 7
Test 3: 0
*/

int	main(void)
{
	write(1, "Test 1: ", 8);
	ft_recursive_print_digits(123);
	write(1, "\nTest 2: ", 9);
	ft_recursive_print_digits(7);
	write(1, "\nTest 3: ", 9);
	ft_recursive_print_digits(0);
	write(1, "\n", 1);
	return (0);
}

/*
EDGE CASES:
Accept only non-negative integers; do not use printf in the solution.

LEARNING CHECK:
1. How does the recursive decomposition differ from a simple loop?
2. Where does the algorithm branch or combine smaller results?
3. Which condition prevents invalid input in ft_recursive_print_digits()?
4. What value or state is carried into the next recursive call?

NOTE:
The function is intentionally empty. Implement it yourself.
Keep implementation functions at or below 25 lines and respect 42 Norm.
*/
