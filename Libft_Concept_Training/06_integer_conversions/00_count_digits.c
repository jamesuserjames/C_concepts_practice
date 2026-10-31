#include <stdio.h>
#include <stdlib.h>
#include <stddef.h>
#include <stdint.h>
#include <limits.h>

size_t ft_count_digits(unsigned int n)
{

}

int main(void)
{
	printf("%zu\n",ft_count_digits(0)); printf("%zu\n",ft_count_digits(12345));
	return (0);
}

/*
ALLOWED FUNCTIONS:
malloc, free (only when needed); printf is for tests only.

GOAL:
Count decimal digits, including one digit for zero.

TODO:
1. Start with a count of one.
2. Divide n by ten until it is below ten.

EXPECTED OUTPUT:
1
5

TEST NOTES:
Use unsigned integers for this exercise.

LEARNING CHECK:
Explain the pointer/ownership and boundary conditions for this function.
*/
