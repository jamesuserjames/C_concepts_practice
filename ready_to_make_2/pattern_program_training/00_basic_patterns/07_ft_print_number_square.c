#include <unistd.h>
#include <stdio.h>

void	ft_print_number_square(int n)
{
	
}

/*
GOAL:
Print the sequence 1 through n on every row of an n by n square.

ALLOWED FUNCTIONS:
write (printf is used only inside tests, if needed).

TODO:
1. Identify the relationship between the row and column indices.
2. Convert each digit to its character representation.
3. Print each row with exactly one final newline.
4. Handle the small-size boundary shown in the tests.

EXPECTED OUTPUT:
Test 1 (n = 3):
123
123
123
Test 2 (n = 1):
1
*/

int	main(void)
{
	printf("Test 1 (n = %d):\n", 3);
	fflush(stdout);
	ft_print_number_square(3);

	printf("Test 2 (n = %d):\n", 1);
	fflush(stdout);
	ft_print_number_square(1);
	return (0);
}

/*
EDGE CASES:
n <= 9; for n = 0 print nothing. Avoid trailing spaces after visible characters.

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
