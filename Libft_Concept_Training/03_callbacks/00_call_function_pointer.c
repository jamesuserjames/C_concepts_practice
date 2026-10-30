#include <stdio.h>
#include <stdlib.h>
#include <stddef.h>

static int test_square(int n)
{
	return (n*n);
}

int ft_call_operation(int x, int (*operation)(int))
{

}

int	main(void)
{
	printf("%d\n",ft_call_operation(4,test_square));
	return (0);
}

/*
ALLOWED FUNCTIONS: malloc, free (only when needed); printf is for tests only.

GOAL:
Understand a callback as a function supplied as an argument.

TODO:
1. Receive a function pointer.
2. Call it with x.
3. Return its result.

EXPECTED OUTPUT:
16

TEST NOTES:
Run the program after implementing the function. Check output exactly.

LEARNING CHECK:
Explain what every pointer/index refers to, who owns memory, and any edge cases.
*/
