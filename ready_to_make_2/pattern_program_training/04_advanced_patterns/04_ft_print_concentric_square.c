#include <unistd.h>
#include <stdio.h>

void	ft_print_concentric_square(int n)
{
	
}

/*
GOAL:
Print concentric numbered square rings of width 2*n-1.

ALLOWED FUNCTIONS:
write (printf is used only inside tests, if needed).

TODO:
1. Identify the relationship between the row and column indices.
2. Fill each cell with n minus its minimum distance from the edge.
3. Print each row with exactly one final newline.
4. Handle the small-size boundary shown in the tests.

EXPECTED OUTPUT:
Test 1 (n = 5):
555555555
544444445
543333345
543222345
543212345
543222345
543333345
544444445
555555555
Test 2 (n = 2):
222
212
222
*/

int	main(void)
{
	printf("Test 1 (n = %d):\n", 5);
	fflush(stdout);
	ft_print_concentric_square(5);

	printf("Test 2 (n = %d):\n", 2);
	fflush(stdout);
	ft_print_concentric_square(2);
	return (0);
}

/*
EDGE CASES:
n <= 9; center equals 1. Avoid trailing spaces after visible characters.

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
