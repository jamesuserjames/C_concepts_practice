#include <stdio.h>

int	ft_strlen(char *str)
{
	
}

int	main(void)
{
	printf("%d\n", ft_strlen("hello"));
	printf("%d\n", ft_strlen("a"));
	printf("%d\n", ft_strlen(""));
	return (0);
}

/*
Allowed functions: none

Goal:
Return the number of characters in a null-terminated string.

TODO:
1. Start at the first character
2. Move through the string until the null terminator
3. Return the number of characters encountered

Test notes:
The tests cover a normal string, a one-character string, and an empty string as the boundary case.

Expected output:
5
1
0
*/
