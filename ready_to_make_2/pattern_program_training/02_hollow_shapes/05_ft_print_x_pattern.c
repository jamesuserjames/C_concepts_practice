#include <unistd.h>
#include <stdio.h>

void	ft_print_x_pattern(int n)
{
	
}

/*
GOAL:
Print two intersecting diagonal lines forming an X inside n columns.

ALLOWED FUNCTIONS:
write (printf is used only inside tests, if needed).

TODO:
1. Identify the relationship between the row and column indices.
2. Mark columns equal to the row or n-1-row.
3. Print each row with exactly one final newline.
4. Handle the small-size boundary shown in the tests.

EXPECTED OUTPUT:
Test 1 (n = 3):
* *
 *
* *
Test 2 (n = 1):
*
*/

int	main(void)
{
	printf("Test 1 (n = %d):\n", 3);
	fflush(stdout);
	ft_print_x_pattern(3);

	printf("Test 2 (n = %d):\n", 1);
	fflush(stdout);
	ft_print_x_pattern(1);
	return (0);
}

/*
EDGE CASES:
Trailing spaces are omitted from each output line. Avoid trailing spaces after visible characters.

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
