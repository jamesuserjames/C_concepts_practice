#include <stdio.h>
#include <stdlib.h>
#include <stddef.h>
#include <stdint.h>
#include <limits.h>

int ft_parse_int(const char *str)
{

}

int main(void)
{
	printf("%d\n",ft_parse_int("  -42")); printf("%d\n",ft_parse_int("+17abc")); printf("%d\n",ft_parse_int("xyz"));
	return (0);
}

/*
ALLOWED FUNCTIONS:
malloc, free (only when needed); printf is for tests only.

GOAL:
Implement atoi-like parsing of whitespace, sign and digits.

TODO:
1. Skip ASCII whitespace.
2. Read one optional sign.
3. Accumulate digits until a nondigit.

EXPECTED OUTPUT:
-42
17
0

TEST NOTES:
Inputs do not overflow int; mimic atoi for valid ranges.

LEARNING CHECK:
Explain the pointer/ownership and boundary conditions for this function.
*/
