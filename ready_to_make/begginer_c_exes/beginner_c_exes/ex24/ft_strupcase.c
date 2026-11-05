#include <stdio.h>

char	*ft_strupcase(char *str)
{
	
}

int	main(void)
{
	char	str1[] = "Hello World!";
	char	str2[] = "abc123";
	char	str3[] = "";

	printf("%s\n", ft_strupcase(str1));
	printf("%s\n", ft_strupcase(str2));
	printf("[%s]\n", ft_strupcase(str3));
	return (0);
}

/*
Allowed functions: none

Goal:
Convert every lowercase letter in str to uppercase and return str.

TODO:
1. Move through the string character by character
2. Detect lowercase ASCII letters
3. Convert only lowercase letters to uppercase

Test notes:
The tests cover mixed text with punctuation, letters mixed with digits, and the empty-string boundary.

Expected output:
HELLO WORLD!
ABC123
[]
*/
