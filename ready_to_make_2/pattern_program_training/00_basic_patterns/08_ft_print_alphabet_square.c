#include <unistd.h>
#include <stdio.h>

void	ft_print_alphabet_square(int n)
{
	
}

/*
GOAL:
Print n rows of letters, with row 0 filled with A, row 1 with B, and so on.

ALLOWED FUNCTIONS:
write (printf is used only inside tests, if needed).

TODO:
1. Identify the relationship between the row and column indices.
2. Convert row index to uppercase ASCII.
3. Print each row with exactly one final newline.
4. Handle the small-size boundary shown in the tests.

EXPECTED OUTPUT:
Test 1 (n = 3):
AAA
BBB
CCC
Test 2 (n = 1):
A
*/

int	main(void)
{
	printf("Test 1 (n = %d):\n", 3);
	fflush(stdout);
	ft_print_alphabet_square(3);

	printf("Test 2 (n = %d):\n", 1);
	fflush(stdout);
	ft_print_alphabet_square(1);
	return (0);
}

/*
EDGE CASES:
n <= 26. Avoid trailing spaces after visible characters.

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
