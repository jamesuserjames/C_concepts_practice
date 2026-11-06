#include <unistd.h>
#include <stdio.h>

void	ft_print_spiral_numbers(int n)
{
	
}

/*
GOAL:
Fill an n by n grid with integers 1..n*n in clockwise spiral order.

ALLOWED FUNCTIONS:
write (printf is used only inside tests, if needed).

TODO:
1. Identify the relationship between the row and column indices.
2. Track top, bottom, left, and right bounds; print values as two digits.
3. Print each row with exactly one final newline.
4. Handle the small-size boundary shown in the tests.

EXPECTED OUTPUT:
Test 1 (n = 5):
01 02 03 04 05
16 17 18 19 06
15 24 25 20 07
14 23 22 21 08
13 12 11 10 09
Test 2 (n = 2):
01 02
04 03
*/

int	main(void)
{
	printf("Test 1 (n = %d):\n", 5);
	fflush(stdout);
	ft_print_spiral_numbers(5);

	printf("Test 2 (n = %d):\n", 2);
	fflush(stdout);
	ft_print_spiral_numbers(2);
	return (0);
}

/*
EDGE CASES:
Every number must have two digits, including leading zero. Avoid trailing spaces after visible characters.

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
