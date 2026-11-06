#include <stdio.h>

int	ft_recursive_fibonacci(int index)
{
	
}

/*
GOAL:
Return the Fibonacci number at a non-negative index.

ALLOWED FUNCTIONS:
none

TODO:
1. Return zero for negative index.
2. Use base cases F(0)=0 and F(1)=1.
3. Sum the two preceding recursive values.

EXPECTED OUTPUT:
Test 1: 13
Test 2: 1
Test 3: 0
Test 4: 0
*/

int	main(void)
{
	printf("Test 1: %d\n", ft_recursive_fibonacci(7));
	printf("Test 2: %d\n", ft_recursive_fibonacci(1));
	printf("Test 3: %d\n", ft_recursive_fibonacci(0));
	printf("Test 4: %d\n", ft_recursive_fibonacci(-1));
	return (0);
}

/*
EDGE CASES:
Naive branching is exponential; use small non-negative indices.

LEARNING CHECK:
1. Which mathematical property determines the recursive relation?
2. What input causes the recursion to stop?
3. Which condition prevents invalid input in ft_recursive_fibonacci()?
4. What value or state is carried into the next recursive call?

NOTE:
The function is intentionally empty. Implement it yourself.
Keep implementation functions at or below 25 lines and respect 42 Norm.
*/
