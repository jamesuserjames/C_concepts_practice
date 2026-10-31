#include <stdio.h>
#include <stdlib.h>
#include <stddef.h>

void ft_zero_bytes(void *ptr, size_t n)
{

}

int	main(void)
{
	unsigned char a[4]={9,8,7,6}; ft_zero_bytes(a,3); printf("%u %u %u %u\n",a[0],a[1],a[2],a[3]);
	return (0);
}

/*
ALLOWED FUNCTIONS: malloc, free (only when needed); printf is for tests only.

GOAL:
Set exactly n bytes to zero.

TODO:
1. Cast void * to unsigned char *.
2. Walk through the n bytes.
3. Assign 0 to each byte.

EXPECTED OUTPUT:
0 0 0 6

TEST NOTES:
Run the program after implementing the function. Check output exactly.

LEARNING CHECK:
Explain what every pointer/index refers to, who owns memory, and any edge cases.
*/
