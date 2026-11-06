#!/usr/bin/env bash
set -euo pipefail

cd "$(dirname "$0")" || exit 1

cat > 00_ft_print_checkerboard.c <<'EOF'
#include <unistd.h>
#include <stdio.h>

void	ft_print_checkerboard(int n)
{
	
}

/*
GOAL:
Print an n by n checkerboard made from * and . characters.

ALLOWED FUNCTIONS:
write (printf is used only inside tests, if needed).

TODO:
1. Identify the relationship between the row and column indices.
2. Choose a star when row+column is even, dot otherwise.
3. Print each row with exactly one final newline.
4. Handle the small-size boundary shown in the tests.

EXPECTED OUTPUT:
Test 1 (n = 3):
*.*
.*.
*.*
Test 2 (n = 1):
*
*/

int	main(void)
{
	printf("Test 1 (n = %d):\n", 3);
	fflush(stdout);
	ft_print_checkerboard(3);

	printf("Test 2 (n = %d):\n", 1);
	fflush(stdout);
	ft_print_checkerboard(1);
	return (0);
}

/*
EDGE CASES:
Dots represent empty squares, not spaces. Avoid trailing spaces after visible characters.

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

cat > 01_ft_print_binary_triangle.c <<'EOF'
#include <unistd.h>
#include <stdio.h>

void	ft_print_binary_triangle(int n)
{
	
}

/*
GOAL:
Print alternating binary digits in a triangle, starting with 1.

ALLOWED FUNCTIONS:
write (printf is used only inside tests, if needed).

TODO:
1. Identify the relationship between the row and column indices.
2. Use the parity of row+column+1.
3. Print each row with exactly one final newline.
4. Handle the small-size boundary shown in the tests.

EXPECTED OUTPUT:
Test 1 (n = 3):
1
01
101
Test 2 (n = 1):
1
*/

int	main(void)
{
	printf("Test 1 (n = %d):\n", 3);
	fflush(stdout);
	ft_print_binary_triangle(3);

	printf("Test 2 (n = %d):\n", 1);
	fflush(stdout);
	ft_print_binary_triangle(1);
	return (0);
}

/*
EDGE CASES:
This differs from the earlier binary pattern which starts with 0. Avoid trailing spaces after visible characters.

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

cat > 02_ft_print_butterfly.c <<'EOF'
#include <unistd.h>
#include <stdio.h>

void	ft_print_butterfly(int n)
{
	
}

/*
GOAL:
Print a butterfly with two wings of stars separated by spaces.

ALLOWED FUNCTIONS:
write (printf is used only inside tests, if needed).

TODO:
1. Identify the relationship between the row and column indices.
2. Grow each wing while reducing the gap, then mirror the lines.
3. Print each row with exactly one final newline.
4. Handle the small-size boundary shown in the tests.

EXPECTED OUTPUT:
Test 1 (n = 3):
*    *
**  **
******
**  **
*    *
Test 2 (n = 1):
**
*/

int	main(void)
{
	printf("Test 1 (n = %d):\n", 3);
	fflush(stdout);
	ft_print_butterfly(3);

	printf("Test 2 (n = %d):\n", 1);
	fflush(stdout);
	ft_print_butterfly(1);
	return (0);
}

/*
EDGE CASES:
The widest wings touch without a gap; n=1 yields two stars. Avoid trailing spaces after visible characters.

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

cat > 03_ft_print_spiral.c <<'EOF'
#include <unistd.h>
#include <stdio.h>

void	ft_print_spiral(int n)
{
	
}

/*
GOAL:
Print a square star spiral on a dot background.

ALLOWED FUNCTIONS:
write (printf is used only inside tests, if needed).

TODO:
1. Identify the relationship between the row and column indices.
2. Trace a single clockwise path with gaps between successive turns.
3. Print each row with exactly one final newline.
4. Handle the small-size boundary shown in the tests.

EXPECTED OUTPUT:
Test 1 (n = 5):
*****
....*
***.*
*...*
*****
Test 2 (n = 2):
**
**
*/

int	main(void)
{
	printf("Test 1 (n = %d):\n", 5);
	fflush(stdout);
	ft_print_spiral(5);

	printf("Test 2 (n = %d):\n", 2);
	fflush(stdout);
	ft_print_spiral(2);
	return (0);
}

/*
EDGE CASES:
Dots represent blank cells. Treat n>=1. Avoid trailing spaces after visible characters.

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

cat > 04_ft_print_concentric_square.c <<'EOF'
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
EOF

cat > 05_ft_print_recursive_triangle.c <<'EOF'
#include <unistd.h>
#include <stdio.h>

void	ft_print_recursive_triangle(int n)
{
	
}

/*
GOAL:
Print an increasing triangle using recursion rather than an outer row loop.

ALLOWED FUNCTIONS:
write (printf is used only inside tests, if needed).

TODO:
1. Identify the relationship between the row and column indices.
2. Make the recursive call produce earlier rows before printing the current row.
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
	ft_print_recursive_triangle(4);

	printf("Test 2 (n = %d):\n", 1);
	fflush(stdout);
	ft_print_recursive_triangle(1);
	return (0);
}

/*
EDGE CASES:
n = 0 prints nothing; use recursion to control rows. Avoid trailing spaces after visible characters.

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

cat > 06_ft_print_zigzag.c <<'EOF'
#include <unistd.h>
#include <stdio.h>

void	ft_print_zigzag(int n)
{
	
}

/*
GOAL:
Print a three-row zigzag of asterisks across 3*n columns.

ALLOWED FUNCTIONS:
write (printf is used only inside tests, if needed).

TODO:
1. Identify the relationship between the row and column indices.
2. For each row, mark positions where (column-row) is divisible by 3.
3. Print each row with exactly one final newline.
4. Handle the small-size boundary shown in the tests.

EXPECTED OUTPUT:
Test 1 (n = 3):
*..*..*..
.*..*..*.
..*..*..*
Test 2 (n = 1):
*..
.*.
..*
*/

int	main(void)
{
	printf("Test 1 (n = %d):\n", 3);
	fflush(stdout);
	ft_print_zigzag(3);

	printf("Test 2 (n = %d):\n", 1);
	fflush(stdout);
	ft_print_zigzag(1);
	return (0);
}

/*
EDGE CASES:
Dots represent unmarked positions. Avoid trailing spaces after visible characters.

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

cat > 07_ft_print_wave.c <<'EOF'
#include <unistd.h>
#include <stdio.h>

void	ft_print_wave(int n)
{
	
}

/*
GOAL:
Print a three-row repeating wave across 4*n columns.

ALLOWED FUNCTIONS:
write (printf is used only inside tests, if needed).

TODO:
1. Identify the relationship between the row and column indices.
2. Cycle the star through the middle, top, middle, and bottom rows.
3. Print each row with exactly one final newline.
4. Handle the small-size boundary shown in the tests.

EXPECTED OUTPUT:
Test 1 (n = 3):
.*...*...*..
*.*.*.*.*.*.
...*...*...*
Test 2 (n = 1):
.*..
*.*.
...*
*/

int	main(void)
{
	printf("Test 1 (n = %d):\n", 3);
	fflush(stdout);
	ft_print_wave(3);

	printf("Test 2 (n = %d):\n", 1);
	fflush(stdout);
	ft_print_wave(1);
	return (0);
}

/*
EDGE CASES:
Dots represent unmarked positions. Avoid trailing spaces after visible characters.

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

cat > 08_ft_print_spiral_numbers.c <<'EOF'
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
EOF

cat > 09_ft_print_recursive_diamond.c <<'EOF'
#include <unistd.h>
#include <stdio.h>

void	ft_print_recursive_diamond(int n)
{
	
}

/*
GOAL:
Print a filled diamond using recursion to control the upper and lower halves.

ALLOWED FUNCTIONS:
write (printf is used only inside tests, if needed).

TODO:
1. Identify the relationship between the row and column indices.
2. Use recursive descent/unwind to print the two sides of the diamond.
3. Print each row with exactly one final newline.
4. Handle the small-size boundary shown in the tests.

EXPECTED OUTPUT:
Test 1 (n = 3):
  *
 ***
*****
 ***
  *
Test 2 (n = 1):
*
*/

int	main(void)
{
	printf("Test 1 (n = %d):\n", 3);
	fflush(stdout);
	ft_print_recursive_diamond(3);

	printf("Test 2 (n = %d):\n", 1);
	fflush(stdout);
	ft_print_recursive_diamond(1);
	return (0);
}

/*
EDGE CASES:
Expected shape matches a filled diamond; recursion is mandatory. Avoid trailing spaces after visible characters.

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

cat > 10_ft_print_sierpinski_triangle.c <<'EOF'
#include <unistd.h>
#include <stdio.h>

void	ft_print_sierpinski_triangle(int n)
{
	
}

/*
GOAL:
Print a Sierpinski triangle of recursion depth n using stars.

ALLOWED FUNCTIONS:
write (printf is used only inside tests, if needed).

TODO:
1. Identify the relationship between the row and column indices.
2. Build triangular rows of 2^n-1 levels with recursive self-similarity.
3. Print each row with exactly one final newline.
4. Handle the small-size boundary shown in the tests.

EXPECTED OUTPUT:
Test 1 (n = 2):
  *
 * *
*   *
Test 2 (n = 1):
*
*/

int	main(void)
{
	printf("Test 1 (n = %d):\n", 2);
	fflush(stdout);
	ft_print_sierpinski_triangle(2);

	printf("Test 2 (n = %d):\n", 1);
	fflush(stdout);
	ft_print_sierpinski_triangle(1);
	return (0);
}

/*
EDGE CASES:
Use n=1 or 2 only for compact tests; omit trailing spaces. Avoid trailing spaces after visible characters.

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

cat > 11_ft_print_fractal_pattern.c <<'EOF'
#include <unistd.h>
#include <stdio.h>

void	ft_print_fractal_pattern(int n)
{
	
}

/*
GOAL:
Print a recursive 3-by-3 Sierpinski-carpet pattern at recursion depth n.

ALLOWED FUNCTIONS:
write (printf is used only inside tests, if needed).

TODO:
1. Identify the relationship between the row and column indices.
2. Replace the center block with dots at each level, retaining surrounding blocks.
3. Print each row with exactly one final newline.
4. Handle the small-size boundary shown in the tests.

EXPECTED OUTPUT:
Test 1 (n = 2):
*********
*.**.**.*
*********
***...***
*.*...*.*
***...***
*********
*.**.**.*
*********
Test 2 (n = 1):
***
*.*
***
*/

int	main(void)
{
	printf("Test 1 (n = %d):\n", 2);
	fflush(stdout);
	ft_print_fractal_pattern(2);

	printf("Test 2 (n = %d):\n", 1);
	fflush(stdout);
	ft_print_fractal_pattern(1);
	return (0);
}

/*
EDGE CASES:
Depth n produces 3^n rows/columns; tests use n=1 and 2. Avoid trailing spaces after visible characters.

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

echo "Reset 12 exercises in 04_advanced_patterns."
