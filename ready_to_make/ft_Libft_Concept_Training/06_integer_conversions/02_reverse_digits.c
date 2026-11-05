#include <stdio.h>
#include <stdlib.h>
#include <stddef.h>
#include <stdint.h>
#include <limits.h>

unsigned int ft_reverse_digits(unsigned int n)
{

}

int main(void)
{
	printf("%u\n",ft_reverse_digits(1234)); printf("%u\n",ft_reverse_digits(120));
	return (0);
}

/*
ALLOWED FUNCTIONS:
malloc, free (only when needed); printf is for tests only.

GOAL:
Reverse decimal digits numerically.

TODO:
1. Extract the last digit using modulo ten.
2. Append it to the result.
3. Remove the last digit from n.

EXPECTED OUTPUT:
4321
21

TEST NOTES:
Input values are chosen so the reversed result fits unsigned int.

LEARNING CHECK:
Explain the pointer/ownership and boundary conditions for this function.
*/
