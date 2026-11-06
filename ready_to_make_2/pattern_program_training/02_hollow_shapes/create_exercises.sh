#!/usr/bin/env bash
set -euo pipefail

cd "$(dirname "$0")" || exit 1

cat > 00_ft_print_hollow_square.c <<'EOF'
#include <unistd.h>
#include <stdio.h>

void	ft_print_hollow_square(int n)
{
	
}

/*
GOAL:
Print a square of stars with a hollow interior.

ALLOWED FUNCTIONS:
write (printf is used only inside tests, if needed).

TODO:
1. Identify the relationship between the row and column indices.
2. Print stars on borders and spaces inside.
3. Print each row with exactly one final newline.
4. Handle the small-size boundary shown in the tests.

EXPECTED OUTPUT:
Test 1 (n = 4):
****
*  *
*  *
****
Test 2 (n = 1):
*
*/

int	main(void)
{
	printf("Test 1 (n = %d):\n", 4);
	fflush(stdout);
	ft_print_hollow_square(4);

	printf("Test 2 (n = %d):\n", 1);
	fflush(stdout);
	ft_print_hollow_square(1);
	return (0);
}

/*
EDGE CASES:
n=1 is one star. Avoid trailing spaces after visible characters.

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
EOF

cat > 01_ft_print_hollow_rectangle.c <<'EOF'
#include <unistd.h>
#include <stdio.h>

void	ft_print_hollow_rectangle(int n)
{
	
}

/*
GOAL:
Print a hollow rectangle n+2 wide and n tall.

ALLOWED FUNCTIONS:
write (printf is used only inside tests, if needed).

TODO:
1. Identify the relationship between the row and column indices.
2. Print top/bottom borders and two vertical borders.
3. Print each row with exactly one final newline.
4. Handle the small-size boundary shown in the tests.

EXPECTED OUTPUT:
Test 1 (n = 4):
******
*    *
*    *
******
Test 2 (n = 1):
***
*/

int	main(void)
{
	printf("Test 1 (n = %d):\n", 4);
	fflush(stdout);
	ft_print_hollow_rectangle(4);

	printf("Test 2 (n = %d):\n", 1);
	fflush(stdout);
	ft_print_hollow_rectangle(1);
	return (0);
}

/*
EDGE CASES:
For n=1, only the top border exists. Avoid trailing spaces after visible characters.

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
EOF

cat > 02_ft_print_hollow_triangle.c <<'EOF'
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
EOF

cat > 03_ft_print_hollow_pyramid.c <<'EOF'
#include <unistd.h>
#include <stdio.h>

void	ft_print_hollow_pyramid(int n)
{
	
}

/*
GOAL:
Print a centered hollow pyramid.

ALLOWED FUNCTIONS:
write (printf is used only inside tests, if needed).

TODO:
1. Identify the relationship between the row and column indices.
2. Print two edge stars with spaces inside; fill the final row.
3. Print each row with exactly one final newline.
4. Handle the small-size boundary shown in the tests.

EXPECTED OUTPUT:
Test 1 (n = 4):
   *
  * *
 *   *
*******
Test 2 (n = 1):
*
*/

int	main(void)
{
	printf("Test 1 (n = %d):\n", 4);
	fflush(stdout);
	ft_print_hollow_pyramid(4);

	printf("Test 2 (n = %d):\n", 1);
	fflush(stdout);
	ft_print_hollow_pyramid(1);
	return (0);
}

/*
EDGE CASES:
Avoid trailing spaces. Avoid trailing spaces after visible characters.

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
EOF

cat > 04_ft_print_hollow_diamond.c <<'EOF'
#include <unistd.h>
#include <stdio.h>

void	ft_print_hollow_diamond(int n)
{
	
}

/*
GOAL:
Print a centered hollow diamond.

ALLOWED FUNCTIONS:
write (printf is used only inside tests, if needed).

TODO:
1. Identify the relationship between the row and column indices.
2. Mirror a hollow pyramid without duplicating its wide row.
3. Print each row with exactly one final newline.
4. Handle the small-size boundary shown in the tests.

EXPECTED OUTPUT:
Test 1 (n = 4):
   *
  * *
 *   *
*******
 *   *
  * *
   *
Test 2 (n = 1):
*
*/

int	main(void)
{
	printf("Test 1 (n = %d):\n", 4);
	fflush(stdout);
	ft_print_hollow_diamond(4);

	printf("Test 2 (n = %d):\n", 1);
	fflush(stdout);
	ft_print_hollow_diamond(1);
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
EOF

cat > 05_ft_print_x_pattern.c <<'EOF'
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
EOF

cat > 06_ft_print_plus_pattern.c <<'EOF'
#include <unistd.h>
#include <stdio.h>

void	ft_print_plus_pattern(int n)
{
	
}

/*
GOAL:
Print a plus sign on an n by n grid.

ALLOWED FUNCTIONS:
write (printf is used only inside tests, if needed).

TODO:
1. Identify the relationship between the row and column indices.
2. Draw the middle row and middle column; use index n/2.
3. Print each row with exactly one final newline.
4. Handle the small-size boundary shown in the tests.

EXPECTED OUTPUT:
Test 1 (n = 3):
 *
***
 *
Test 2 (n = 1):
*
*/

int	main(void)
{
	printf("Test 1 (n = %d):\n", 3);
	fflush(stdout);
	ft_print_plus_pattern(3);

	printf("Test 2 (n = %d):\n", 1);
	fflush(stdout);
	ft_print_plus_pattern(1);
	return (0);
}

/*
EDGE CASES:
For even n the chosen middle index is n/2. Avoid trailing spaces after visible characters.

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
EOF

cat > 07_ft_print_hollow_hourglass.c <<'EOF'
#include <unistd.h>
#include <stdio.h>

void	ft_print_hollow_hourglass(int n)
{
	
}

/*
GOAL:
Print an hourglass using only border stars.

ALLOWED FUNCTIONS:
write (printf is used only inside tests, if needed).

TODO:
1. Identify the relationship between the row and column indices.
2. Mirror the hollow-pyramid row sequence upside down and back.
3. Print each row with exactly one final newline.
4. Handle the small-size boundary shown in the tests.

EXPECTED OUTPUT:
Test 1 (n = 4):
*******
 *   *
  * *
   *
  * *
 *   *
*******
Test 2 (n = 1):
*
*/

int	main(void)
{
	printf("Test 1 (n = %d):\n", 4);
	fflush(stdout);
	ft_print_hollow_hourglass(4);

	printf("Test 2 (n = %d):\n", 1);
	fflush(stdout);
	ft_print_hollow_hourglass(1);
	return (0);
}

/*
EDGE CASES:
Do not repeat the narrow center. Avoid trailing spaces after visible characters.

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
EOF

cat > 08_ft_print_hollow_right_triangle.c <<'EOF'
#include <unistd.h>
#include <stdio.h>

void	ft_print_hollow_right_triangle(int n)
{
	
}

/*
GOAL:
Print a right-aligned hollow triangle.

ALLOWED FUNCTIONS:
write (printf is used only inside tests, if needed).

TODO:
1. Identify the relationship between the row and column indices.
2. Print the outer edges and fill the last row.
3. Print each row with exactly one final newline.
4. Handle the small-size boundary shown in the tests.

EXPECTED OUTPUT:
Test 1 (n = 4):
   *
  **
 * *
****
Test 2 (n = 1):
*
*/

int	main(void)
{
	printf("Test 1 (n = %d):\n", 4);
	fflush(stdout);
	ft_print_hollow_right_triangle(4);

	printf("Test 2 (n = %d):\n", 1);
	fflush(stdout);
	ft_print_hollow_right_triangle(1);
	return (0);
}

/*
EDGE CASES:
Leading spaces matter. Avoid trailing spaces after visible characters.

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
EOF

cat > 09_ft_print_hollow_inverted_pyramid.c <<'EOF'
#include <unistd.h>
#include <stdio.h>

void	ft_print_hollow_inverted_pyramid(int n)
{
	
}

/*
GOAL:
Print a hollow inverted pyramid.

ALLOWED FUNCTIONS:
write (printf is used only inside tests, if needed).

TODO:
1. Identify the relationship between the row and column indices.
2. Start with a full base and shrink toward a single star.
3. Print each row with exactly one final newline.
4. Handle the small-size boundary shown in the tests.

EXPECTED OUTPUT:
Test 1 (n = 4):
*******
 *   *
  * *
   *
Test 2 (n = 1):
*
*/

int	main(void)
{
	printf("Test 1 (n = %d):\n", 4);
	fflush(stdout);
	ft_print_hollow_inverted_pyramid(4);

	printf("Test 2 (n = %d):\n", 1);
	fflush(stdout);
	ft_print_hollow_inverted_pyramid(1);
	return (0);
}

/*
EDGE CASES:
No trailing spaces. Avoid trailing spaces after visible characters.

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
EOF

cat > 10_ft_print_square_diagonals.c <<'EOF'
#include <unistd.h>
#include <stdio.h>

void	ft_print_square_diagonals(int n)
{
	
}

/*
GOAL:
Print a square with a border and both diagonals marked with stars.

ALLOWED FUNCTIONS:
write (printf is used only inside tests, if needed).

TODO:
1. Identify the relationship between the row and column indices.
2. Test all four border conditions plus both diagonal conditions.
3. Print each row with exactly one final newline.
4. Handle the small-size boundary shown in the tests.

EXPECTED OUTPUT:
Test 1 (n = 5):
*****
** **
* * *
** **
*****
Test 2 (n = 2):
**
**
*/

int	main(void)
{
	printf("Test 1 (n = %d):\n", 5);
	fflush(stdout);
	ft_print_square_diagonals(5);

	printf("Test 2 (n = %d):\n", 2);
	fflush(stdout);
	ft_print_square_diagonals(2);
	return (0);
}

/*
EDGE CASES:
For n=1 all lines intersect at one star. Avoid trailing spaces after visible characters.

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
EOF

cat > 11_ft_print_nested_squares.c <<'EOF'
#include <unistd.h>
#include <stdio.h>

void	ft_print_nested_squares(int n)
{
	
}

/*
GOAL:
Print concentric numbered layers in an n by n grid.

ALLOWED FUNCTIONS:
write (printf is used only inside tests, if needed).

TODO:
1. Identify the relationship between the row and column indices.
2. Cell value equals 1 + distance to the closest edge.
3. Print each row with exactly one final newline.
4. Handle the small-size boundary shown in the tests.

EXPECTED OUTPUT:
Test 1 (n = 5):
11111
12221
12321
12221
11111
Test 2 (n = 2):
11
11
*/

int	main(void)
{
	printf("Test 1 (n = %d):\n", 5);
	fflush(stdout);
	ft_print_nested_squares(5);

	printf("Test 2 (n = %d):\n", 2);
	fflush(stdout);
	ft_print_nested_squares(2);
	return (0);
}

/*
EDGE CASES:
n <= 9; central value depends on grid size. Avoid trailing spaces after visible characters.

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
EOF

echo "Reset 12 exercises in 02_hollow_shapes."
