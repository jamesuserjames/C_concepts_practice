#include <stdio.h>

void	ft_set_value(int *n)
{
	
}

int	main(void)
{
	int	a;
	int	b;
	int	c;

	a = 5;
	b = -10;
	c = 0;
	ft_set_value(&a);
	ft_set_value(&b);
	ft_set_value(&c);
	printf("%d\n", a);
	printf("%d\n", b);
	printf("%d\n", c);
	return (0);
}

/*
Allowed functions: none

Goal:
Change the integer pointed to by n so its value becomes 42.

TODO:
1. Understand that n contains the address of an integer
2. Dereference n
3. Assign 42 to the integer at that address

Test notes:
The tests prove that positive, negative, and zero starting values can all be changed through a pointer.

Expected output:
42
42
42
*/
