#include <stdio.h>

int	ft_recursive_find_index(char *str, char c, int index)
{
	
}

int	main(void)
{
	printf("%d\n", ft_recursive_find_index("hello", 'l', 0));
	printf("%d\n", ft_recursive_find_index("hello", 'z', 0));
	printf("%d\n", ft_recursive_find_index("", 'a', 0));
}

/*
Allowed functions: none

Goal:
Return the first index of c in str recursively

TODO:
1. Return -1 at the null terminator
2. Return index if current character equals c
3. Recurse with str + 1 and index + 1

Test notes:
Tests found character, missing character, and empty string

Expected output:
2
-1
-1
*/
