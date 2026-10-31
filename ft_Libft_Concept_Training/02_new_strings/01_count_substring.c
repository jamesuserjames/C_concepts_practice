#include <stdio.h>
#include <stdlib.h>
#include <stddef.h>

size_t ft_sub_length(const char *s, unsigned int start, size_t len)
{
		
}

int	main(void)
{
	printf("%zu\n",ft_sub_length("hello",2,10)); printf("%zu\n",ft_sub_length("hello",9,2));
	return (0);
}

/*
ALLOWED FUNCTIONS: malloc, free (only when needed); printf is for tests only.

GOAL:
Calculate how many characters can actually be taken from s starting at start.

TODO:
1. Find source length.
2. If start is past the end, return 0.
3. Return the smaller of len and remaining length.

EXPECTED OUTPUT:
3
0

TEST NOTES:
Run the program after implementing the function. Check output exactly.

LEARNING CHECK:
Explain what every pointer/index refers to, who owns memory, and any edge cases.
*/
