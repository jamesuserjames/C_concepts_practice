#include <unistd.h>

void	ft_recursive_count_up_print(int current, int max)
{
	
}

/*
GOAL:
Print decimal digits from current through max, in ascending order.

ALLOWED FUNCTIONS:
write

TODO:
1. Stop when current exceeds max.
2. Print the current digit before recursion.
3. Recurse with current + 1.

EXPECTED OUTPUT:
Test 1: 2345
Test 2: 3
Test 3: []
*/

int	main(void)
{
	write(1, "Test 1: ", 8);
	ft_recursive_count_up_print(2, 5);
	write(1, "\nTest 2: ", 9);
	ft_recursive_count_up_print(3, 3);
	write(1, "\nTest 3: [", 10);
	ft_recursive_count_up_print(5, 3);
	write(1, "]\n", 2);
	return (0);
}

/*
EDGE CASES:
Inputs are single decimal digits (0-9); an empty range prints nothing.

LEARNING CHECK:
1. What is the base case, and what does it return?
2. How does the result depend on the order of recursive calls?
3. Which condition prevents invalid input in ft_recursive_count_up_print()?
4. What value or state is carried into the next recursive call?

NOTE:
The function is intentionally empty. Implement it yourself.
Keep implementation functions at or below 25 lines and respect 42 Norm.
*/
