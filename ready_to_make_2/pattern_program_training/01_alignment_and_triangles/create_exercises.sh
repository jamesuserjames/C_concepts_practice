#!/usr/bin/env bash
set -euo pipefail

cd "$(dirname "$0")" || exit 1

cat > 00_ft_print_right_aligned_triangle.c <<'EOF'
#include <unistd.h>
#include <stdio.h>

void	ft_print_right_aligned_triangle(int n)
{
	
}

/*
GOAL:
Print a right-aligned growing triangle.

ALLOWED FUNCTIONS:
write (printf is used only inside tests, if needed).

TODO:
1. Identify the relationship between the row and column indices.
2. Print n-row leading spaces before row+1 stars.
3. Print each row with exactly one final newline.
4. Handle the small-size boundary shown in the tests.

EXPECTED OUTPUT:
Test 1 (n = 4):
   *
  **
 ***
****
Test 2 (n = 1):
*
*/

int	main(void)
{
	printf("Test 1 (n = %d):\n", 4);
	fflush(stdout);
	ft_print_right_aligned_triangle(4);

	printf("Test 2 (n = %d):\n", 1);
	fflush(stdout);
	ft_print_right_aligned_triangle(1);
	return (0);
}

/*
EDGE CASES:
Leading spaces must be preserved. Avoid trailing spaces after visible characters.

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

cat > 01_ft_print_reverse_right_triangle.c <<'EOF'
#include <unistd.h>
#include <stdio.h>

void	ft_print_reverse_right_triangle(int n)
{
	
}

/*
GOAL:
Print a right-aligned shrinking triangle.

ALLOWED FUNCTIONS:
write (printf is used only inside tests, if needed).

TODO:
1. Identify the relationship between the row and column indices.
2. Decrease stars and increase leading spaces each row.
3. Print each row with exactly one final newline.
4. Handle the small-size boundary shown in the tests.

EXPECTED OUTPUT:
Test 1 (n = 4):
****
 ***
  **
   *
Test 2 (n = 1):
*
*/

int	main(void)
{
	printf("Test 1 (n = %d):\n", 4);
	fflush(stdout);
	ft_print_reverse_right_triangle(4);

	printf("Test 2 (n = %d):\n", 1);
	fflush(stdout);
	ft_print_reverse_right_triangle(1);
	return (0);
}

/*
EDGE CASES:
Never write trailing spaces. Avoid trailing spaces after visible characters.

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

cat > 02_ft_print_pyramid.c <<'EOF'
#include <unistd.h>
#include <stdio.h>

void	ft_print_pyramid(int n)
{
	
}

/*
GOAL:
Print a centered filled pyramid.

ALLOWED FUNCTIONS:
write (printf is used only inside tests, if needed).

TODO:
1. Identify the relationship between the row and column indices.
2. Row i has n-i-1 spaces and 2*i+1 stars.
3. Print each row with exactly one final newline.
4. Handle the small-size boundary shown in the tests.

EXPECTED OUTPUT:
Test 1 (n = 4):
   *
  ***
 *****
*******
Test 2 (n = 1):
*
*/

int	main(void)
{
	printf("Test 1 (n = %d):\n", 4);
	fflush(stdout);
	ft_print_pyramid(4);

	printf("Test 2 (n = %d):\n", 1);
	fflush(stdout);
	ft_print_pyramid(1);
	return (0);
}

/*
EDGE CASES:
Leading spaces matter; n=1 is one star. Avoid trailing spaces after visible characters.

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

cat > 03_ft_print_inverted_pyramid.c <<'EOF'
#include <unistd.h>
#include <stdio.h>

void	ft_print_inverted_pyramid(int n)
{
	
}

/*
GOAL:
Print a centered pyramid upside down.

ALLOWED FUNCTIONS:
write (printf is used only inside tests, if needed).

TODO:
1. Identify the relationship between the row and column indices.
2. Reverse the row order of a filled pyramid.
3. Print each row with exactly one final newline.
4. Handle the small-size boundary shown in the tests.

EXPECTED OUTPUT:
Test 1 (n = 4):
*******
 *****
  ***
   *
Test 2 (n = 1):
*
*/

int	main(void)
{
	printf("Test 1 (n = %d):\n", 4);
	fflush(stdout);
	ft_print_inverted_pyramid(4);

	printf("Test 2 (n = %d):\n", 1);
	fflush(stdout);
	ft_print_inverted_pyramid(1);
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

cat > 04_ft_print_diamond.c <<'EOF'
#include <unistd.h>
#include <stdio.h>

void	ft_print_diamond(int n)
{
	
}

/*
GOAL:
Print a filled diamond of height 2*n-1.

ALLOWED FUNCTIONS:
write (printf is used only inside tests, if needed).

TODO:
1. Identify the relationship between the row and column indices.
2. Grow a centered pyramid, then shrink without duplicating the widest row.
3. Print each row with exactly one final newline.
4. Handle the small-size boundary shown in the tests.

EXPECTED OUTPUT:
Test 1 (n = 4):
   *
  ***
 *****
*******
 *****
  ***
   *
Test 2 (n = 1):
*
*/

int	main(void)
{
	printf("Test 1 (n = %d):\n", 4);
	fflush(stdout);
	ft_print_diamond(4);

	printf("Test 2 (n = %d):\n", 1);
	fflush(stdout);
	ft_print_diamond(1);
	return (0);
}

/*
EDGE CASES:
n=1 is a single star. Avoid trailing spaces after visible characters.

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

cat > 05_ft_print_hourglass.c <<'EOF'
#include <unistd.h>
#include <stdio.h>

void	ft_print_hourglass(int n)
{
	
}

/*
GOAL:
Print a filled hourglass of height 2*n-1.

ALLOWED FUNCTIONS:
write (printf is used only inside tests, if needed).

TODO:
1. Identify the relationship between the row and column indices.
2. Start with the widest pyramid row, shrink to one star, then grow.
3. Print each row with exactly one final newline.
4. Handle the small-size boundary shown in the tests.

EXPECTED OUTPUT:
Test 1 (n = 4):
*******
 *****
  ***
   *
  ***
 *****
*******
Test 2 (n = 1):
*
*/

int	main(void)
{
	printf("Test 1 (n = %d):\n", 4);
	fflush(stdout);
	ft_print_hourglass(4);

	printf("Test 2 (n = %d):\n", 1);
	fflush(stdout);
	ft_print_hourglass(1);
	return (0);
}

/*
EDGE CASES:
n=1 is a single star. Avoid trailing spaces after visible characters.

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

cat > 06_ft_print_left_half_diamond.c <<'EOF'
#include <unistd.h>
#include <stdio.h>

void	ft_print_left_half_diamond(int n)
{
	
}

/*
GOAL:
Print a left-aligned half-diamond.

ALLOWED FUNCTIONS:
write (printf is used only inside tests, if needed).

TODO:
1. Identify the relationship between the row and column indices.
2. Increase stars from 1 to n, then decrease to 1.
3. Print each row with exactly one final newline.
4. Handle the small-size boundary shown in the tests.

EXPECTED OUTPUT:
Test 1 (n = 3):
*
**
***
**
*
Test 2 (n = 1):
*
*/

int	main(void)
{
	printf("Test 1 (n = %d):\n", 3);
	fflush(stdout);
	ft_print_left_half_diamond(3);

	printf("Test 2 (n = %d):\n", 1);
	fflush(stdout);
	ft_print_left_half_diamond(1);
	return (0);
}

/*
EDGE CASES:
Print the widest row only once. Avoid trailing spaces after visible characters.

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

cat > 07_ft_print_right_half_diamond.c <<'EOF'
#include <unistd.h>
#include <stdio.h>

void	ft_print_right_half_diamond(int n)
{
	
}

/*
GOAL:
Print a right-aligned half-diamond.

ALLOWED FUNCTIONS:
write (printf is used only inside tests, if needed).

TODO:
1. Identify the relationship between the row and column indices.
2. Adjust leading spaces as the star count increases then decreases.
3. Print each row with exactly one final newline.
4. Handle the small-size boundary shown in the tests.

EXPECTED OUTPUT:
Test 1 (n = 3):
  *
 **
***
 **
  *
Test 2 (n = 1):
*
*/

int	main(void)
{
	printf("Test 1 (n = %d):\n", 3);
	fflush(stdout);
	ft_print_right_half_diamond(3);

	printf("Test 2 (n = %d):\n", 1);
	fflush(stdout);
	ft_print_right_half_diamond(1);
	return (0);
}

/*
EDGE CASES:
Do not duplicate middle row. Avoid trailing spaces after visible characters.

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

cat > 08_ft_print_double_triangle.c <<'EOF'
#include <unistd.h>
#include <stdio.h>

void	ft_print_double_triangle(int n)
{
	
}

/*
GOAL:
Print two growing left-aligned triangles separated by exactly one space.

ALLOWED FUNCTIONS:
write (printf is used only inside tests, if needed).

TODO:
1. Identify the relationship between the row and column indices.
2. Print i stars, one space, then i stars on row i.
3. Print each row with exactly one final newline.
4. Handle the small-size boundary shown in the tests.

EXPECTED OUTPUT:
Test 1 (n = 3):
* *
** **
*** ***
Test 2 (n = 1):
* *
*/

int	main(void)
{
	printf("Test 1 (n = %d):\n", 3);
	fflush(stdout);
	ft_print_double_triangle(3);

	printf("Test 2 (n = %d):\n", 1);
	fflush(stdout);
	ft_print_double_triangle(1);
	return (0);
}

/*
EDGE CASES:
The separator remains one space. Avoid trailing spaces after visible characters.

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

cat > 09_ft_print_offset_triangle.c <<'EOF'
#include <unistd.h>
#include <stdio.h>

void	ft_print_offset_triangle(int n)
{
	
}

/*
GOAL:
Print a shrinking triangle that shifts one space right every row.

ALLOWED FUNCTIONS:
write (printf is used only inside tests, if needed).

TODO:
1. Identify the relationship between the row and column indices.
2. Row i has i spaces and n-i stars.
3. Print each row with exactly one final newline.
4. Handle the small-size boundary shown in the tests.

EXPECTED OUTPUT:
Test 1 (n = 3):
***
 **
  *
Test 2 (n = 1):
*
*/

int	main(void)
{
	printf("Test 1 (n = %d):\n", 3);
	fflush(stdout);
	ft_print_offset_triangle(3);

	printf("Test 2 (n = %d):\n", 1);
	fflush(stdout);
	ft_print_offset_triangle(1);
	return (0);
}

/*
EDGE CASES:
Never add trailing spaces. Avoid trailing spaces after visible characters.

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

cat > 10_ft_print_arrow.c <<'EOF'
#include <unistd.h>
#include <stdio.h>

void	ft_print_arrow(int n)
{
	
}

/*
GOAL:
Print an arrowhead pyramid followed by a one-character shaft.

ALLOWED FUNCTIONS:
write (printf is used only inside tests, if needed).

TODO:
1. Identify the relationship between the row and column indices.
2. Print a narrow top tip, expand arrowhead, then print n-1 centered shaft rows.
3. Print each row with exactly one final newline.
4. Handle the small-size boundary shown in the tests.

EXPECTED OUTPUT:
Test 1 (n = 4):
   *
  ***
 *****
*******
   *
   *
   *
Test 2 (n = 1):
*
*/

int	main(void)
{
	printf("Test 1 (n = %d):\n", 4);
	fflush(stdout);
	ft_print_arrow(4);

	printf("Test 2 (n = %d):\n", 1);
	fflush(stdout);
	ft_print_arrow(1);
	return (0);
}

/*
EDGE CASES:
n=1 prints one tip only. Avoid trailing spaces after visible characters.

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

cat > 11_ft_print_double_pyramid.c <<'EOF'
#include <unistd.h>
#include <stdio.h>

void	ft_print_double_pyramid(int n)
{
	
}

/*
GOAL:
Print two centered growing pyramids side by side with two separating spaces.

ALLOWED FUNCTIONS:
write (printf is used only inside tests, if needed).

TODO:
1. Identify the relationship between the row and column indices.
2. Both pyramids use the same row width and same leading spaces.
3. Print each row with exactly one final newline.
4. Handle the small-size boundary shown in the tests.

EXPECTED OUTPUT:
Test 1 (n = 4):
   *     *
  ***    ***
 *****   *****
*******  *******
Test 2 (n = 1):
*  *
*/

int	main(void)
{
	printf("Test 1 (n = %d):\n", 4);
	fflush(stdout);
	ft_print_double_pyramid(4);

	printf("Test 2 (n = %d):\n", 1);
	fflush(stdout);
	ft_print_double_pyramid(1);
	return (0);
}

/*
EDGE CASES:
Preserve the two-space separator. Avoid trailing spaces after visible characters.

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

echo "Reset 12 exercises in 01_alignment_and_triangles."
