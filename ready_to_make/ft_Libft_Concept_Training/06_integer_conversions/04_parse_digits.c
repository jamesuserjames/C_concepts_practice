#include <stdio.h>
#include <stdlib.h>
#include <stddef.h>
#include <stdint.h>
#include <limits.h>

unsigned int ft_parse_digits(const char *digits)
{

}

int main(void)
{
	printf("%u\n",ft_parse_digits("1234")); printf("%u\n",ft_parse_digits("007"));
	return (0);
}

/*
ALLOWED FUNCTIONS:
malloc, free (only when needed); printf is for tests only.

GOAL:
Parse a nonempty sequence of decimal digits.

TODO:
1. Start with value zero.
2. Multiply the accumulated value by ten.
3. Add the next digit value.

EXPECTED OUTPUT:
1234
7

TEST NOTES:
Input is guaranteed to contain digits only and fit unsigned int.

LEARNING CHECK:
Explain the pointer/ownership and boundary conditions for this function.
*/
