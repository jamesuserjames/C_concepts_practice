#include <stdio.h>

char	*ft_strcpy(char *dest, char *src)
{
	
}

int	main(void)
{
	char	dest1[20];
	char	dest2[20];
	char	dest3[20];

	ft_strcpy(dest1, "hello");
	ft_strcpy(dest2, "a");
	ft_strcpy(dest3, "");
	printf("%s\n", dest1);
	printf("%s\n", dest2);
	printf("[%s]\n", dest3);
	return (0);
}

/*
Allowed functions: none

Goal:
Copy src into dest, including the terminating null character, and return dest.

TODO:
1. Read src one character at a time
2. Copy each character into the matching position in dest
3. Copy the null terminator and return dest

Test notes:
The tests cover a normal string, a one-character string, and an empty string.

Expected output:
hello
a
[]
*/
