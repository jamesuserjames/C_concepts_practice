#include <unistd.h>
#include <stdio.h>

void	ft_print_hollow_triangle(int n)
{
	
}

/*
GOAL:
Print a left-aligned hollow triangle.

ALLOWED FUNCTIONS:
write (printf is used only inside tests, if needed).

TODO:
1. Identify the relationship between the row and column indices.
2. Print stars on its sloping edges and entire final base.
3. Print each row with exactly one final newline.
4. Handle the small-size boundary shown in the tests.

EXPECTED OUTPUT:
Test 1 (n = 3):
*
**
***
Test 2 (n = 1):
*
*/

int	main(void)
{
	printf("Test 1 (n = %d):\n", 3);
	fflush(stdout);
	ft_print_hollow_triangle(3);

	printf("Test 2 (n = %d):\n", 1);
	fflush(stdout);
	ft_print_hollow_triangle(1);
	return (0);
}

/*
EDGE CASES:
n=1 prints one star. Avoid trailing spaces after visible characters.

LEARNING CHECK:
1. Which loop or recursive step controls the number of rows?
2. How do the row and column indices determine what is printed?
3. What changes when n equals 1?
4. How does this pattern build on the earlier exercises?

NOTE:
The function is intentionally empty. Implement it yourself before running.
The EXPECTED OUTPUT describes behavior after you implement the function.
Keep implementation functions at or below 25 lines and respect 42 Norm.
*/
