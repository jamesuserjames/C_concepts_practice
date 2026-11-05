#include <unistd.h>

void	ft_print_pyramid(int height)
{
	int      j;
   int		i;
   
   i = 0;
   while (i < height)
   {
      j = 0;
      while (j <= (2 * height))
      {
         if (j >= height - i && j <= height + i)
            write(1, "*", 1);
         else
            write(1, " ", 1);
         j++;
      }
      write(1, "\n", 1);
      i++;
   }
}

int	main(void)
{
	ft_print_pyramid(4);
   write(1, "\n", 1);
   ft_print_pyramid(8);
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

    *    
   ***   
  *****  
 ******* 
*/
