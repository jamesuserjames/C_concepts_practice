#include <unistd.h>
#include <stdio.h>

void	ft_print_consecutive_letters(int n)
{
	
}

/*
GOAL:
Print alphabet letters continuously across triangular rows.

ALLOWED FUNCTIONS:
write (printf is used only inside tests, if needed).

TODO:
1. Identify the relationship between the row and column indices.
2. Advance a running letter counter; wrap after Z to A.
3. Print each row with exactly one final newline.
4. Handle the small-size boundary shown in the tests.

EXPECTED OUTPUT:
Test 1 (n = 5):
A
BC
DEF
GHIJ
KLMNO
Test 2 (n = 1):
A
*/

int	main(void)
{
	printf("Test 1 (n = %d):\n", 5);
	fflush(stdout);
	ft_print_consecutive_letters(5);

	printf("Test 2 (n = %d):\n", 1);
	fflush(stdout);
	ft_print_consecutive_letters(1);
	return (0);
}

/*
EDGE CASES:
Count continues between rows. Avoid trailing spaces after visible characters.

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
