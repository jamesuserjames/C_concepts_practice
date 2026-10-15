#include <stdio.h>

int	ft_recursive_strcmp(char *s1, char *s2)
{
	
}

int	main(void)
{
	printf("%d\n", ft_recursive_strcmp("abc", "abc"));
	printf("%d\n", ft_recursive_strcmp("abc", "abd"));
	printf("%d\n", ft_recursive_strcmp("abd", "abc"));
}

/*
Allowed functions: none

Goal:
Compare two strings recursively

TODO:
1. Return difference when current characters differ
2. Return 0 when both strings end
3. Recurse with s1 + 1 and s2 + 1

Test notes:
Tests equal strings, smaller difference, and larger difference

Expected output:
0
-1
1
*/
