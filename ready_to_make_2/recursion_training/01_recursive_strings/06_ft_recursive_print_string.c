#include <unistd.h>

void	ft_recursive_print_string(const char *str)
{
	
}

/*
GOAL:
Print a string in its original order using write and recursion.

ALLOWED FUNCTIONS:
write

TODO:
1. Stop at the NUL terminator.
2. Write the current character.
3. Recurse on the rest of the string.

EXPECTED OUTPUT:
Test 1: [hello]
Test 2: []
Test 3: [42]
*/

int	main(void)
{
	write(1, "Test 1: [", 9);
	ft_recursive_print_string("hello");
	write(1, "]\nTest 2: [", 11);
	ft_recursive_print_string("");
	write(1, "]\nTest 3: [", 11);
	ft_recursive_print_string("42");
	write(1, "]\n", 2);
	return (0);
}

/*
EDGE CASES:
Empty input prints no characters; test delimiters are printed by main.

LEARNING CHECK:
1. When does recursion stop at the NUL terminator?
2. Why can pointer arithmetic replace an explicit loop here?
3. Which condition prevents invalid input in ft_recursive_print_string()?
4. What value or state is carried into the next recursive call?

NOTE:
The function is intentionally empty. Implement it yourself.
Keep implementation functions at or below 25 lines and respect 42 Norm.
*/
