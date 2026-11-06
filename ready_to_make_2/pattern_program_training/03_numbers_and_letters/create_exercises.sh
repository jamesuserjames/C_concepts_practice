#!/usr/bin/env bash
set -euo pipefail

cd "$(dirname "$0")" || exit 1

cat > 00_ft_print_number_triangle.c <<'EOF'
#include <unistd.h>
#include <stdio.h>

void	ft_print_number_triangle(int n)
{
	
}

/*
GOAL:
Print rows 1, 12, 123, and so on through n.

ALLOWED FUNCTIONS:
write (printf is used only inside tests, if needed).

TODO:
1. Identify the relationship between the row and column indices.
2. Print column digits from 1 to current row.
3. Print each row with exactly one final newline.
4. Handle the small-size boundary shown in the tests.

EXPECTED OUTPUT:
Test 1 (n = 3):
1
12
123
Test 2 (n = 1):
1
*/

int	main(void)
{
	printf("Test 1 (n = %d):\n", 3);
	fflush(stdout);
	ft_print_number_triangle(3);

	printf("Test 2 (n = %d):\n", 1);
	fflush(stdout);
	ft_print_number_triangle(1);
	return (0);
}

/*
EDGE CASES:
n <= 9. Avoid trailing spaces after visible characters.

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

cat > 01_ft_print_reverse_number_triangle.c <<'EOF'
#include <unistd.h>
#include <stdio.h>

void	ft_print_reverse_number_triangle(int n)
{
	
}

/*
GOAL:
Print rows 123...n, then 123...(n-1), down to 1.

ALLOWED FUNCTIONS:
write (printf is used only inside tests, if needed).

TODO:
1. Identify the relationship between the row and column indices.
2. Reduce the maximum printed digit each row.
3. Print each row with exactly one final newline.
4. Handle the small-size boundary shown in the tests.

EXPECTED OUTPUT:
Test 1 (n = 3):
123
12
1
Test 2 (n = 1):
1
*/

int	main(void)
{
	printf("Test 1 (n = %d):\n", 3);
	fflush(stdout);
	ft_print_reverse_number_triangle(3);

	printf("Test 2 (n = %d):\n", 1);
	fflush(stdout);
	ft_print_reverse_number_triangle(1);
	return (0);
}

/*
EDGE CASES:
n <= 9. Avoid trailing spaces after visible characters.

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

cat > 02_ft_print_repeated_number_triangle.c <<'EOF'
#include <unistd.h>
#include <stdio.h>

void	ft_print_repeated_number_triangle(int n)
{
	
}

/*
GOAL:
Print row i as digit i repeated i times.

ALLOWED FUNCTIONS:
write (printf is used only inside tests, if needed).

TODO:
1. Identify the relationship between the row and column indices.
2. Use the row number for both value and count.
3. Print each row with exactly one final newline.
4. Handle the small-size boundary shown in the tests.

EXPECTED OUTPUT:
Test 1 (n = 3):
1
22
333
Test 2 (n = 1):
1
*/

int	main(void)
{
	printf("Test 1 (n = %d):\n", 3);
	fflush(stdout);
	ft_print_repeated_number_triangle(3);

	printf("Test 2 (n = %d):\n", 1);
	fflush(stdout);
	ft_print_repeated_number_triangle(1);
	return (0);
}

/*
EDGE CASES:
n <= 9. Avoid trailing spaces after visible characters.

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

cat > 03_ft_print_alphabet_triangle.c <<'EOF'
#include <unistd.h>
#include <stdio.h>

void	ft_print_alphabet_triangle(int n)
{
	
}

/*
GOAL:
Print rows A, AB, ABC, and so on.

ALLOWED FUNCTIONS:
write (printf is used only inside tests, if needed).

TODO:
1. Identify the relationship between the row and column indices.
2. Convert the column index to an uppercase letter.
3. Print each row with exactly one final newline.
4. Handle the small-size boundary shown in the tests.

EXPECTED OUTPUT:
Test 1 (n = 3):
A
AB
ABC
Test 2 (n = 1):
A
*/

int	main(void)
{
	printf("Test 1 (n = %d):\n", 3);
	fflush(stdout);
	ft_print_alphabet_triangle(3);

	printf("Test 2 (n = %d):\n", 1);
	fflush(stdout);
	ft_print_alphabet_triangle(1);
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

cat > 04_ft_print_pascal_triangle.c <<'EOF'
#include <unistd.h>
#include <stdio.h>

void	ft_print_pascal_triangle(int n)
{
	
}

/*
GOAL:
Print the first n rows of Pascal's triangle separated by single spaces.

ALLOWED FUNCTIONS:
write (printf is used only inside tests, if needed).

TODO:
1. Identify the relationship between the row and column indices.
2. Compute each coefficient from the previous row or successive combinations.
3. Print each row with exactly one final newline.
4. Handle the small-size boundary shown in the tests.

EXPECTED OUTPUT:
Test 1 (n = 5):
1
1 1
1 2 1
1 3 3 1
1 4 6 4 1
Test 2 (n = 1):
1
*/

int	main(void)
{
	printf("Test 1 (n = %d):\n", 5);
	fflush(stdout);
	ft_print_pascal_triangle(5);

	printf("Test 2 (n = %d):\n", 1);
	fflush(stdout);
	ft_print_pascal_triangle(1);
	return (0);
}

/*
EDGE CASES:
Values can have more than one digit; n <= 6 for test sizes. Avoid trailing spaces after visible characters.

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

cat > 05_ft_print_floyd_triangle.c <<'EOF'
#include <unistd.h>
#include <stdio.h>

void	ft_print_floyd_triangle(int n)
{
	
}

/*
GOAL:
Print consecutive integers in triangular rows separated by single spaces.

ALLOWED FUNCTIONS:
write (printf is used only inside tests, if needed).

TODO:
1. Identify the relationship between the row and column indices.
2. Maintain a number counter across rows.
3. Print each row with exactly one final newline.
4. Handle the small-size boundary shown in the tests.

EXPECTED OUTPUT:
Test 1 (n = 4):
1
2 3
4 5 6
7 8 9 10
Test 2 (n = 1):
1
*/

int	main(void)
{
	printf("Test 1 (n = %d):\n", 4);
	fflush(stdout);
	ft_print_floyd_triangle(4);

	printf("Test 2 (n = %d):\n", 1);
	fflush(stdout);
	ft_print_floyd_triangle(1);
	return (0);
}

/*
EDGE CASES:
Numbers can have multiple digits. Avoid trailing spaces after visible characters.

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

cat > 06_ft_print_number_pyramid.c <<'EOF'
#include <unistd.h>
#include <stdio.h>

void	ft_print_number_pyramid(int n)
{
	
}

/*
GOAL:
Print a centered triangle with spaced ascending numbers on each row.

ALLOWED FUNCTIONS:
write (printf is used only inside tests, if needed).

TODO:
1. Identify the relationship between the row and column indices.
2. Row i starts with n-i spaces followed by 1 through i separated by spaces.
3. Print each row with exactly one final newline.
4. Handle the small-size boundary shown in the tests.

EXPECTED OUTPUT:
Test 1 (n = 3):
  1
 1 2
1 2 3
Test 2 (n = 1):
1
*/

int	main(void)
{
	printf("Test 1 (n = %d):\n", 3);
	fflush(stdout);
	ft_print_number_pyramid(3);

	printf("Test 2 (n = %d):\n", 1);
	fflush(stdout);
	ft_print_number_pyramid(1);
	return (0);
}

/*
EDGE CASES:
n <= 9. Avoid trailing spaces after visible characters.

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

cat > 07_ft_print_palindrome_triangle.c <<'EOF'
#include <unistd.h>
#include <stdio.h>

void	ft_print_palindrome_triangle(int n)
{
	
}

/*
GOAL:
Print a centered number palindrome on each row.

ALLOWED FUNCTIONS:
write (printf is used only inside tests, if needed).

TODO:
1. Identify the relationship between the row and column indices.
2. Ascend from 1 to row number and descend back to 1.
3. Print each row with exactly one final newline.
4. Handle the small-size boundary shown in the tests.

EXPECTED OUTPUT:
Test 1 (n = 3):
  1
 121
12321
Test 2 (n = 1):
1
*/

int	main(void)
{
	printf("Test 1 (n = %d):\n", 3);
	fflush(stdout);
	ft_print_palindrome_triangle(3);

	printf("Test 2 (n = %d):\n", 1);
	fflush(stdout);
	ft_print_palindrome_triangle(1);
	return (0);
}

/*
EDGE CASES:
No spaces inside the digits. Avoid trailing spaces after visible characters.

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

cat > 08_ft_print_alphabet_pyramid.c <<'EOF'
#include <unistd.h>
#include <stdio.h>

void	ft_print_alphabet_pyramid(int n)
{
	
}

/*
GOAL:
Print a centered letter palindrome pyramid.

ALLOWED FUNCTIONS:
write (printf is used only inside tests, if needed).

TODO:
1. Identify the relationship between the row and column indices.
2. Ascend A..letter and descend back to A.
3. Print each row with exactly one final newline.
4. Handle the small-size boundary shown in the tests.

EXPECTED OUTPUT:
Test 1 (n = 3):
  A
 ABA
ABCBA
Test 2 (n = 1):
A
*/

int	main(void)
{
	printf("Test 1 (n = %d):\n", 3);
	fflush(stdout);
	ft_print_alphabet_pyramid(3);

	printf("Test 2 (n = %d):\n", 1);
	fflush(stdout);
	ft_print_alphabet_pyramid(1);
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

cat > 09_ft_print_alternating_binary.c <<'EOF'
#include <unistd.h>
#include <stdio.h>

void	ft_print_alternating_binary(int n)
{
	
}

/*
GOAL:
Print a triangular sequence of alternating zeroes and ones.

ALLOWED FUNCTIONS:
write (printf is used only inside tests, if needed).

TODO:
1. Identify the relationship between the row and column indices.
2. Use the parity of row+column; start first row with 0.
3. Print each row with exactly one final newline.
4. Handle the small-size boundary shown in the tests.

EXPECTED OUTPUT:
Test 1 (n = 3):
0
10
010
Test 2 (n = 1):
0
*/

int	main(void)
{
	printf("Test 1 (n = %d):\n", 3);
	fflush(stdout);
	ft_print_alternating_binary(3);

	printf("Test 2 (n = %d):\n", 1);
	fflush(stdout);
	ft_print_alternating_binary(1);
	return (0);
}

/*
EDGE CASES:
The leftmost digit alternates each row. Avoid trailing spaces after visible characters.

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

cat > 10_ft_print_consecutive_letters.c <<'EOF'
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
EOF

cat > 11_ft_print_number_diamond.c <<'EOF'
#include <unistd.h>
#include <stdio.h>

void	ft_print_number_diamond(int n)
{
	
}

/*
GOAL:
Print a diamond of number palindromes.

ALLOWED FUNCTIONS:
write (printf is used only inside tests, if needed).

TODO:
1. Identify the relationship between the row and column indices.
2. Mirror the centered number-palindrome triangle.
3. Print each row with exactly one final newline.
4. Handle the small-size boundary shown in the tests.

EXPECTED OUTPUT:
Test 1 (n = 3):
  1
 121
12321
 121
  1
Test 2 (n = 1):
1
*/

int	main(void)
{
	printf("Test 1 (n = %d):\n", 3);
	fflush(stdout);
	ft_print_number_diamond(3);

	printf("Test 2 (n = %d):\n", 1);
	fflush(stdout);
	ft_print_number_diamond(1);
	return (0);
}

/*
EDGE CASES:
Print widest row once. Avoid trailing spaces after visible characters.

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

echo "Reset 12 exercises in 03_numbers_and_letters."
