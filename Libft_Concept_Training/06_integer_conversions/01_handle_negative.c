#include <stdio.h>
#include <stdlib.h>
#include <stddef.h>
#include <stdint.h>
#include <limits.h>

unsigned int ft_unsigned_magnitude(int n)
{

}

int main(void)
{
	printf("%u\n",ft_unsigned_magnitude(-42)); printf("%u\n",ft_unsigned_magnitude(0)); printf("%u\n",ft_unsigned_magnitude(INT_MIN));
	return (0);
}

/*
ALLOWED FUNCTIONS:
malloc, free (only when needed); printf is for tests only.

GOAL:
Get the magnitude of an int without overflowing on INT_MIN.

TODO:
1. Convert through a wider signed type or use safe unsigned arithmetic.
2. Return the positive magnitude as unsigned int.

EXPECTED OUTPUT:
42
0
2147483648

TEST NOTES:
Assumes 32-bit int for the displayed INT_MIN value; verify limits on your system.

LEARNING CHECK:
Explain the pointer/ownership and boundary conditions for this function.
*/
