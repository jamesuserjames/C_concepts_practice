#include <unistd.h>

void	ft_recursive_print_hex(unsigned int n)
{
	
}

/*
GOAL:
Print an unsigned integer in lowercase hexadecimal recursively.

ALLOWED FUNCTIONS:
write

TODO:
1. Recurse on n / 16 when n >= 16.
2. Map the last digit through 0123456789abcdef.
3. Write the chosen character and handle zero.

EXPECTED OUTPUT:
Test 1: ff
Test 2: 1000
Test 3: 0
*/

int	main(void)
{
	write(1, "Test 1: ", 8);
	ft_recursive_print_hex(255);
	write(1, "\nTest 2: ", 9);
	ft_recursive_print_hex(4096);
	write(1, "\nTest 3: ", 9);
	ft_recursive_print_hex(0);
	write(1, "\n", 1);
	return (0);
}

/*
EDGE CASES:
Use lowercase letters a through f; only write is permitted.

LEARNING CHECK:
1. How does the recursive decomposition differ from a simple loop?
2. Where does the algorithm branch or combine smaller results?
3. Which condition prevents invalid input in ft_recursive_print_hex()?
4. What value or state is carried into the next recursive call?

NOTE:
The function is intentionally empty. Implement it yourself.
Keep implementation functions at or below 25 lines and respect 42 Norm.
*/
