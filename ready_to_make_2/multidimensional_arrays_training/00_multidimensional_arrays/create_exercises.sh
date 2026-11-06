#!/usr/bin/env bash

set -euo pipefail

cd "$(dirname "$0")" || exit 1

cat > 00_ft_print_grid.c <<'EOF'
#include <unistd.h>
#include <stdio.h>

void	ft_print_grid(int grid[3][3])
{
	
}

/*
GOAL:
Print all nine numbers of a 3x3 matrix in row order.

TODO:
1. Visit each row from top to bottom.
2. Visit columns from left to right.
3. Separate values with spaces and rows with newlines.

EXPECTED OUTPUT:
Test 1:
1 2 3
4 5 6
7 8 9
*/

int	main(void)
{
	int	grid[3][3] = {
		{1, 2, 3},
		{4, 5, 6},
		{7, 8, 9}
	};

	printf("Test 1:\n");
	fflush(stdout);
	ft_print_grid(grid);
	return (0);
}

/*
EDGE CASES:
Print exactly three values per row; do not print a trailing space.

LEARNING CHECK:
1. Why do two nested loops help here?
2. Which index changes fastest?
3. How many values are in grid[3][3]?
4. How are its rows laid out in memory?

NOTE:
Implement the exercise function yourself; testing helpers are provided.
Do not run the test before implementing a non-void function.
Keep implementation functions at or below 25 lines and respect 42 Norm.
*/
EOF

cat > 01_ft_print_row.c <<'EOF'
#include <unistd.h>
#include <stdio.h>

void	ft_print_row(int grid[3][3], int row)
{
	
}

/*
GOAL:
Print one row of a 3x3 integer matrix on a single line.

TODO:
1. Hold row constant.
2. Visit the three columns.
3. Print spaces between values and one final newline.

EXPECTED OUTPUT:
Test 1:
4 5 6
Test 2:
7 8 9
*/

int	main(void)
{
	int	grid[3][3] = {
		{1, 2, 3},
		{4, 5, 6},
		{7, 8, 9}
	};

	printf("Test 1:\n");
	fflush(stdout);
	ft_print_row(grid, 1);
	printf("Test 2:\n");
	fflush(stdout);
	ft_print_row(grid, 2);
	return (0);
}

/*
EDGE CASES:
Assume row is 0, 1, or 2; avoid a trailing space.

LEARNING CHECK:
1. What does each array index represent?
2. Which dimension should the loop traverse?
3. What happens at the first or last valid index?
4. How would this operation help in a larger matrix algorithm?

NOTE:
Implement the exercise function yourself; testing helpers are provided.
Do not run the test before implementing a non-void function.
Keep implementation functions at or below 25 lines and respect 42 Norm.
*/
EOF

cat > 02_ft_print_column.c <<'EOF'
#include <unistd.h>
#include <stdio.h>

void	ft_print_column(int grid[3][3], int col)
{
	
}

/*
GOAL:
Print one column of a 3x3 matrix, one value per line.

TODO:
1. Hold col constant.
2. Visit rows from top to bottom.
3. Print each number followed by a newline.

EXPECTED OUTPUT:
Test 1:
2
5
8
Test 2:
3
6
9
*/

int	main(void)
{
	int	grid[3][3] = {
		{1, 2, 3},
		{4, 5, 6},
		{7, 8, 9}
	};

	printf("Test 1:\n");
	fflush(stdout);
	ft_print_column(grid, 1);
	printf("Test 2:\n");
	fflush(stdout);
	ft_print_column(grid, 2);
	return (0);
}

/*
EDGE CASES:
Assume col is within 0 to 2.

LEARNING CHECK:
1. What does each array index represent?
2. Which dimension should the loop traverse?
3. What happens at the first or last valid index?
4. How would this operation help in a larger matrix algorithm?

NOTE:
Implement the exercise function yourself; testing helpers are provided.
Do not run the test before implementing a non-void function.
Keep implementation functions at or below 25 lines and respect 42 Norm.
*/
EOF

cat > 03_ft_get_value.c <<'EOF'
#include <stdio.h>

int	ft_get_value(int grid[3][3], int row, int col)
{
	
}

/*
GOAL:
Return the value stored at the requested row and column.

TODO:
1. Identify the row index.
2. Identify the column index.
3. Return the selected integer.

EXPECTED OUTPUT:
Test 1: 6
Test 2: 1
Test 3: 9
*/

int	main(void)
{
	int	grid[3][3] = {
		{1, 2, 3},
		{4, 5, 6},
		{7, 8, 9}
	};

	printf("Test 1: %d\n", ft_get_value(grid, 1, 2));
	printf("Test 2: %d\n", ft_get_value(grid, 0, 0));
	printf("Test 3: %d\n", ft_get_value(grid, 2, 2));
	return (0);
}

/*
EDGE CASES:
The caller supplies valid indices in the range 0 to 2.

LEARNING CHECK:
1. What does each array index represent?
2. Which dimension should the loop traverse?
3. What happens at the first or last valid index?
4. How would this operation help in a larger matrix algorithm?

NOTE:
Implement the exercise function yourself; testing helpers are provided.
Do not run the test before implementing a non-void function.
Keep implementation functions at or below 25 lines and respect 42 Norm.
*/
EOF

cat > 04_ft_set_value.c <<'EOF'
#include <stdio.h>

void	ft_set_value(int grid[3][3], int row, int col, int value)
{
	
}

/*
GOAL:
Change a selected element without modifying neighboring cells.

TODO:
1. Locate the requested cell.
2. Assign the new value.
3. Leave other elements unchanged.

EXPECTED OUTPUT:
Before:
{1, 2, 3},
{4, 5, 6},
{7, 8, 9},

After change 1:
{1, 2, 3},
{4, 5, 42},
{7, 8, 9},
Test 1: 42

After change 2:
{-7, 2, 3},
{4, 5, 42},
{7, 8, 9},
Test 2: -7
Test 3: 5
*/

static void	ft_test_print_grid(int grid[3][3]);

int	main(void)
{
	int	grid[3][3] = {
		{1, 2, 3},
		{4, 5, 6},
		{7, 8, 9}
	};

	printf("Before:\n");
	ft_test_print_grid(grid);
	ft_set_value(grid, 1, 2, 42);
	printf("\nAfter change 1:\n");
	ft_test_print_grid(grid);
	printf("Test 1: %d\n", grid[1][2]);
	ft_set_value(grid, 0, 0, -7);
	printf("\nAfter change 2:\n");
	ft_test_print_grid(grid);
	printf("Test 2: %d\n", grid[0][0]);
	printf("Test 3: %d\n", grid[1][1]);
	return (0);
}

static void	ft_test_print_grid(int grid[3][3])
{
	int	i;

	i = 0;
	while (i < 3)
	{
		printf("{%d, %d, %d},\n", grid[i][0],
			grid[i][1], grid[i][2]);
		i++;
	}
}

/*
EDGE CASES:
The test checks that an untouched element still retains its original value.

LEARNING CHECK:
1. What does each array index represent?
2. Which dimension should the loop traverse?
3. What happens at the first or last valid index?
4. How would this operation help in a larger matrix algorithm?

NOTE:
Implement the exercise function yourself; testing helpers are provided.
Do not run the test before implementing a non-void function.
Keep implementation functions at or below 25 lines and respect 42 Norm.
*/
EOF

cat > 05_ft_fill_grid.c <<'EOF'
#include <stdio.h>

void	ft_fill_grid(int grid[3][3], int value)
{
	
}

/*
GOAL:
Fill all cells of a 3x3 matrix with the given integer.

TODO:
1. Loop over every row.
2. Loop over each column in that row.
3. Store value in every cell.

EXPECTED OUTPUT:
Before:
{1, 2, 3},
{4, 5, 6},
{7, 8, 9},

After change 1:
{7, 7, 7},
{7, 7, 7},
{7, 7, 7},
Test 1: 7 7 7

After change 2:
{0, 0, 0},
{0, 0, 0},
{0, 0, 0},
Test 2: 0 0 0
*/

static void	ft_test_print_grid(int grid[3][3]);

int	main(void)
{
	int	grid[3][3] = {
		{1, 2, 3},
		{4, 5, 6},
		{7, 8, 9}
	};

	printf("Before:\n");
	ft_test_print_grid(grid);
	ft_fill_grid(grid, 7);
	printf("\nAfter change 1:\n");
	ft_test_print_grid(grid);
	printf("Test 1: %d %d %d\n", grid[0][0], grid[1][1], grid[2][2]);
	ft_fill_grid(grid, 0);
	printf("\nAfter change 2:\n");
	ft_test_print_grid(grid);
	printf("Test 2: %d %d %d\n", grid[0][2], grid[1][0], grid[2][1]);
	return (0);
}

static void	ft_test_print_grid(int grid[3][3])
{
	int	i;

	i = 0;
	while (i < 3)
	{
		printf("{%d, %d, %d},\n", grid[i][0],
			grid[i][1], grid[i][2]);
		i++;
	}
}

/*
EDGE CASES:
Include zero and repeated filling; all nine cells must change.

LEARNING CHECK:
1. What does each array index represent?
2. Which dimension should the loop traverse?
3. What happens at the first or last valid index?
4. How would this operation help in a larger matrix algorithm?

NOTE:
Implement the exercise function yourself; testing helpers are provided.
Do not run the test before implementing a non-void function.
Keep implementation functions at or below 25 lines and respect 42 Norm.
*/
EOF

cat > 06_ft_print_rectangle.c <<'EOF'
#include <unistd.h>
#include <stdio.h>

void	ft_print_rectangle(int grid[2][3])
{
	
}

/*
GOAL:
Print a rectangular 2x3 matrix, respecting different row and column counts.

TODO:
1. Loop twice over rows.
2. Loop three times over columns.
3. Format each row on one line.

EXPECTED OUTPUT:
Test 1:
1 2 3
4 5 6
*/

int	main(void)
{
	int	grid[2][3] = {
		{1, 2, 3},
		{4, 5, 6}
	};

	printf("Test 1:\n");
	fflush(stdout);
	ft_print_rectangle(grid);
	return (0);
}

/*
EDGE CASES:
The number of columns differs from the number of rows.

LEARNING CHECK:
1. What does each array index represent?
2. Which dimension should the loop traverse?
3. What happens at the first or last valid index?
4. How would this operation help in a larger matrix algorithm?

NOTE:
Implement the exercise function yourself; testing helpers are provided.
Do not run the test before implementing a non-void function.
Keep implementation functions at or below 25 lines and respect 42 Norm.
*/
EOF

cat > 07_ft_sum_grid.c <<'EOF'
#include <stdio.h>

int	ft_sum_grid(int grid[3][3])
{
	
}

/*
GOAL:
Return the sum of all nine matrix entries.

TODO:
1. Start a total at zero.
2. Visit every row and column.
3. Add each value and return the total.

EXPECTED OUTPUT:
Test 1: 45
Test 2: 0
*/

static void	ft_zero_for_test(int grid[3][3]);

int	main(void)
{
	int	grid[3][3] = {
		{1, 2, 3},
		{4, 5, 6},
		{7, 8, 9}
	};

	printf("Test 1: %d\n", ft_sum_grid(grid));
	ft_zero_for_test(grid);
	printf("Test 2: %d\n", ft_sum_grid(grid));
	return (0);
}

static void	ft_zero_for_test(int grid[3][3])
{
	int	row;
	int	col;

	row = 0;
	while (row < 3)
	{
		col = 0;
		while (col < 3)
			grid[row][col++] = 0;
		row++;
	}
}

/*
EDGE CASES:
All-zero matrices must produce zero. The test-only helper resets the grid.

LEARNING CHECK:
1. What does each array index represent?
2. Which dimension should the loop traverse?
3. What happens at the first or last valid index?
4. How would this operation help in a larger matrix algorithm?

NOTE:
Implement the exercise function yourself; testing helpers are provided.
Do not run the test before implementing a non-void function.
Keep implementation functions at or below 25 lines and respect 42 Norm.
*/
EOF

cat > 08_ft_count_nonzero.c <<'EOF'
#include <stdio.h>

int	ft_count_nonzero(int grid[3][3])
{
	
}

/*
GOAL:
Count how many matrix elements are not zero.

TODO:
1. Initialize a counter.
2. Inspect each cell.
3. Increment for each nonzero element.

EXPECTED OUTPUT:
Test 1: 9
Test 2: 7
*/

int	main(void)
{
	int	grid[3][3] = {
		{1, 2, 3},
		{4, 5, 6},
		{7, 8, 9}
	};

	printf("Test 1: %d\n", ft_count_nonzero(grid));
	grid[0][0] = 0;
	grid[2][2] = 0;
	printf("Test 2: %d\n", ft_count_nonzero(grid));
	return (0);
}

/*
EDGE CASES:
Zero is excluded; negative values would still count.

LEARNING CHECK:
1. What does each array index represent?
2. Which dimension should the loop traverse?
3. What happens at the first or last valid index?
4. How would this operation help in a larger matrix algorithm?

NOTE:
Implement the exercise function yourself; testing helpers are provided.
Do not run the test before implementing a non-void function.
Keep implementation functions at or below 25 lines and respect 42 Norm.
*/
EOF

cat > 09_ft_swap_cells.c <<'EOF'
#include <stdio.h>

void	ft_swap_cells(int grid[3][3], int r1, int c1, int r2, int c2)
{
	
}

/*
GOAL:
Swap the integers stored at two coordinates in the same matrix.

TODO:
1. Save one of the two values.
2. Move the second value into the first cell.
3. Store the saved value in the second cell.

EXPECTED OUTPUT:
Before:
{1, 2, 3},
{4, 5, 6},
{7, 8, 9},

After change 1:
{9, 2, 3},
{4, 5, 6},
{7, 8, 1},
Test 1: 9 1

After change 2:
{9, 2, 3},
{4, 5, 6},
{7, 8, 1},
Test 2: 5
*/

static void	ft_test_print_grid(int grid[3][3]);

int	main(void)
{
	int	grid[3][3] = {
		{1, 2, 3},
		{4, 5, 6},
		{7, 8, 9}
	};

	printf("Before:\n");
	ft_test_print_grid(grid);
	ft_swap_cells(grid, 0, 0, 2, 2);
	printf("\nAfter change 1:\n");
	ft_test_print_grid(grid);
	printf("Test 1: %d %d\n", grid[0][0], grid[2][2]);
	ft_swap_cells(grid, 1, 1, 1, 1);
	printf("\nAfter change 2:\n");
	ft_test_print_grid(grid);
	printf("Test 2: %d\n", grid[1][1]);
	return (0);
}

static void	ft_test_print_grid(int grid[3][3])
{
	int	i;

	i = 0;
	while (i < 3)
	{
		printf("{%d, %d, %d},\n", grid[i][0],
			grid[i][1], grid[i][2]);
		i++;
	}
}

/*
EDGE CASES:
Swapping a cell with itself should leave it unchanged.

LEARNING CHECK:
1. What does each array index represent?
2. Which dimension should the loop traverse?
3. What happens at the first or last valid index?
4. How would this operation help in a larger matrix algorithm?

NOTE:
Implement the exercise function yourself; testing helpers are provided.
Do not run the test before implementing a non-void function.
Keep implementation functions at or below 25 lines and respect 42 Norm.
*/
EOF

cat > 10_ft_sum_row.c <<'EOF'
#include <stdio.h>

int	ft_sum_row(int grid[3][3], int row)
{
	
}

/*
GOAL:
Return the sum of a selected row.

TODO:
1. Fix the row index.
2. Visit each column.
3. Accumulate the values.

EXPECTED OUTPUT:
Test 1: 6
Test 2: 24
*/

int	main(void)
{
	int	grid[3][3] = {
		{1, 2, 3},
		{4, 5, 6},
		{7, 8, 9}
	};

	printf("Test 1: %d\n", ft_sum_row(grid, 0));
	printf("Test 2: %d\n", ft_sum_row(grid, 2));
	return (0);
}

/*
EDGE CASES:
The caller passes a valid row index.

LEARNING CHECK:
1. What does each array index represent?
2. Which dimension should the loop traverse?
3. What happens at the first or last valid index?
4. How would this operation help in a larger matrix algorithm?

NOTE:
Implement the exercise function yourself; testing helpers are provided.
Do not run the test before implementing a non-void function.
Keep implementation functions at or below 25 lines and respect 42 Norm.
*/
EOF

cat > 11_ft_sum_column.c <<'EOF'
#include <stdio.h>

int	ft_sum_column(int grid[3][3], int col)
{
	
}

/*
GOAL:
Return the sum of a selected column.

TODO:
1. Fix the column index.
2. Visit each row.
3. Accumulate the values.

EXPECTED OUTPUT:
Test 1: 12
Test 2: 18
*/

int	main(void)
{
	int	grid[3][3] = {
		{1, 2, 3},
		{4, 5, 6},
		{7, 8, 9}
	};

	printf("Test 1: %d\n", ft_sum_column(grid, 0));
	printf("Test 2: %d\n", ft_sum_column(grid, 2));
	return (0);
}

/*
EDGE CASES:
The caller passes a valid column index.

LEARNING CHECK:
1. What does each array index represent?
2. Which dimension should the loop traverse?
3. What happens at the first or last valid index?
4. How would this operation help in a larger matrix algorithm?

NOTE:
Implement the exercise function yourself; testing helpers are provided.
Do not run the test before implementing a non-void function.
Keep implementation functions at or below 25 lines and respect 42 Norm.
*/
EOF

cat > 12_ft_max_grid.c <<'EOF'
#include <stdio.h>

int	ft_max_grid(int grid[3][3])
{
	
}

/*
GOAL:
Find the largest element in a 3x3 integer grid.

TODO:
1. Start with an existing grid value.
2. Compare every cell with the current maximum.
3. Return the largest value.

EXPECTED OUTPUT:
Test 1: 9
Test 2: -1
*/

static void	ft_set_negative_for_test(int grid[3][3]);

int	main(void)
{
	int	grid[3][3] = {
		{1, 2, 3},
		{4, 5, 6},
		{7, 8, 9}
	};

	printf("Test 1: %d\n", ft_max_grid(grid));
	ft_set_negative_for_test(grid);
	printf("Test 2: %d\n", ft_max_grid(grid));
	return (0);
}

static void	ft_set_negative_for_test(int grid[3][3])
{
	int	row;
	int	col;

	row = 0;
	while (row < 3)
	{
		col = 0;
		while (col < 3)
			grid[row][col++] = -1 - row;
		row++;
	}
}

/*
EDGE CASES:
An all-negative grid must not incorrectly return zero.

LEARNING CHECK:
1. What does each array index represent?
2. Which dimension should the loop traverse?
3. What happens at the first or last valid index?
4. How would this operation help in a larger matrix algorithm?

NOTE:
Implement the exercise function yourself; testing helpers are provided.
Do not run the test before implementing a non-void function.
Keep implementation functions at or below 25 lines and respect 42 Norm.
*/
EOF

cat > 13_ft_min_grid.c <<'EOF'
#include <stdio.h>

int	ft_min_grid(int grid[3][3])
{
	
}

/*
GOAL:
Find the smallest element in a 3x3 grid.

TODO:
1. Initialize the minimum from the first cell.
2. Visit every element.
3. Update the minimum when needed.

EXPECTED OUTPUT:
Test 1: 1
Test 2: -8
*/

int	main(void)
{
	int	grid[3][3] = {
		{1, 2, 3},
		{4, 5, 6},
		{7, 8, 9}
	};

	printf("Test 1: %d\n", ft_min_grid(grid));
	grid[2][1] = -8;
	printf("Test 2: %d\n", ft_min_grid(grid));
	return (0);
}

/*
EDGE CASES:
The smallest element may be negative or appear in the last row.

LEARNING CHECK:
1. What does each array index represent?
2. Which dimension should the loop traverse?
3. What happens at the first or last valid index?
4. How would this operation help in a larger matrix algorithm?

NOTE:
Implement the exercise function yourself; testing helpers are provided.
Do not run the test before implementing a non-void function.
Keep implementation functions at or below 25 lines and respect 42 Norm.
*/
EOF

cat > 14_ft_count_value.c <<'EOF'
#include <stdio.h>

int	ft_count_value(int grid[3][3], int value)
{
	
}

/*
GOAL:
Count occurrences of a selected value.

TODO:
1. Visit each cell.
2. Compare with value.
3. Count all matches.

EXPECTED OUTPUT:
Test 1: 4
Test 2: 0
Test 3: 3
*/

int	main(void)
{
	int	grid[3][3] = {
		{1, 2, 3},
		{2, 3, 2},
		{1, 2, 1}
	};

	printf("Test 1: %d\n", ft_count_value(grid, 2));
	printf("Test 2: %d\n", ft_count_value(grid, 9));
	printf("Test 3: %d\n", ft_count_value(grid, 1));
	return (0);
}

/*
EDGE CASES:
Return zero when no element matches.

LEARNING CHECK:
1. What does each array index represent?
2. Which dimension should the loop traverse?
3. What happens at the first or last valid index?
4. How would this operation help in a larger matrix algorithm?

NOTE:
Implement the exercise function yourself; testing helpers are provided.
Do not run the test before implementing a non-void function.
Keep implementation functions at or below 25 lines and respect 42 Norm.
*/
EOF

cat > 15_ft_find_value.c <<'EOF'
#include <stdio.h>

int	ft_find_value(int grid[3][3], int value, int *row, int *col)
{
	
}

/*
GOAL:
Find the first matching value in row-major order and store its coordinates.

TODO:
1. Search rows top to bottom.
2. Search columns left to right.
3. Store coordinates and return 1, or return 0 if absent.

EXPECTED OUTPUT:
Test 1: 1 (0, 1)
Test 2: 0
*/

int	main(void)
{
	int	grid[3][3] = {
		{1, 2, 3},
		{2, 3, 2},
		{1, 2, 1}
	};
	int	row = -1;
	int	col = -1;

	printf("Test 1: ");
	if (ft_find_value(grid, 2, &row, &col))
		printf("1 (%d, %d)\n", row, col);
	printf("Test 2: %d\n", ft_find_value(grid, 9, &row, &col));
	return (0);
}

/*
EDGE CASES:
Do not change output pointers on an unsuccessful search.

LEARNING CHECK:
1. What does each array index represent?
2. Which dimension should the loop traverse?
3. What happens at the first or last valid index?
4. How would this operation help in a larger matrix algorithm?

NOTE:
Implement the exercise function yourself; testing helpers are provided.
Do not run the test before implementing a non-void function.
Keep implementation functions at or below 25 lines and respect 42 Norm.
*/
EOF

cat > 16_ft_sum_diagonal.c <<'EOF'
#include <stdio.h>

int	ft_sum_diagonal(int grid[3][3])
{
	
}

/*
GOAL:
Sum the main diagonal (top-left to bottom-right).

TODO:
1. Visit indices 0 through 2.
2. Access the element where row equals column.
3. Return the diagonal sum.

EXPECTED OUTPUT:
Test 1: 15
Test 2: 13
*/

int	main(void)
{
	int	grid[3][3] = {
		{1, 2, 3},
		{4, 5, 6},
		{7, 8, 9}
	};

	printf("Test 1: %d\n", ft_sum_diagonal(grid));
	grid[1][1] = 3;
	printf("Test 2: %d\n", ft_sum_diagonal(grid));
	return (0);
}

/*
EDGE CASES:
Only the three main-diagonal cells contribute.

LEARNING CHECK:
1. What does each array index represent?
2. Which dimension should the loop traverse?
3. What happens at the first or last valid index?
4. How would this operation help in a larger matrix algorithm?

NOTE:
Implement the exercise function yourself; testing helpers are provided.
Do not run the test before implementing a non-void function.
Keep implementation functions at or below 25 lines and respect 42 Norm.
*/
EOF

cat > 17_ft_sum_antidiagonal.c <<'EOF'
#include <stdio.h>

int	ft_sum_antidiagonal(int grid[3][3])
{
	
}

/*
GOAL:
Sum the anti-diagonal (top-right to bottom-left).

TODO:
1. Traverse row indices 0 through 2.
2. Pair each row with column 2 minus row.
3. Accumulate the selected values.

EXPECTED OUTPUT:
Test 1: 15
Test 2: 20
*/

int	main(void)
{
	int	grid[3][3] = {
		{1, 2, 3},
		{4, 5, 6},
		{7, 8, 9}
	};

	printf("Test 1: %d\n", ft_sum_antidiagonal(grid));
	grid[0][2] = 8;
	printf("Test 2: %d\n", ft_sum_antidiagonal(grid));
	return (0);
}

/*
EDGE CASES:
For odd dimensions, both diagonals meet in the center.

LEARNING CHECK:
1. What does each array index represent?
2. Which dimension should the loop traverse?
3. What happens at the first or last valid index?
4. How would this operation help in a larger matrix algorithm?

NOTE:
Implement the exercise function yourself; testing helpers are provided.
Do not run the test before implementing a non-void function.
Keep implementation functions at or below 25 lines and respect 42 Norm.
*/
EOF

cat > 18_ft_sum_border.c <<'EOF'
#include <stdio.h>

int	ft_sum_border(int grid[3][3])
{
	
}

/*
GOAL:
Return the sum of the outer border without counting corners twice.

TODO:
1. Check if a cell lies on the first or last row.
2. Also include the first or last column.
3. Sum each border cell once.

EXPECTED OUTPUT:
Test 1: 40
Test 2: 40
*/

int	main(void)
{
	int	grid[3][3] = {
		{1, 2, 3},
		{4, 5, 6},
		{7, 8, 9}
	};

	printf("Test 1: %d\n", ft_sum_border(grid));
	grid[1][1] = 999;
	printf("Test 2: %d\n", ft_sum_border(grid));
	return (0);
}

/*
EDGE CASES:
The center cell is excluded; each corner counts exactly once.

LEARNING CHECK:
1. What does each array index represent?
2. Which dimension should the loop traverse?
3. What happens at the first or last valid index?
4. How would this operation help in a larger matrix algorithm?

NOTE:
Implement the exercise function yourself; testing helpers are provided.
Do not run the test before implementing a non-void function.
Keep implementation functions at or below 25 lines and respect 42 Norm.
*/
EOF

cat > 19_ft_count_positive.c <<'EOF'
#include <stdio.h>

int	ft_count_positive(int grid[3][3])
{
	
}

/*
GOAL:
Count strictly positive values in a matrix.

TODO:
1. Traverse all cells.
2. Test whether each value is greater than zero.
3. Return the number of matches.

EXPECTED OUTPUT:
Test 1: 5
Test 2: 6
*/

int	main(void)
{
	int	grid[3][3] = {
		{-1, 0, 2},
		{3, -4, 5},
		{0, 6, 7}
	};

	printf("Test 1: %d\n", ft_count_positive(grid));
	grid[0][1] = 8;
	printf("Test 2: %d\n", ft_count_positive(grid));
	return (0);
}

/*
EDGE CASES:
Zero does not count as positive.

LEARNING CHECK:
1. What does each array index represent?
2. Which dimension should the loop traverse?
3. What happens at the first or last valid index?
4. How would this operation help in a larger matrix algorithm?

NOTE:
Implement the exercise function yourself; testing helpers are provided.
Do not run the test before implementing a non-void function.
Keep implementation functions at or below 25 lines and respect 42 Norm.
*/
EOF

cat > 20_ft_copy_grid.c <<'EOF'
#include <stdio.h>

void	ft_copy_grid(int src[3][3], int dest[3][3])
{
	
}

/*
GOAL:
Copy all values from a 3x3 source matrix to a destination matrix.

TODO:
1. Traverse source coordinates.
2. Assign each value to the same destination coordinate.
3. Do not alter the source.

EXPECTED OUTPUT:
Before:
{1, 2, 3},
{4, 5, 6},
{7, 8, 9},

After:
{1, 2, 3},
{4, 5, 6},
{7, 8, 9},
Test 1: 1 5 9
Test 2: 1
*/

static void	ft_test_print_grid(int grid[3][3]);

int	main(void)
{
	int	grid[3][3] = {
		{1, 2, 3},
		{4, 5, 6},
		{7, 8, 9}
	};
	int	dest[3][3] = {{0}};

	printf("Before:\n");
	ft_test_print_grid(grid);
	ft_copy_grid(grid, dest);
	printf("\nAfter:\n");
	ft_test_print_grid(dest);
	printf("Test 1: %d %d %d\n", dest[0][0], dest[1][1], dest[2][2]);
	dest[0][0] = 42;
	printf("Test 2: %d\n", grid[0][0]);
	return (0);
}

static void	ft_test_print_grid(int grid[3][3])
{
	int	i;

	i = 0;
	while (i < 3)
	{
		printf("{%d, %d, %d},\n", grid[i][0],
			grid[i][1], grid[i][2]);
		i++;
	}
}

/*
EDGE CASES:
After copying, changing the destination must not change the source.

LEARNING CHECK:
1. What does each array index represent?
2. Which dimension should the loop traverse?
3. What happens at the first or last valid index?
4. How would this operation help in a larger matrix algorithm?

NOTE:
Implement the exercise function yourself; testing helpers are provided.
Do not run the test before implementing a non-void function.
Keep implementation functions at or below 25 lines and respect 42 Norm.
*/
EOF

cat > 21_ft_compare_grids.c <<'EOF'
#include <stdio.h>

int	ft_compare_grids(int a[3][3], int b[3][3])
{
	
}

/*
GOAL:
Return 1 only when all corresponding elements of two grids are equal.

TODO:
1. Traverse the matrices.
2. Compare corresponding coordinates.
3. Return 0 on any mismatch, otherwise 1.

EXPECTED OUTPUT:
Test 1: 1
Test 2: 0
*/

int	main(void)
{
	int	grid[3][3] = {
		{1, 2, 3},
		{4, 5, 6},
		{7, 8, 9}
	};
	int	other[3][3] = {
	{1, 2, 3}, {4, 5, 6}, {7, 8, 9}
	};

	printf("Test 1: %d\n", ft_compare_grids(grid, other));
	other[2][2] = -9;
	printf("Test 2: %d\n", ft_compare_grids(grid, other));
	return (0);
}

/*
EDGE CASES:
A difference in the final cell must be detected.

LEARNING CHECK:
1. What does each array index represent?
2. Which dimension should the loop traverse?
3. What happens at the first or last valid index?
4. How would this operation help in a larger matrix algorithm?

NOTE:
Implement the exercise function yourself; testing helpers are provided.
Do not run the test before implementing a non-void function.
Keep implementation functions at or below 25 lines and respect 42 Norm.
*/
EOF

cat > 22_ft_transpose_grid.c <<'EOF'
#include <stdio.h>

void	ft_transpose_grid(int src[3][3], int dest[3][3])
{
	
}

/*
GOAL:
Transpose a 3x3 matrix into a separate output matrix.

TODO:
1. Traverse the original rows and columns.
2. Write src[row][col] to dest[col][row].
3. Preserve the source matrix.

EXPECTED OUTPUT:
Before:
{1, 2, 3},
{4, 5, 6},
{7, 8, 9},

After:
{1, 4, 7},
{2, 5, 8},
{3, 6, 9},
Test 1: 1 4 7
Test 2: 3 6 9
*/

static void	ft_test_print_grid(int grid[3][3]);

int	main(void)
{
	int	grid[3][3] = {
		{1, 2, 3},
		{4, 5, 6},
		{7, 8, 9}
	};
	int	dest[3][3] = {{0}};

	printf("Before:\n");
	ft_test_print_grid(grid);
	ft_transpose_grid(grid, dest);
	printf("\nAfter:\n");
	ft_test_print_grid(dest);
	printf("Test 1: %d %d %d\n", dest[0][0], dest[0][1], dest[0][2]);
	printf("Test 2: %d %d %d\n", dest[2][0], dest[2][1], dest[2][2]);
	return (0);
}

static void	ft_test_print_grid(int grid[3][3])
{
	int	i;

	i = 0;
	while (i < 3)
	{
		printf("{%d, %d, %d},\n", grid[i][0],
			grid[i][1], grid[i][2]);
		i++;
	}
}

/*
EDGE CASES:
Use a separate output matrix; avoid in-place overwrite problems.

LEARNING CHECK:
1. What does each array index represent?
2. Which dimension should the loop traverse?
3. What happens at the first or last valid index?
4. How would this operation help in a larger matrix algorithm?

NOTE:
Implement the exercise function yourself; testing helpers are provided.
Do not run the test before implementing a non-void function.
Keep implementation functions at or below 25 lines and respect 42 Norm.
*/
EOF

cat > 23_ft_reverse_row.c <<'EOF'
#include <stdio.h>

void	ft_reverse_row(int grid[3][3], int row)
{
	
}

/*
GOAL:
Reverse the element order inside one selected row.

TODO:
1. Choose the row to modify.
2. Swap mirrored columns.
3. Stop at the middle.

EXPECTED OUTPUT:
Before:
{1, 2, 3},
{4, 5, 6},
{7, 8, 9},

After:
{1, 2, 3},
{6, 5, 4},
{7, 8, 9},
Test 1: 6 5 4
Test 2: 1 2 3
*/

static void	ft_test_print_grid(int grid[3][3]);

int	main(void)
{
	int	grid[3][3] = {
		{1, 2, 3},
		{4, 5, 6},
		{7, 8, 9}
	};

	printf("Before:\n");
	ft_test_print_grid(grid);
	ft_reverse_row(grid, 1);
	printf("\nAfter:\n");
	ft_test_print_grid(grid);
	printf("Test 1: %d %d %d\n", grid[1][0], grid[1][1], grid[1][2]);
	printf("Test 2: %d %d %d\n", grid[0][0], grid[0][1], grid[0][2]);
	return (0);
}

static void	ft_test_print_grid(int grid[3][3])
{
	int	i;

	i = 0;
	while (i < 3)
	{
		printf("{%d, %d, %d},\n", grid[i][0],
			grid[i][1], grid[i][2]);
		i++;
	}
}

/*
EDGE CASES:
Other rows must remain unchanged.

LEARNING CHECK:
1. What does each array index represent?
2. Which dimension should the loop traverse?
3. What happens at the first or last valid index?
4. How would this operation help in a larger matrix algorithm?

NOTE:
Implement the exercise function yourself; testing helpers are provided.
Do not run the test before implementing a non-void function.
Keep implementation functions at or below 25 lines and respect 42 Norm.
*/
EOF

cat > 24_ft_reverse_column.c <<'EOF'
#include <stdio.h>

void	ft_reverse_column(int grid[3][3], int col)
{
	
}

/*
GOAL:
Reverse the vertical order of one selected column.

TODO:
1. Choose the column to modify.
2. Swap mirrored rows in that column.
3. Stop at the middle.

EXPECTED OUTPUT:
Before:
{1, 2, 3},
{4, 5, 6},
{7, 8, 9},

After:
{1, 8, 3},
{4, 5, 6},
{7, 2, 9},
Test 1: 8 5 2
Test 2: 1 4 7
*/

static void	ft_test_print_grid(int grid[3][3]);

int	main(void)
{
	int	grid[3][3] = {
		{1, 2, 3},
		{4, 5, 6},
		{7, 8, 9}
	};

	printf("Before:\n");
	ft_test_print_grid(grid);
	ft_reverse_column(grid, 1);
	printf("\nAfter:\n");
	ft_test_print_grid(grid);
	printf("Test 1: %d %d %d\n", grid[0][1], grid[1][1], grid[2][1]);
	printf("Test 2: %d %d %d\n", grid[0][0], grid[1][0], grid[2][0]);
	return (0);
}

static void	ft_test_print_grid(int grid[3][3])
{
	int	i;

	i = 0;
	while (i < 3)
	{
		printf("{%d, %d, %d},\n", grid[i][0],
			grid[i][1], grid[i][2]);
		i++;
	}
}

/*
EDGE CASES:
Other columns must remain unchanged.

LEARNING CHECK:
1. What does each array index represent?
2. Which dimension should the loop traverse?
3. What happens at the first or last valid index?
4. How would this operation help in a larger matrix algorithm?

NOTE:
Implement the exercise function yourself; testing helpers are provided.
Do not run the test before implementing a non-void function.
Keep implementation functions at or below 25 lines and respect 42 Norm.
*/
EOF

cat > 25_ft_flip_horizontal.c <<'EOF'
#include <stdio.h>

void	ft_flip_horizontal(int grid[3][3])
{
	
}

/*
GOAL:
Mirror a matrix left to right in place.

TODO:
1. Visit each row.
2. Swap elements on opposite sides.
3. Keep the center column unchanged.

EXPECTED OUTPUT:
Before:
{1, 2, 3},
{4, 5, 6},
{7, 8, 9},

After:
{3, 2, 1},
{6, 5, 4},
{9, 8, 7},
Test 1: 3 2 1
Test 2: 9 8 7
*/

static void	ft_test_print_grid(int grid[3][3]);

int	main(void)
{
	int	grid[3][3] = {
		{1, 2, 3},
		{4, 5, 6},
		{7, 8, 9}
	};

	printf("Before:\n");
	ft_test_print_grid(grid);
	ft_flip_horizontal(grid);
	printf("\nAfter:\n");
	ft_test_print_grid(grid);
	printf("Test 1: %d %d %d\n", grid[0][0], grid[0][1], grid[0][2]);
	printf("Test 2: %d %d %d\n", grid[2][0], grid[2][1], grid[2][2]);
	return (0);
}

static void	ft_test_print_grid(int grid[3][3])
{
	int	i;

	i = 0;
	while (i < 3)
	{
		printf("{%d, %d, %d},\n", grid[i][0],
			grid[i][1], grid[i][2]);
		i++;
	}
}

/*
EDGE CASES:
A second horizontal flip would restore the original matrix.

LEARNING CHECK:
1. What does each array index represent?
2. Which dimension should the loop traverse?
3. What happens at the first or last valid index?
4. How would this operation help in a larger matrix algorithm?

NOTE:
Implement the exercise function yourself; testing helpers are provided.
Do not run the test before implementing a non-void function.
Keep implementation functions at or below 25 lines and respect 42 Norm.
*/
EOF

cat > 26_ft_flip_vertical.c <<'EOF'
#include <stdio.h>

void	ft_flip_vertical(int grid[3][3])
{
	
}

/*
GOAL:
Mirror a matrix from top to bottom in place.

TODO:
1. Match top and bottom rows.
2. Swap their corresponding elements.
3. Keep the center row unchanged.

EXPECTED OUTPUT:
Before:
{1, 2, 3},
{4, 5, 6},
{7, 8, 9},

After:
{7, 8, 9},
{4, 5, 6},
{1, 2, 3},
Test 1: 7 8 9
Test 2: 1 2 3
*/

static void	ft_test_print_grid(int grid[3][3]);

int	main(void)
{
	int	grid[3][3] = {
		{1, 2, 3},
		{4, 5, 6},
		{7, 8, 9}
	};

	printf("Before:\n");
	ft_test_print_grid(grid);
	ft_flip_vertical(grid);
	printf("\nAfter:\n");
	ft_test_print_grid(grid);
	printf("Test 1: %d %d %d\n", grid[0][0], grid[0][1], grid[0][2]);
	printf("Test 2: %d %d %d\n", grid[2][0], grid[2][1], grid[2][2]);
	return (0);
}

static void	ft_test_print_grid(int grid[3][3])
{
	int	i;

	i = 0;
	while (i < 3)
	{
		printf("{%d, %d, %d},\n", grid[i][0],
			grid[i][1], grid[i][2]);
		i++;
	}
}

/*
EDGE CASES:
Every value must stay in the matrix, only at a mirrored location.

LEARNING CHECK:
1. What does each array index represent?
2. Which dimension should the loop traverse?
3. What happens at the first or last valid index?
4. How would this operation help in a larger matrix algorithm?

NOTE:
Implement the exercise function yourself; testing helpers are provided.
Do not run the test before implementing a non-void function.
Keep implementation functions at or below 25 lines and respect 42 Norm.
*/
EOF

cat > 27_ft_rotate_clockwise.c <<'EOF'
#include <stdio.h>

void	ft_rotate_clockwise(int src[3][3], int dest[3][3])
{
	
}

/*
GOAL:
Rotate a 3x3 matrix 90 degrees clockwise into dest.

TODO:
1. Work out the destination coordinate for each source element.
2. Move elements without overwriting the source.
3. Verify the first and last rows.

EXPECTED OUTPUT:
Before:
{1, 2, 3},
{4, 5, 6},
{7, 8, 9},

After:
{7, 4, 1},
{8, 5, 2},
{9, 6, 3},
Test 1: 7 4 1
Test 2: 9 6 3
*/

static void	ft_test_print_grid(int grid[3][3]);

int	main(void)
{
	int	grid[3][3] = {
		{1, 2, 3},
		{4, 5, 6},
		{7, 8, 9}
	};
	int	dest[3][3] = {{0}};

	printf("Before:\n");
	ft_test_print_grid(grid);
	ft_rotate_clockwise(grid, dest);
	printf("\nAfter:\n");
	ft_test_print_grid(dest);
	printf("Test 1: %d %d %d\n", dest[0][0], dest[0][1], dest[0][2]);
	printf("Test 2: %d %d %d\n", dest[2][0], dest[2][1], dest[2][2]);
	return (0);
}

static void	ft_test_print_grid(int grid[3][3])
{
	int	i;

	i = 0;
	while (i < 3)
	{
		printf("{%d, %d, %d},\n", grid[i][0],
			grid[i][1], grid[i][2]);
		i++;
	}
}

/*
EDGE CASES:
Corners and center are useful positions to verify.

LEARNING CHECK:
1. What does each array index represent?
2. Which dimension should the loop traverse?
3. What happens at the first or last valid index?
4. How would this operation help in a larger matrix algorithm?

NOTE:
Implement the exercise function yourself; testing helpers are provided.
Do not run the test before implementing a non-void function.
Keep implementation functions at or below 25 lines and respect 42 Norm.
*/
EOF

cat > 28_ft_rotate_counterclockwise.c <<'EOF'
#include <stdio.h>

void	ft_rotate_counterclockwise(int src[3][3], int dest[3][3])
{
	
}

/*
GOAL:
Rotate a 3x3 matrix 90 degrees counterclockwise into dest.

TODO:
1. Determine where the top row moves.
2. Map all source coordinates to destination coordinates.
3. Preserve the source.

EXPECTED OUTPUT:
Before:
{1, 2, 3},
{4, 5, 6},
{7, 8, 9},

After:
{3, 6, 9},
{2, 5, 8},
{1, 4, 7},
Test 1: 3 6 9
Test 2: 1 4 7
*/

static void	ft_test_print_grid(int grid[3][3]);

int	main(void)
{
	int	grid[3][3] = {
		{1, 2, 3},
		{4, 5, 6},
		{7, 8, 9}
	};
	int	dest[3][3] = {{0}};

	printf("Before:\n");
	ft_test_print_grid(grid);
	ft_rotate_counterclockwise(grid, dest);
	printf("\nAfter:\n");
	ft_test_print_grid(dest);
	printf("Test 1: %d %d %d\n", dest[0][0], dest[0][1], dest[0][2]);
	printf("Test 2: %d %d %d\n", dest[2][0], dest[2][1], dest[2][2]);
	return (0);
}

static void	ft_test_print_grid(int grid[3][3])
{
	int	i;

	i = 0;
	while (i < 3)
	{
		printf("{%d, %d, %d},\n", grid[i][0],
			grid[i][1], grid[i][2]);
		i++;
	}
}

/*
EDGE CASES:
Clockwise and counterclockwise rotations are inverses.

LEARNING CHECK:
1. What does each array index represent?
2. Which dimension should the loop traverse?
3. What happens at the first or last valid index?
4. How would this operation help in a larger matrix algorithm?

NOTE:
Implement the exercise function yourself; testing helpers are provided.
Do not run the test before implementing a non-void function.
Keep implementation functions at or below 25 lines and respect 42 Norm.
*/
EOF

cat > 29_ft_zero_row.c <<'EOF'
#include <stdio.h>

void	ft_zero_row(int grid[3][3], int row)
{
	
}

/*
GOAL:
Replace every value in one selected row with zero.

TODO:
1. Choose the row.
2. Loop across its columns.
3. Set every selected element to zero.

EXPECTED OUTPUT:
Before:
{1, 2, 3},
{4, 5, 6},
{7, 8, 9},

After:
{1, 2, 3},
{4, 5, 6},
{0, 0, 0},
Test 1: 0 0 0
Test 2: 1 2 3
*/

static void	ft_test_print_grid(int grid[3][3]);

int	main(void)
{
	int	grid[3][3] = {
		{1, 2, 3},
		{4, 5, 6},
		{7, 8, 9}
	};

	printf("Before:\n");
	ft_test_print_grid(grid);
	ft_zero_row(grid, 2);
	printf("\nAfter:\n");
	ft_test_print_grid(grid);
	printf("Test 1: %d %d %d\n", grid[2][0], grid[2][1], grid[2][2]);
	printf("Test 2: %d %d %d\n", grid[0][0], grid[0][1], grid[0][2]);
	return (0);
}

static void	ft_test_print_grid(int grid[3][3])
{
	int	i;

	i = 0;
	while (i < 3)
	{
		printf("{%d, %d, %d},\n", grid[i][0],
			grid[i][1], grid[i][2]);
		i++;
	}
}

/*
EDGE CASES:
Unselected rows must remain unchanged.

LEARNING CHECK:
1. What does each array index represent?
2. Which dimension should the loop traverse?
3. What happens at the first or last valid index?
4. How would this operation help in a larger matrix algorithm?

NOTE:
Implement the exercise function yourself; testing helpers are provided.
Do not run the test before implementing a non-void function.
Keep implementation functions at or below 25 lines and respect 42 Norm.
*/
EOF

cat > 30_ft_is_identity.c <<'EOF'
#include <stdio.h>

int	ft_is_identity(int grid[3][3])
{
	
}

/*
GOAL:
Return 1 if a 3x3 matrix is an identity matrix.

TODO:
1. Expect 1 on the main diagonal.
2. Expect 0 everywhere else.
3. Return 0 for any mismatch.

EXPECTED OUTPUT:
Test 1: 1
Test 2: 0
*/

int	main(void)
{
	int	grid[3][3] = {
		{1, 0, 0},
		{0, 1, 0},
		{0, 0, 1}
	};

	printf("Test 1: %d\n", ft_is_identity(grid));
	grid[0][1] = 4;
	printf("Test 2: %d\n", ft_is_identity(grid));
	return (0);
}

/*
EDGE CASES:
An identity matrix has exactly three ones and six zeros.

LEARNING CHECK:
1. What does each array index represent?
2. Which dimension should the loop traverse?
3. What happens at the first or last valid index?
4. How would this operation help in a larger matrix algorithm?

NOTE:
Implement the exercise function yourself; testing helpers are provided.
Do not run the test before implementing a non-void function.
Keep implementation functions at or below 25 lines and respect 42 Norm.
*/
EOF

cat > 31_ft_is_symmetric.c <<'EOF'
#include <stdio.h>

int	ft_is_symmetric(int grid[3][3])
{
	
}

/*
GOAL:
Check whether the matrix equals its transpose.

TODO:
1. Compare mirrored positions across the main diagonal.
2. Find any pair that differs.
3. Return 1 only when all corresponding pairs match.

EXPECTED OUTPUT:
Test 1: 1
Test 2: 0
*/

int	main(void)
{
	int	grid[3][3] = {
		{1, 2, 3},
		{2, 4, 5},
		{3, 5, 6}
	};

	printf("Test 1: %d\n", ft_is_symmetric(grid));
	grid[2][0] = -1;
	printf("Test 2: %d\n", ft_is_symmetric(grid));
	return (0);
}

/*
EDGE CASES:
Diagonal elements do not require a matching distinct cell.

LEARNING CHECK:
1. What does each array index represent?
2. Which dimension should the loop traverse?
3. What happens at the first or last valid index?
4. How would this operation help in a larger matrix algorithm?

NOTE:
Implement the exercise function yourself; testing helpers are provided.
Do not run the test before implementing a non-void function.
Keep implementation functions at or below 25 lines and respect 42 Norm.
*/
EOF

cat > 32_ft_is_diagonal.c <<'EOF'
#include <stdio.h>

int	ft_is_diagonal(int grid[3][3])
{
	
}

/*
GOAL:
Return 1 when every off-diagonal element is zero.

TODO:
1. Examine all cells.
2. Ignore values where row equals column.
3. Reject a nonzero off-diagonal value.

EXPECTED OUTPUT:
Test 1: 1
Test 2: 0
*/

int	main(void)
{
	int	grid[3][3] = {
		{2, 0, 0},
		{0, -3, 0},
		{0, 0, 5}
	};

	printf("Test 1: %d\n", ft_is_diagonal(grid));
	grid[1][2] = 1;
	printf("Test 2: %d\n", ft_is_diagonal(grid));
	return (0);
}

/*
EDGE CASES:
Diagonal elements may be any integers, including zero.

LEARNING CHECK:
1. What does each array index represent?
2. Which dimension should the loop traverse?
3. What happens at the first or last valid index?
4. How would this operation help in a larger matrix algorithm?

NOTE:
Implement the exercise function yourself; testing helpers are provided.
Do not run the test before implementing a non-void function.
Keep implementation functions at or below 25 lines and respect 42 Norm.
*/
EOF

cat > 33_ft_is_upper_triangular.c <<'EOF'
#include <stdio.h>

int	ft_is_upper_triangular(int grid[3][3])
{
	
}

/*
GOAL:
Check whether all elements below the main diagonal are zero.

TODO:
1. Identify cells where row is greater than column.
2. Check those cells for zero.
3. Return 0 on a violation.

EXPECTED OUTPUT:
Test 1: 1
Test 2: 0
*/

int	main(void)
{
	int	grid[3][3] = {
		{1, 2, 3},
		{0, 4, 5},
		{0, 0, 6}
	};

	printf("Test 1: %d\n", ft_is_upper_triangular(grid));
	grid[2][0] = 9;
	printf("Test 2: %d\n", ft_is_upper_triangular(grid));
	return (0);
}

/*
EDGE CASES:
The diagonal and cells above it may contain any value.

LEARNING CHECK:
1. What does each array index represent?
2. Which dimension should the loop traverse?
3. What happens at the first or last valid index?
4. How would this operation help in a larger matrix algorithm?

NOTE:
Implement the exercise function yourself; testing helpers are provided.
Do not run the test before implementing a non-void function.
Keep implementation functions at or below 25 lines and respect 42 Norm.
*/
EOF

cat > 34_ft_is_row_sorted.c <<'EOF'
#include <stdio.h>

int	ft_is_row_sorted(int grid[3][3], int row)
{
	
}

/*
GOAL:
Return 1 if the selected row is in nondecreasing order.

TODO:
1. Compare adjacent elements of the selected row.
2. Reject any decrease.
3. Allow equal neighbors.

EXPECTED OUTPUT:
Test 1: 1
Test 2: 0
Test 3: 1
*/

int	main(void)
{
	int	grid[3][3] = {
		{1, 2, 2},
		{4, 3, 6},
		{-2, 0, 5}
	};

	printf("Test 1: %d\n", ft_is_row_sorted(grid, 0));
	printf("Test 2: %d\n", ft_is_row_sorted(grid, 1));
	printf("Test 3: %d\n", ft_is_row_sorted(grid, 2));
	return (0);
}

/*
EDGE CASES:
Equal adjacent values are permitted.

LEARNING CHECK:
1. What does each array index represent?
2. Which dimension should the loop traverse?
3. What happens at the first or last valid index?
4. How would this operation help in a larger matrix algorithm?

NOTE:
Implement the exercise function yourself; testing helpers are provided.
Do not run the test before implementing a non-void function.
Keep implementation functions at or below 25 lines and respect 42 Norm.
*/
EOF

cat > 35_ft_is_column_sorted.c <<'EOF'
#include <stdio.h>

int	ft_is_column_sorted(int grid[3][3], int col)
{
	
}

/*
GOAL:
Return 1 if a column is sorted top to bottom in nondecreasing order.

TODO:
1. Compare values from successive rows in one column.
2. Reject a downward decrease.
3. Accept equal neighbors.

EXPECTED OUTPUT:
Test 1: 1
Test 2: 0
*/

int	main(void)
{
	int	grid[3][3] = {
		{1, 7, 3},
		{2, 4, 4},
		{3, 5, 5}
	};

	printf("Test 1: %d\n", ft_is_column_sorted(grid, 0));
	printf("Test 2: %d\n", ft_is_column_sorted(grid, 1));
	return (0);
}

/*
EDGE CASES:
Rows can be unsorted even when a selected column is sorted.

LEARNING CHECK:
1. What does each array index represent?
2. Which dimension should the loop traverse?
3. What happens at the first or last valid index?
4. How would this operation help in a larger matrix algorithm?

NOTE:
Implement the exercise function yourself; testing helpers are provided.
Do not run the test before implementing a non-void function.
Keep implementation functions at or below 25 lines and respect 42 Norm.
*/
EOF

cat > 36_ft_row_has_duplicate.c <<'EOF'
#include <stdio.h>

int	ft_row_has_duplicate(int grid[3][3], int row)
{
	
}

/*
GOAL:
Return 1 if any value appears twice in the selected row.

TODO:
1. Compare each element with later elements in the same row.
2. Return 1 at the first duplicate.
3. Return 0 if all elements differ.

EXPECTED OUTPUT:
Test 1: 1
Test 2: 0
*/

int	main(void)
{
	int	grid[3][3] = {
		{1, 2, 1},
		{3, 4, 5},
		{6, 7, 8}
	};

	printf("Test 1: %d\n", ft_row_has_duplicate(grid, 0));
	printf("Test 2: %d\n", ft_row_has_duplicate(grid, 1));
	return (0);
}

/*
EDGE CASES:
Do not compare an element against itself.

LEARNING CHECK:
1. What does each array index represent?
2. Which dimension should the loop traverse?
3. What happens at the first or last valid index?
4. How would this operation help in a larger matrix algorithm?

NOTE:
Implement the exercise function yourself; testing helpers are provided.
Do not run the test before implementing a non-void function.
Keep implementation functions at or below 25 lines and respect 42 Norm.
*/
EOF

cat > 37_ft_add_matrices.c <<'EOF'
#include <stdio.h>

void	ft_add_matrices(int a[3][3], int b[3][3], int out[3][3])
{
	
}

/*
GOAL:
Store the element-wise sum of two 3x3 matrices in out.

TODO:
1. Traverse matching coordinates.
2. Add the two entries.
3. Write each sum into out.

EXPECTED OUTPUT:
Before:
{1, 2, 3},
{4, 5, 6},
{7, 8, 9},

After:
{10, 10, 10},
{10, 10, 10},
{10, 10, 10},
Test 1: 10 10 10
Test 2: 10
*/

static void	ft_test_print_grid(int grid[3][3]);

int	main(void)
{
	int	grid[3][3] = {
		{1, 2, 3},
		{4, 5, 6},
		{7, 8, 9}
	};
	int	b[3][3] = {
	{9, 8, 7}, {6, 5, 4}, {3, 2, 1}
	};
	int	out[3][3] = {{0}};

	printf("Before:\n");
	ft_test_print_grid(grid);
	ft_add_matrices(grid, b, out);
	printf("\nAfter:\n");
	ft_test_print_grid(out);
	printf("Test 1: %d %d %d\n", out[0][0], out[1][1], out[2][2]);
	printf("Test 2: %d\n", out[0][1]);
	return (0);
}

static void	ft_test_print_grid(int grid[3][3])
{
	int	i;

	i = 0;
	while (i < 3)
	{
		printf("{%d, %d, %d},\n", grid[i][0],
			grid[i][1], grid[i][2]);
		i++;
	}
}

/*
EDGE CASES:
Keep input matrices intact; the expected entries are all 10.

LEARNING CHECK:
1. What does each array index represent?
2. Which dimension should the loop traverse?
3. What happens at the first or last valid index?
4. How would this operation help in a larger matrix algorithm?

NOTE:
Implement the exercise function yourself; testing helpers are provided.
Do not run the test before implementing a non-void function.
Keep implementation functions at or below 25 lines and respect 42 Norm.
*/
EOF

cat > 38_ft_subtract_matrices.c <<'EOF'
#include <stdio.h>

void	ft_subtract_matrices(int a[3][3], int b[3][3], int out[3][3])
{
	
}

/*
GOAL:
Store a minus b for every matrix coordinate.

TODO:
1. Pair corresponding entries.
2. Subtract b from a.
3. Write the result to out.

EXPECTED OUTPUT:
Before:
{1, 2, 3},
{4, 5, 6},
{7, 8, 9},

After:
{0, -1, 3},
{0, -1, 0},
{0, 0, 8},
Test 1: 0 -1 8
Test 2: 0
*/

static void	ft_test_print_grid(int grid[3][3]);

int	main(void)
{
	int	grid[3][3] = {
		{1, 2, 3},
		{4, 5, 6},
		{7, 8, 9}
	};
	int	b[3][3] = {
	{1, 3, 0}, {4, 6, 6}, {7, 8, 1}
	};
	int	out[3][3] = {{0}};

	printf("Before:\n");
	ft_test_print_grid(grid);
	ft_subtract_matrices(grid, b, out);
	printf("\nAfter:\n");
	ft_test_print_grid(out);
	printf("Test 1: %d %d %d\n", out[0][0], out[1][1], out[2][2]);
	printf("Test 2: %d\n", out[1][2]);
	return (0);
}

static void	ft_test_print_grid(int grid[3][3])
{
	int	i;

	i = 0;
	while (i < 3)
	{
		printf("{%d, %d, %d},\n", grid[i][0],
			grid[i][1], grid[i][2]);
		i++;
	}
}

/*
EDGE CASES:
Subtraction is order-dependent; a-b differs from b-a.

LEARNING CHECK:
1. What does each array index represent?
2. Which dimension should the loop traverse?
3. What happens at the first or last valid index?
4. How would this operation help in a larger matrix algorithm?

NOTE:
Implement the exercise function yourself; testing helpers are provided.
Do not run the test before implementing a non-void function.
Keep implementation functions at or below 25 lines and respect 42 Norm.
*/
EOF

cat > 39_ft_scale_matrix.c <<'EOF'
#include <stdio.h>

void	ft_scale_matrix(int grid[3][3], int factor)
{
	
}

/*
GOAL:
Multiply every matrix element by the given factor in place.

TODO:
1. Traverse all cells.
2. Multiply each value by factor.
3. Store the product in the same cell.

EXPECTED OUTPUT:
Before:
{1, 2, 3},
{4, 5, 6},
{7, 8, 9},

After change 1:
{-2, -4, -6},
{-8, -10, -12},
{-14, -16, -18},
Test 1: -2 -10 -18

After change 2:
{0, 0, 0},
{0, 0, 0},
{0, 0, 0},
Test 2: 0 0
*/

static void	ft_test_print_grid(int grid[3][3]);

int	main(void)
{
	int	grid[3][3] = {
		{1, 2, 3},
		{4, 5, 6},
		{7, 8, 9}
	};

	printf("Before:\n");
	ft_test_print_grid(grid);
	ft_scale_matrix(grid, -2);
	printf("\nAfter change 1:\n");
	ft_test_print_grid(grid);
	printf("Test 1: %d %d %d\n", grid[0][0], grid[1][1], grid[2][2]);
	ft_scale_matrix(grid, 0);
	printf("\nAfter change 2:\n");
	ft_test_print_grid(grid);
	printf("Test 2: %d %d\n", grid[0][1], grid[2][0]);
	return (0);
}

static void	ft_test_print_grid(int grid[3][3])
{
	int	i;

	i = 0;
	while (i < 3)
	{
		printf("{%d, %d, %d},\n", grid[i][0],
			grid[i][1], grid[i][2]);
		i++;
	}
}

/*
EDGE CASES:
The test values avoid signed integer overflow.

LEARNING CHECK:
1. What does each array index represent?
2. Which dimension should the loop traverse?
3. What happens at the first or last valid index?
4. How would this operation help in a larger matrix algorithm?

NOTE:
Implement the exercise function yourself; testing helpers are provided.
Do not run the test before implementing a non-void function.
Keep implementation functions at or below 25 lines and respect 42 Norm.
*/
EOF

cat > 40_ft_multiply_matrices.c <<'EOF'
#include <stdio.h>

void	ft_multiply_matrices(int a[2][2], int b[2][2], int out[2][2])
{
	
}

/*
GOAL:
Compute the standard 2x2 matrix product a × b.

TODO:
1. For each output cell, select a row of a and column of b.
2. Multiply paired elements and sum them.
3. Store each result in out.

EXPECTED OUTPUT:
Input A:
{1, 2},
{3, 4},
Input B:
{5, 6},
{7, 8},

After:
{19, 22},
{43, 50},
Test 1: 19 22
Test 2: 43 50
*/

static void	ft_test_print_matrix(int grid[2][2]);

int	main(void)
{
	int	a[2][2] = {
		{1, 2},
		{3, 4}
	};
	int	b[2][2] = {
		{5, 6},
		{7, 8}
	};
	int	out[2][2] = {{0}};

	printf("Input A:\n");
	ft_test_print_matrix(a);
	printf("Input B:\n");
	ft_test_print_matrix(b);
	ft_multiply_matrices(a, b, out);
	printf("\nAfter:\n");
	ft_test_print_matrix(out);
	printf("Test 1: %d %d\n", out[0][0], out[0][1]);
	printf("Test 2: %d %d\n", out[1][0], out[1][1]);
	return (0);
}

static void	ft_test_print_matrix(int grid[2][2])
{
	int	i;

	i = 0;
	while (i < 2)
	{
		printf("{%d, %d},\n", grid[i][0], grid[i][1]);
		i++;
	}
}

/*
EDGE CASES:
Matrix multiplication is not the same as element-wise multiplication.

LEARNING CHECK:
1. What does each array index represent?
2. Which dimension should the loop traverse?
3. What happens at the first or last valid index?
4. How would this operation help in a larger matrix algorithm?

NOTE:
Implement the exercise function yourself; testing helpers are provided.
Do not run the test before implementing a non-void function.
Keep implementation functions at or below 25 lines and respect 42 Norm.
*/
EOF

cat > 41_ft_trace.c <<'EOF'
#include <stdio.h>

int	ft_trace(int grid[3][3])
{
	
}

/*
GOAL:
Return the trace, the sum of the main diagonal.

TODO:
1. Read diagonal entries only.
2. Accumulate their values.
3. Return the total.

EXPECTED OUTPUT:
Test 1: 15
Test 2: 10
*/

int	main(void)
{
	int	grid[3][3] = {
		{1, 2, 3},
		{4, 5, 6},
		{7, 8, 9}
	};

	printf("Test 1: %d\n", ft_trace(grid));
	grid[2][2] = 4;
	printf("Test 2: %d\n", ft_trace(grid));
	return (0);
}

/*
EDGE CASES:
The trace ignores all off-diagonal elements.

LEARNING CHECK:
1. What does each array index represent?
2. Which dimension should the loop traverse?
3. What happens at the first or last valid index?
4. How would this operation help in a larger matrix algorithm?

NOTE:
Implement the exercise function yourself; testing helpers are provided.
Do not run the test before implementing a non-void function.
Keep implementation functions at or below 25 lines and respect 42 Norm.
*/
EOF

cat > 42_ft_row_max_index.c <<'EOF'
#include <stdio.h>

int	ft_row_max_index(int grid[3][3], int row)
{
	
}

/*
GOAL:
Return the column index of the first maximum in the chosen row.

TODO:
1. Start with column zero as the best index.
2. Compare each subsequent cell.
3. Return the earliest maximum index.

EXPECTED OUTPUT:
Test 1: 1
Test 2: 0
*/

int	main(void)
{
	int	grid[3][3] = {
		{3, 9, 9},
		{8, 2, 1},
		{1, 2, 3}
	};

	printf("Test 1: %d\n", ft_row_max_index(grid, 0));
	printf("Test 2: %d\n", ft_row_max_index(grid, 1));
	return (0);
}

/*
EDGE CASES:
Ties must select the first maximum.

LEARNING CHECK:
1. What does each array index represent?
2. Which dimension should the loop traverse?
3. What happens at the first or last valid index?
4. How would this operation help in a larger matrix algorithm?

NOTE:
Implement the exercise function yourself; testing helpers are provided.
Do not run the test before implementing a non-void function.
Keep implementation functions at or below 25 lines and respect 42 Norm.
*/
EOF

cat > 43_ft_column_min_index.c <<'EOF'
#include <stdio.h>

int	ft_column_min_index(int grid[3][3], int col)
{
	
}

/*
GOAL:
Return the row index of the first minimum in a selected column.

TODO:
1. Start with row zero as the best index.
2. Compare later rows in the column.
3. Return the earliest minimum index.

EXPECTED OUTPUT:
Test 1: 1
Test 2: 0
*/

int	main(void)
{
	int	grid[3][3] = {
		{5, -2, 0},
		{3, -3, 4},
		{3, -3, 7}
	};

	printf("Test 1: %d\n", ft_column_min_index(grid, 0));
	printf("Test 2: %d\n", ft_column_min_index(grid, 2));
	return (0);
}

/*
EDGE CASES:
A tied minimum should select the first row containing it.

LEARNING CHECK:
1. What does each array index represent?
2. Which dimension should the loop traverse?
3. What happens at the first or last valid index?
4. How would this operation help in a larger matrix algorithm?

NOTE:
Implement the exercise function yourself; testing helpers are provided.
Do not run the test before implementing a non-void function.
Keep implementation functions at or below 25 lines and respect 42 Norm.
*/
EOF

cat > 44_ft_count_neighbors.c <<'EOF'
#include <stdio.h>

int	ft_count_neighbors(int grid[3][3], int row, int col)
{
	
}

/*
GOAL:
Count nonzero orthogonal neighbors (up, down, left, right) of a cell.

TODO:
1. Consider the four neighboring coordinates.
2. Skip any coordinate outside the matrix.
3. Count neighbors containing a nonzero value.

EXPECTED OUTPUT:
Test 1: 4
Test 2: 2
*/

int	main(void)
{
	int	grid[3][3] = {
		{1, 1, 1},
		{1, 0, 1},
		{1, 1, 1}
	};

	printf("Test 1: %d\n", ft_count_neighbors(grid, 1, 1));
	printf("Test 2: %d\n", ft_count_neighbors(grid, 0, 0));
	return (0);
}

/*
EDGE CASES:
Diagonal neighbors do not count; never access outside 0..2.

LEARNING CHECK:
1. What does each array index represent?
2. Which dimension should the loop traverse?
3. What happens at the first or last valid index?
4. How would this operation help in a larger matrix algorithm?

NOTE:
Implement the exercise function yourself; testing helpers are provided.
Do not run the test before implementing a non-void function.
Keep implementation functions at or below 25 lines and respect 42 Norm.
*/
EOF

cat > 45_ft_flood_fill.c <<'EOF'
#include <stdio.h>

void	ft_flood_fill(int grid[3][3], int row, int col, int color)
{
	
}

/*
GOAL:
Recolor the entire orthogonally connected region matching the starting cell.

TODO:
1. Read the original color at the starting cell.
2. Visit connected cells with that original color.
3. Stop at borders, other colors, and already recolored cells.

EXPECTED OUTPUT:
Before:
{1, 1, 0},
{1, 0, 0},
{0, 0, 1},

After:
{9, 9, 0},
{9, 0, 0},
{0, 0, 1},
Test 1: 9 9 9
Test 2: 0 1
*/

static void	ft_test_print_grid(int grid[3][3]);

int	main(void)
{
	int	grid[3][3] = {
		{1, 1, 0},
		{1, 0, 0},
		{0, 0, 1}
	};

	printf("Before:\n");
	ft_test_print_grid(grid);
	ft_flood_fill(grid, 0, 0, 9);
	printf("\nAfter:\n");
	ft_test_print_grid(grid);
	printf("Test 1: %d %d %d\n", grid[0][0], grid[0][1], grid[1][0]);
	printf("Test 2: %d %d\n", grid[1][1], grid[2][2]);
	return (0);
}

static void	ft_test_print_grid(int grid[3][3])
{
	int	i;

	i = 0;
	while (i < 3)
	{
		printf("{%d, %d, %d},\n", grid[i][0],
			grid[i][1], grid[i][2]);
		i++;
	}
}

/*
EDGE CASES:
If new color equals original color, return immediately to avoid infinite recursion.

LEARNING CHECK:
1. Why must the original color be remembered?
2. What four neighbors can be reached?
3. Where must recursion stop?
4. What happens if new color equals old color?

NOTE:
Implement the exercise function yourself; testing helpers are provided.
Do not run the test before implementing a non-void function.
Keep implementation functions at or below 25 lines and respect 42 Norm.
*/
EOF

cat > 46_ft_spiral_order.c <<'EOF'
#include <stdio.h>

void	ft_spiral_order(int grid[3][3], int out[9])
{
	
}

/*
GOAL:
Copy matrix elements into a 1D array in clockwise spiral order.

TODO:
1. Start at the top-left and move across the top row.
2. Traverse the perimeter clockwise.
3. Continue inward without revisiting cells.

EXPECTED OUTPUT:
Test 1: 1 2 3 6 9 8 7 4 5
*/

int	main(void)
{
	int	grid[3][3] = {
		{1, 2, 3},
		{4, 5, 6},
		{7, 8, 9}
	};
	int	out[9] = {0};
	int	i;

	ft_spiral_order(grid, out);
	printf("Test 1:");
	i = 0;
	while (i < 9)
	{
		printf(" %d", out[i]);
		i++;
	}
	printf("\n");
	return (0);
}

/*
EDGE CASES:
Each cell must appear exactly once.

LEARNING CHECK:
1. What does each array index represent?
2. Which dimension should the loop traverse?
3. What happens at the first or last valid index?
4. How would this operation help in a larger matrix algorithm?

NOTE:
Implement the exercise function yourself; testing helpers are provided.
Do not run the test before implementing a non-void function.
Keep implementation functions at or below 25 lines and respect 42 Norm.
*/
EOF

cat > 47_ft_convolve_center.c <<'EOF'
#include <stdio.h>

int	ft_convolve_center(int grid[3][3], int kernel[3][3])
{
	
}

/*
GOAL:
Compute the weighted sum of a 3x3 grid and a 3x3 kernel.

TODO:
1. Multiply cells at matching coordinates.
2. Add all nine products.
3. Return the weighted sum.

EXPECTED OUTPUT:
Test 1: 5
Test 2: 45
*/

static void	ft_set_kernel_ones(int kernel[3][3]);

int	main(void)
{
	int	grid[3][3] = {
		{1, 2, 3},
		{4, 5, 6},
		{7, 8, 9}
	};
	int	kernel[3][3] = {
	{0, 0, 0}, {0, 1, 0}, {0, 0, 0}
	};

	printf("Test 1: %d\n", ft_convolve_center(grid, kernel));
	ft_set_kernel_ones(kernel);
	printf("Test 2: %d\n", ft_convolve_center(grid, kernel));
	return (0);
}

static void	ft_set_kernel_ones(int kernel[3][3])
{
	int	row;
	int	col;

	row = 0;
	while (row < 3)
	{
		col = 0;
		while (col < 3)
			kernel[row][col++] = 1;
		row++;
	}
}

/*
EDGE CASES:
This computes one output value, not full padded-image convolution.

LEARNING CHECK:
1. What does each array index represent?
2. Which dimension should the loop traverse?
3. What happens at the first or last valid index?
4. How would this operation help in a larger matrix algorithm?

NOTE:
Implement the exercise function yourself; testing helpers are provided.
Do not run the test before implementing a non-void function.
Keep implementation functions at or below 25 lines and respect 42 Norm.
*/
EOF

cat > 48_ft_prefix_sum.c <<'EOF'
#include <stdio.h>

void	ft_prefix_sum(int grid[3][3], int out[3][3])
{
	
}

/*
GOAL:
Build a summed-area table: out[r][c] equals the sum of grid[0..r][0..c].

TODO:
1. Combine the current cell with sums above and left.
2. Subtract the overlapping top-left region.
3. Fill the output in row-major order.

EXPECTED OUTPUT:
Before:
{1, 2, 3},
{4, 5, 6},
{7, 8, 9},

After:
{1, 3, 6},
{5, 12, 21},
{12, 27, 45},
Test 1: 1 6
Test 2: 12 45
*/

static void	ft_test_print_grid(int grid[3][3]);

int	main(void)
{
	int	grid[3][3] = {
		{1, 2, 3},
		{4, 5, 6},
		{7, 8, 9}
	};
	int	out[3][3] = {{0}};

	printf("Before:\n");
	ft_test_print_grid(grid);
	ft_prefix_sum(grid, out);
	printf("\nAfter:\n");
	ft_test_print_grid(out);
	printf("Test 1: %d %d\n", out[0][0], out[0][2]);
	printf("Test 2: %d %d\n", out[1][1], out[2][2]);
	return (0);
}

static void	ft_test_print_grid(int grid[3][3])
{
	int	i;

	i = 0;
	while (i < 3)
	{
		printf("{%d, %d, %d},\n", grid[i][0],
			grid[i][1], grid[i][2]);
		i++;
	}
}

/*
EDGE CASES:
Avoid indexing row - 1 or col - 1 when an index is zero.

LEARNING CHECK:
1. What does each array index represent?
2. Which dimension should the loop traverse?
3. What happens at the first or last valid index?
4. How would this operation help in a larger matrix algorithm?

NOTE:
Implement the exercise function yourself; testing helpers are provided.
Do not run the test before implementing a non-void function.
Keep implementation functions at or below 25 lines and respect 42 Norm.
*/
EOF

cat > 49_ft_transpose_rectangle.c <<'EOF'
#include <stdio.h>

void	ft_transpose_rectangle(int src[2][3], int dest[3][2])
{
	
}

/*
GOAL:
Transpose a rectangular 2x3 matrix into a 3x2 matrix.

TODO:
1. Track row and column bounds separately.
2. Write each source element to reversed indices.
3. Verify both dimensions of the result.

EXPECTED OUTPUT:
Input (2x3):
{1, 2, 3},
{4, 5, 6},

After:
{1, 4},
{2, 5},
{3, 6},
Test 1: 1 4
Test 2: 3 6
*/

static void	ft_test_print_matrix(int grid[3][2]);
static void	ft_test_print_input(int grid[2][3]);

int	main(void)
{
	int	grid[2][3] = {
		{1, 2, 3},
		{4, 5, 6}
	};
	int	dest[3][2] = {{0}};

	printf("Input (2x3):\n");
	ft_test_print_input(grid);
	ft_transpose_rectangle(grid, dest);
	printf("\nAfter:\n");
	ft_test_print_matrix(dest);
	printf("Test 1: %d %d\n", dest[0][0], dest[0][1]);
	printf("Test 2: %d %d\n", dest[2][0], dest[2][1]);
	return (0);
}

static void	ft_test_print_matrix(int grid[3][2])
{
	int	i;

	i = 0;
	while (i < 3)
	{
		printf("{%d, %d},\n", grid[i][0], grid[i][1]);
		i++;
	}
}

static void	ft_test_print_input(int grid[2][3])
{
	int	i;

	i = 0;
	while (i < 2)
	{
		printf("{%d, %d, %d},\n", grid[i][0],
			grid[i][1], grid[i][2]);
		i++;
	}
}

/*
EDGE CASES:
A rectangle changes shape when transposed; unlike a square, dimensions swap.

LEARNING CHECK:
1. What does each array index represent?
2. Which dimension should the loop traverse?
3. What happens at the first or last valid index?
4. How would this operation help in a larger matrix algorithm?

NOTE:
Implement the exercise function yourself; testing helpers are provided.
Do not run the test before implementing a non-void function.
Keep implementation functions at or below 25 lines and respect 42 Norm.
*/
EOF

cat > 50_ft_cube_get.c <<'EOF'
#include <stdio.h>

int	ft_cube_get(int cube[2][2][2], int layer, int row, int col)
{
	
}

/*
GOAL:
Return one value from a 2x2x2 integer cube.

TODO:
1. Choose the layer.
2. Choose a row within the layer.
3. Choose a column and return its value.

EXPECTED OUTPUT:
Test 1: 6
Test 2: 1
Test 3: 8
*/

int	main(void)
{
	int	cube[2][2][2] = {
		{{1, 2}, {3, 4}},
		{{5, 6}, {7, 8}}
	};

	printf("Test 1: %d\n", ft_cube_get(cube, 1, 0, 1));
	printf("Test 2: %d\n", ft_cube_get(cube, 0, 0, 0));
	printf("Test 3: %d\n", ft_cube_get(cube, 1, 1, 1));
	return (0);
}

/*
EDGE CASES:
All three indices must remain within 0 and 1.

LEARNING CHECK:
1. What does each array index represent?
2. Which dimension should the loop traverse?
3. What happens at the first or last valid index?
4. How would this operation help in a larger matrix algorithm?

NOTE:
Implement the exercise function yourself; testing helpers are provided.
Do not run the test before implementing a non-void function.
Keep implementation functions at or below 25 lines and respect 42 Norm.
*/
EOF

cat > 51_ft_cube_set.c <<'EOF'
#include <stdio.h>

void	ft_cube_set(int cube[2][2][2], int layer, int row, int col, int value)
{
	
}

/*
GOAL:
Change one selected cube cell without modifying another.

TODO:
1. Select layer, row, and column.
2. Assign the new value.
3. Preserve all other cells.

EXPECTED OUTPUT:
Before:
Layer 0:
{1, 2},
{3, 4},
Layer 1:
{5, 6},
{7, 8},

After:
Layer 0:
{1, 2},
{3, 4},
Layer 1:
{5, 6},
{42, 8},
Test 1: 42
Test 2: 1
*/

static void	ft_test_print_cube(int cube[2][2][2]);

int	main(void)
{
	int	cube[2][2][2] = {
		{{1, 2}, {3, 4}},
		{{5, 6}, {7, 8}}
	};

	printf("Before:\n");
	ft_test_print_cube(cube);
	ft_cube_set(cube, 1, 1, 0, 42);
	printf("\nAfter:\n");
	ft_test_print_cube(cube);
	printf("Test 1: %d\n", cube[1][1][0]);
	printf("Test 2: %d\n", cube[0][0][0]);
	return (0);
}

static void	ft_test_print_cube(int cube[2][2][2])
{
	int	layer;
	int	row;

	layer = 0;
	while (layer < 2)
	{
		printf("Layer %d:\n", layer);
		row = 0;
		while (row < 2)
		{
			printf("{%d, %d},\n", cube[layer][row][0],
				cube[layer][row][1]);
			row++;
		}
		layer++;
	}
}

/*
EDGE CASES:
A 3D array is indexed with three bracket pairs.

LEARNING CHECK:
1. What does each array index represent?
2. Which dimension should the loop traverse?
3. What happens at the first or last valid index?
4. How would this operation help in a larger matrix algorithm?

NOTE:
Implement the exercise function yourself; testing helpers are provided.
Do not run the test before implementing a non-void function.
Keep implementation functions at or below 25 lines and respect 42 Norm.
*/
EOF

cat > 52_ft_print_cube.c <<'EOF'
#include <unistd.h>
#include <stdio.h>

void	ft_print_cube(int cube[2][2][2])
{
	
}

/*
GOAL:
Print every layer as two rows of two integers, with a blank line between layers.

TODO:
1. Loop through layers.
2. Within each layer, loop through rows and columns.
3. Print one blank line between layers.

EXPECTED OUTPUT:
Test 1:
1 2
3 4

5 6
7 8
*/

int	main(void)
{
	int	cube[2][2][2] = {
		{{1, 2}, {3, 4}},
		{{5, 6}, {7, 8}}
	};

	printf("Test 1:\n");
	fflush(stdout);
	ft_print_cube(cube);
	return (0);
}

/*
EDGE CASES:
Print exactly one blank line between layers, none after the last layer.

LEARNING CHECK:
1. What does each array index represent?
2. Which dimension should the loop traverse?
3. What happens at the first or last valid index?
4. How would this operation help in a larger matrix algorithm?

NOTE:
Implement the exercise function yourself; testing helpers are provided.
Do not run the test before implementing a non-void function.
Keep implementation functions at or below 25 lines and respect 42 Norm.
*/
EOF

cat > 53_ft_sum_cube.c <<'EOF'
#include <stdio.h>

int	ft_sum_cube(int cube[2][2][2])
{
	
}

/*
GOAL:
Sum all eight values in a 2x2x2 cube.

TODO:
1. Loop across layers.
2. Traverse rows and columns inside each layer.
3. Return the accumulated total.

EXPECTED OUTPUT:
Test 1: 36
Test 2: 35
*/

int	main(void)
{
	int	cube[2][2][2] = {
		{{1, 2}, {3, 4}},
		{{5, 6}, {7, 8}}
	};

	printf("Test 1: %d\n", ft_sum_cube(cube));
	cube[0][0][0] = 0;
	printf("Test 2: %d\n", ft_sum_cube(cube));
	return (0);
}

/*
EDGE CASES:
Every coordinate must be included once.

LEARNING CHECK:
1. What does each array index represent?
2. Which dimension should the loop traverse?
3. What happens at the first or last valid index?
4. How would this operation help in a larger matrix algorithm?

NOTE:
Implement the exercise function yourself; testing helpers are provided.
Do not run the test before implementing a non-void function.
Keep implementation functions at or below 25 lines and respect 42 Norm.
*/
EOF

cat > 54_ft_sum_layer.c <<'EOF'
#include <stdio.h>

int	ft_sum_layer(int cube[2][2][2], int layer)
{
	
}

/*
GOAL:
Sum the four elements of a single 2x2 layer.

TODO:
1. Keep the layer index fixed.
2. Traverse its two rows and two columns.
3. Return the sum.

EXPECTED OUTPUT:
Test 1: 10
Test 2: 26
*/

int	main(void)
{
	int	cube[2][2][2] = {
		{{1, 2}, {3, 4}},
		{{5, 6}, {7, 8}}
	};

	printf("Test 1: %d\n", ft_sum_layer(cube, 0));
	printf("Test 2: %d\n", ft_sum_layer(cube, 1));
	return (0);
}

/*
EDGE CASES:
The caller supplies a valid layer index.

LEARNING CHECK:
1. What does each array index represent?
2. Which dimension should the loop traverse?
3. What happens at the first or last valid index?
4. How would this operation help in a larger matrix algorithm?

NOTE:
Implement the exercise function yourself; testing helpers are provided.
Do not run the test before implementing a non-void function.
Keep implementation functions at or below 25 lines and respect 42 Norm.
*/
EOF

cat > 55_ft_sum_depth.c <<'EOF'
#include <stdio.h>

int	ft_sum_depth(int cube[2][2][2], int row, int col)
{
	
}

/*
GOAL:
Sum corresponding cells at a fixed row and column across both layers.

TODO:
1. Hold row and col constant.
2. Move through each layer.
3. Accumulate the values at that position.

EXPECTED OUTPUT:
Test 1: 6
Test 2: 12
*/

int	main(void)
{
	int	cube[2][2][2] = {
		{{1, 2}, {3, 4}},
		{{5, 6}, {7, 8}}
	};

	printf("Test 1: %d\n", ft_sum_depth(cube, 0, 0));
	printf("Test 2: %d\n", ft_sum_depth(cube, 1, 1));
	return (0);
}

/*
EDGE CASES:
A depth slice follows the layer axis rather than a row or column.

LEARNING CHECK:
1. What does each array index represent?
2. Which dimension should the loop traverse?
3. What happens at the first or last valid index?
4. How would this operation help in a larger matrix algorithm?

NOTE:
Implement the exercise function yourself; testing helpers are provided.
Do not run the test before implementing a non-void function.
Keep implementation functions at or below 25 lines and respect 42 Norm.
*/
EOF

cat > 56_ft_count_cube_value.c <<'EOF'
#include <stdio.h>

int	ft_count_cube_value(int cube[2][2][2], int value)
{
	
}

/*
GOAL:
Count matching values in all layers of a cube.

TODO:
1. Iterate through all three dimensions.
2. Compare each element with value.
3. Return the match count.

EXPECTED OUTPUT:
Test 1: 2
Test 2: 0
*/

int	main(void)
{
	int	cube[2][2][2] = {
		{{1, 2}, {3, 4}},
		{{5, 6}, {7, 8}}
	};
	cube[1][0][0] = 1;

	printf("Test 1: %d\n", ft_count_cube_value(cube, 1));
	printf("Test 2: %d\n", ft_count_cube_value(cube, 9));
	return (0);
}

/*
EDGE CASES:
Zero matches should return zero.

LEARNING CHECK:
1. What does each array index represent?
2. Which dimension should the loop traverse?
3. What happens at the first or last valid index?
4. How would this operation help in a larger matrix algorithm?

NOTE:
Implement the exercise function yourself; testing helpers are provided.
Do not run the test before implementing a non-void function.
Keep implementation functions at or below 25 lines and respect 42 Norm.
*/
EOF

cat > 57_ft_max_cube.c <<'EOF'
#include <stdio.h>

int	ft_max_cube(int cube[2][2][2])
{
	
}

/*
GOAL:
Find the maximum element in a cube across all layers.

TODO:
1. Initialize with an existing cube value.
2. Compare every element in three nested loops.
3. Return the largest value.

EXPECTED OUTPUT:
Test 1: 8
Test 2: 42
*/

int	main(void)
{
	int	cube[2][2][2] = {
		{{1, 2}, {3, 4}},
		{{5, 6}, {7, 8}}
	};

	printf("Test 1: %d\n", ft_max_cube(cube));
	cube[0][1][0] = 42;
	printf("Test 2: %d\n", ft_max_cube(cube));
	return (0);
}

/*
EDGE CASES:
The maximum may occur in any layer.

LEARNING CHECK:
1. What does each array index represent?
2. Which dimension should the loop traverse?
3. What happens at the first or last valid index?
4. How would this operation help in a larger matrix algorithm?

NOTE:
Implement the exercise function yourself; testing helpers are provided.
Do not run the test before implementing a non-void function.
Keep implementation functions at or below 25 lines and respect 42 Norm.
*/
EOF

cat > 58_ft_copy_cube.c <<'EOF'
#include <stdio.h>

void	ft_copy_cube(int src[2][2][2], int dest[2][2][2])
{
	
}

/*
GOAL:
Copy all eight elements from one cube to another.

TODO:
1. Traverse layers, rows, and columns.
2. Copy values into matching destination coordinates.
3. Leave the source unchanged.

EXPECTED OUTPUT:
Before:
Layer 0:
{1, 2},
{3, 4},
Layer 1:
{5, 6},
{7, 8},

After:
Layer 0:
{1, 2},
{3, 4},
Layer 1:
{5, 6},
{7, 8},
Test 1: 1 8
Test 2: 1
*/

static void	ft_test_print_cube(int cube[2][2][2]);

int	main(void)
{
	int	cube[2][2][2] = {
		{{1, 2}, {3, 4}},
		{{5, 6}, {7, 8}}
	};
	int	dest[2][2][2] = {{{0}}};

	printf("Before:\n");
	ft_test_print_cube(cube);
	ft_copy_cube(cube, dest);
	printf("\nAfter:\n");
	ft_test_print_cube(dest);
	printf("Test 1: %d %d\n", dest[0][0][0], dest[1][1][1]);
	dest[0][0][0] = 99;
	printf("Test 2: %d\n", cube[0][0][0]);
	return (0);
}

static void	ft_test_print_cube(int cube[2][2][2])
{
	int	layer;
	int	row;

	layer = 0;
	while (layer < 2)
	{
		printf("Layer %d:\n", layer);
		row = 0;
		while (row < 2)
		{
			printf("{%d, %d},\n", cube[layer][row][0],
				cube[layer][row][1]);
			row++;
		}
		layer++;
	}
}

/*
EDGE CASES:
The destination is independent storage; no aliasing is intended.

LEARNING CHECK:
1. What does each array index represent?
2. Which dimension should the loop traverse?
3. What happens at the first or last valid index?
4. How would this operation help in a larger matrix algorithm?

NOTE:
Implement the exercise function yourself; testing helpers are provided.
Do not run the test before implementing a non-void function.
Keep implementation functions at or below 25 lines and respect 42 Norm.
*/
EOF

cat > 59_ft_flatten_cube.c <<'EOF'
#include <stdio.h>

void	ft_flatten_cube(int cube[2][2][2], int out[8])
{
	
}

/*
GOAL:
Flatten a cube into one array in layer-major, then row-major order.

TODO:
1. Visit each layer in ascending order.
2. Within each layer visit rows then columns.
3. Write eight values to sequential output positions.

EXPECTED OUTPUT:
Test 1: 1 2 3 4 5 6 7 8
*/

int	main(void)
{
	int	cube[2][2][2] = {
		{{1, 2}, {3, 4}},
		{{5, 6}, {7, 8}}
	};
	int	out[8] = {0};
	int	i;

	ft_flatten_cube(cube, out);
	printf("Test 1:");
	i = 0;
	while (i < 8)
	{
		printf(" %d", out[i]);
		i++;
	}
	printf("\n");
	return (0);
}

/*
EDGE CASES:
The first four output values belong to layer zero.

LEARNING CHECK:
1. What does each array index represent?
2. Which dimension should the loop traverse?
3. What happens at the first or last valid index?
4. How would this operation help in a larger matrix algorithm?

NOTE:
Implement the exercise function yourself; testing helpers are provided.
Do not run the test before implementing a non-void function.
Keep implementation functions at or below 25 lines and respect 42 Norm.
*/
EOF

