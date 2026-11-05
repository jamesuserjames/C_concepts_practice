#include <unistd.h>

void	ft_print_pyramid_upper(int height)
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

void	ft_print_pyramid_lower(int height)
{
	int      j;
   int		i;
   
   i = height;
   while (i >= 0)
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
      i--;
   }
}

void	ft_print_diamond(int size)
{
   ft_print_pyramid_upper(size);
	ft_print_pyramid_lower(size);
}

int	main(void)
{
   // ft_print_pyramid_lower(8);
   // ft_print_pyramid_upper(8);
	ft_print_diamond(8);
	return (0);
}

/*
Allowed functions: write

Goal:
Print a diamond pattern.

TODO:
1. Print upper pyramid.
2. Print lower pyramid.
3. Avoid duplicating middle line.

Test notes:
Normal case: size 4.
Edge case: size 1.
Boundary case: size 0 prints nothing.

Expected output:
   *
  ***
 *****
*******
 *****
  ***
   *
*/
