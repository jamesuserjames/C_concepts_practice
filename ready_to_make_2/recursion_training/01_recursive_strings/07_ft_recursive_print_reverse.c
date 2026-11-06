#include <unistd.h>

void	ft_recursive_print_reverse(const char *str)
{
	
}

/*
GOAL:
Print a string in reverse order during recursion unwinding.

ALLOWED FUNCTIONS:
write

TODO:
1. Recurse to the end before writing.
2. Stop at the string terminator.
3. Write characters as calls return.

EXPECTED OUTPUT:
Test 1: [olleh]
Test 2: []
Test 3: [24]
*/

int	main(void)
{
	write(1, "Test 1: [", 9);
	ft_recursive_print_reverse("hello");
	write(1, "]\nTest 2: [", 11);
	ft_recursive_print_reverse("");
	write(1, "]\nTest 3: [", 11);
	ft_recursive_print_reverse("42");
	write(1, "]\n", 2);
	return (0);
}

/*
EDGE CASES:
Compare printing before and after the recursive call.

LEARNING CHECK:
1. When does recursion stop at the NUL terminator?
2. Why can pointer arithmetic replace an explicit loop here?
3. Which condition prevents invalid input in ft_recursive_print_reverse()?
4. What value or state is carried into the next recursive call?

NOTE:
The function is intentionally empty. Implement it yourself.
Keep implementation functions at or below 25 lines and respect 42 Norm.
*/
