#!/usr/bin/env bash
set -euo pipefail

cd "$(dirname "$0")" || exit 1

cat > 00_ft_print_square.c <<'EOF'
#include <unistd.h>
#include <stdio.h>

void	ft_print_square(int n)
{
	
}

/*
GOAL:
Print an n by n filled square using stars.

ALLOWED FUNCTIONS:
write (printf is used only inside tests, if needed).

TODO:
1. Identify the relationship between the row and column indices.
2. Use an outer loop for rows; print n stars per row.
3. Print each row with exactly one final newline.
4. Handle the small-size boundary shown in the tests.

EXPECTED OUTPUT:
Test 1 (n = 4):
****
****
****
****
Test 2 (n = 1):
*
*/

int	main(void)
{
	printf("Test 1 (n = %d):\n", 4);
	fflush(stdout);
	ft_print_square(4);

	printf("Test 2 (n = %d):\n", 1);
	fflush(stdout);
	ft_print_square(1);
	return (0);
}

/*
EDGE CASES:
n = 0 must print nothing. Avoid trailing spaces after visible characters.

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

cat > 01_ft_print_rectangle.c <<'EOF'
#include <unistd.h>
#include <stdio.h>

void	ft_print_rectangle(int n)
{
	
}

/*
GOAL:
Print a filled rectangle n + 1 characters wide and n rows tall.

ALLOWED FUNCTIONS:
write (printf is used only inside tests, if needed).

TODO:
1. Identify the relationship between the row and column indices.
2. Keep the width one greater than the height; print a newline after each row.
3. Print each row with exactly one final newline.
4. Handle the small-size boundary shown in the tests.

EXPECTED OUTPUT:
Test 1 (n = 4):
*****
*****
*****
*****
Test 2 (n = 1):
**
*/

int	main(void)
{
	printf("Test 1 (n = %d):\n", 4);
	fflush(stdout);
	ft_print_rectangle(4);

	printf("Test 2 (n = %d):\n", 1);
	fflush(stdout);
	ft_print_rectangle(1);
	return (0);
}

/*
EDGE CASES:
n = 0 must print nothing. Avoid trailing spaces after visible characters.

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

cat > 02_ft_print_horizontal_line.c <<'EOF'
#include <unistd.h>
#include <stdio.h>

void	ft_print_horizontal_line(int n)
{
	
}

/*
GOAL:
Print n hyphens followed by one newline.

ALLOWED FUNCTIONS:
write (printf is used only inside tests, if needed).

TODO:
1. Identify the relationship between the row and column indices.
2. Count characters with one loop.
3. Print each row with exactly one final newline.
4. Handle the small-size boundary shown in the tests.

EXPECTED OUTPUT:
Test 1 (n = 4):
----
Test 2 (n = 1):
-
*/

int	main(void)
{
	printf("Test 1 (n = %d):\n", 4);
	fflush(stdout);
	ft_print_horizontal_line(4);

	printf("Test 2 (n = %d):\n", 1);
	fflush(stdout);
	ft_print_horizontal_line(1);
	return (0);
}

/*
EDGE CASES:
n = 0 must print nothing, including no newline. Avoid trailing spaces after visible characters.

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

cat > 03_ft_print_vertical_line.c <<'EOF'
#include <unistd.h>
#include <stdio.h>

void	ft_print_vertical_line(int n)
{
	
}

/*
GOAL:
Print n lines, each containing a vertical bar.

ALLOWED FUNCTIONS:
write (printf is used only inside tests, if needed).

TODO:
1. Identify the relationship between the row and column indices.
2. Write one bar and newline per iteration.
3. Print each row with exactly one final newline.
4. Handle the small-size boundary shown in the tests.

EXPECTED OUTPUT:
Test 1 (n = 4):
|
|
|
|
Test 2 (n = 1):
|
*/

int	main(void)
{
	printf("Test 1 (n = %d):\n", 4);
	fflush(stdout);
	ft_print_vertical_line(4);

	printf("Test 2 (n = %d):\n", 1);
	fflush(stdout);
	ft_print_vertical_line(1);
	return (0);
}

/*
EDGE CASES:
n = 0 must print nothing. Avoid trailing spaces after visible characters.

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

cat > 04_ft_print_right_triangle.c <<'EOF'
#include <unistd.h>
#include <stdio.h>

void	ft_print_right_triangle(int n)
{
	
}

/*
GOAL:
Print a left-aligned growing triangle of stars.

ALLOWED FUNCTIONS:
write (printf is used only inside tests, if needed).

TODO:
1. Identify the relationship between the row and column indices.
2. Row i (starting at 1) has i stars.
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
	ft_print_right_triangle(4);

	printf("Test 2 (n = %d):\n", 1);
	fflush(stdout);
	ft_print_right_triangle(1);
	return (0);
}

/*
EDGE CASES:
n = 1 produces one star. Avoid trailing spaces after visible characters.

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

cat > 05_ft_print_reverse_triangle.c <<'EOF'
#include <unistd.h>
#include <stdio.h>

void	ft_print_reverse_triangle(int n)
{
	
}

/*
GOAL:
Print a left-aligned shrinking triangle of stars.

ALLOWED FUNCTIONS:
write (printf is used only inside tests, if needed).

TODO:
1. Identify the relationship between the row and column indices.
2. Decrease the star count from n to one.
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
	ft_print_reverse_triangle(4);

	printf("Test 2 (n = %d):\n", 1);
	fflush(stdout);
	ft_print_reverse_triangle(1);
	return (0);
}

/*
EDGE CASES:
n = 0 must print nothing. Avoid trailing spaces after visible characters.

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

cat > 06_ft_print_filled_rows.c <<'EOF'
#include <unistd.h>
#include <stdio.h>

void	ft_print_filled_rows(int n)
{
	
}

/*
GOAL:
Print n rows of repeated row numbers, each n characters wide.

ALLOWED FUNCTIONS:
write (printf is used only inside tests, if needed).

TODO:
1. Identify the relationship between the row and column indices.
2. Start row numbering at 1 and repeat that digit n times.
3. Print each row with exactly one final newline.
4. Handle the small-size boundary shown in the tests.

EXPECTED OUTPUT:
Test 1 (n = 3):
111
222
333
Test 2 (n = 1):
1
*/

int	main(void)
{
	printf("Test 1 (n = %d):\n", 3);
	fflush(stdout);
	ft_print_filled_rows(3);

	printf("Test 2 (n = %d):\n", 1);
	fflush(stdout);
	ft_print_filled_rows(1);
	return (0);
}

/*
EDGE CASES:
n <= 9 to keep each number one character. Avoid trailing spaces after visible characters.

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

cat > 07_ft_print_number_square.c <<'EOF'
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
EOF

cat > 08_ft_print_alphabet_square.c <<'EOF'
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
EOF

cat > 09_ft_print_increasing_rows.c <<'EOF'
#include <unistd.h>
#include <stdio.h>

void	ft_print_increasing_rows(int n)
{
	
}

/*
GOAL:
Print rows A, BB, CCC, and so on.

ALLOWED FUNCTIONS:
write (printf is used only inside tests, if needed).

TODO:
1. Identify the relationship between the row and column indices.
2. Repeat each row letter row+1 times.
3. Print each row with exactly one final newline.
4. Handle the small-size boundary shown in the tests.

EXPECTED OUTPUT:
Test 1 (n = 3):
A
BB
CCC
Test 2 (n = 1):
A
*/

int	main(void)
{
	printf("Test 1 (n = %d):\n", 3);
	fflush(stdout);
	ft_print_increasing_rows(3);

	printf("Test 2 (n = %d):\n", 1);
	fflush(stdout);
	ft_print_increasing_rows(1);
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
EOF

cat > 10_ft_print_decreasing_rows.c <<'EOF'
#include <unistd.h>
#include <stdio.h>

void	ft_print_decreasing_rows(int n)
{
	
}

/*
GOAL:
Print rows of A, B, C with descending lengths.

ALLOWED FUNCTIONS:
write (printf is used only inside tests, if needed).

TODO:
1. Identify the relationship between the row and column indices.
2. Row i contains n-i copies of its uppercase letter.
3. Print each row with exactly one final newline.
4. Handle the small-size boundary shown in the tests.

EXPECTED OUTPUT:
Test 1 (n = 3):
AAA
BB
C
Test 2 (n = 1):
A
*/

int	main(void)
{
	printf("Test 1 (n = %d):\n", 3);
	fflush(stdout);
	ft_print_decreasing_rows(3);

	printf("Test 2 (n = %d):\n", 1);
	fflush(stdout);
	ft_print_decreasing_rows(1);
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
EOF

cat > 11_ft_print_alternating_rows.c <<'EOF'
#include <unistd.h>
#include <stdio.h>

void	ft_print_alternating_rows(int n)
{
	
}

/*
GOAL:
Print alternating rows of stars and hash characters.

ALLOWED FUNCTIONS:
write (printf is used only inside tests, if needed).

TODO:
1. Identify the relationship between the row and column indices.
2. Use row parity to choose the printed character.
3. Print each row with exactly one final newline.
4. Handle the small-size boundary shown in the tests.

EXPECTED OUTPUT:
Test 1 (n = 3):
***
###
***
Test 2 (n = 1):
*
*/

int	main(void)
{
	printf("Test 1 (n = %d):\n", 3);
	fflush(stdout);
	ft_print_alternating_rows(3);

	printf("Test 2 (n = %d):\n", 1);
	fflush(stdout);
	ft_print_alternating_rows(1);
	return (0);
}

/*
EDGE CASES:
First row uses stars. Avoid trailing spaces after visible characters.

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

echo "Reset 12 exercises in 00_basic_patterns."
