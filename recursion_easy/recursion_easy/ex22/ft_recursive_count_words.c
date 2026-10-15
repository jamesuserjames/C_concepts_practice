#include <stdio.h>

int	ft_recursive_count_words(char *str, int in_word)
{
	
}

int	main(void)
{
	printf("%d\n", ft_recursive_count_words("hello world 42", 0));
	printf("%d\n", ft_recursive_count_words("   one", 0));
	printf("%d\n", ft_recursive_count_words("", 0));
}

/*
Allowed functions: none

Goal:
Count words separated by spaces recursively

TODO:
1. Return 0 at the null terminator
2. Count a word when entering from a space
3. Recurse while tracking whether you are inside a word

Test notes:
Tests multiple words, leading spaces, and empty string

Expected output:
3
1
0
*/
