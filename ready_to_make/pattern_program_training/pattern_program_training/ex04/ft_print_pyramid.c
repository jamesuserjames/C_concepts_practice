#include <unistd.h>

void	ft_print_pyramid(int height)
{
	
}

int	main(void)
{
	ft_print_pyramid(4);
	return (0);
}

/*
Allowed functions: write

Goal:
Print a centered pyramid.

TODO:
1. Print spaces before stars.
2. Print odd number of stars.
3. Decrease spaces each row.

Test notes:
Normal case: height 4.
Edge case: height 1.
Boundary case: height 0 prints nothing.

Expected output:
   *
  ***
 *****
*******
*/
