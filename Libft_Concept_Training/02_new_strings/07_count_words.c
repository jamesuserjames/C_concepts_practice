#include <stdio.h>
#include <stdlib.h>
#include <stddef.h>

size_t ft_count_words(const char *s, char sep)
{
	
}

int	main(void)
{
	printf("%zu %zu %zu\n",ft_count_words("a,,bb,c",','),ft_count_words(",,,",','),ft_count_words("hello",','));
	return (0);
}

/*
ALLOWED FUNCTIONS: malloc, free (only when needed); printf is for tests only.

GOAL:
Count nonempty words separated by sep.

TODO:
1. Skip separators.
2. Count the beginning of each word.
3. Skip word characters.

EXPECTED OUTPUT:
3 0 1

TEST NOTES:
Run the program after implementing the function. Check output exactly.

LEARNING CHECK:
Explain what every pointer/index refers to, who owns memory, and any edge cases.
*/
