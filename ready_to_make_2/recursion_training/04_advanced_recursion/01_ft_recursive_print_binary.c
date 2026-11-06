#include <unistd.h>

void	ft_recursive_print_binary(unsigned int n)
{
	
}

/*
GOAL:
Print an unsigned integer in binary using write and recursion.

ALLOWED FUNCTIONS:
write

TODO:
1. Recurse on n / 2 when n >= 2.
2. Select ASCII 0 or 1 using n % 2.
3. Write the final bit and handle zero.

EXPECTED OUTPUT:
Test 1: 101
Test 2: 1010
Test 3: 0
*/

int	main(void)
{
	write(1, "Test 1: ", 8);
	ft_recursive_print_binary(5);
	write(1, "\nTest 2: ", 9);
	ft_recursive_print_binary(10);
	write(1, "\nTest 3: ", 9);
	ft_recursive_print_binary(0);
	write(1, "\n", 1);
	return (0);
}

/*
EDGE CASES:
Unlike binary_digits, this exercise writes output directly and handles large unsigned values.

LEARNING CHECK:
1. How does the recursive decomposition differ from a simple loop?
2. Where does the algorithm branch or combine smaller results?
3. Which condition prevents invalid input in ft_recursive_print_binary()?
4. What value or state is carried into the next recursive call?

NOTE:
The function is intentionally empty. Implement it yourself.
Keep implementation functions at or below 25 lines and respect 42 Norm.
*/
