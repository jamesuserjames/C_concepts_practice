PROJECT="multidimensional_arrays_training"

mkdir -p "$PROJECT"

cat > "$PROJECT/training.h" <<'EOF'
#ifndef TRAINING_H
# define TRAINING_H

# include <stdio.h>
# include <stdlib.h>
# include <unistd.h>
# include <string.h>
# include <limits.h>PROJECT="multidimensional_arrays_training"

mkdir -p "$PROJECT"

# ============================================================
# SHARED HEADER
# ============================================================

cat > "$PROJECT/training.h" <<'EOF'
#ifndef TRAINING_H
# define TRAINING_H

# include <stdio.h>
# include <stdlib.h>
# include <unistd.h>
# include <string.h>
# include <limits.h>

static void	ft_putnbr(int nbr) __attribute__((unused));

static void	ft_putnbr(int nbr)
{
	long	n;
	char	c;

	n = nbr;
	if (n < 0)
	{
		write(1, "-", 1);
		n = -n;
	}
	if (n >= 10)
		ft_putnbr(n / 10);
	c = (n % 10) + '0';
	write(1, &c, 1);
}

#endif
EOF

# ============================================================
# EX00 - FT_PRINT_GRID
# ============================================================

mkdir -p "$PROJECT/ex00"
cat > "$PROJECT/ex00/ft_print_grid.c" <<'EOF'
#include "../training.h"

void	ft_print_grid(int grid[4][4])
{
	
}

int	main(void)
{
	int	grid[4][4] = {
		{1, 2, 3, 4},
		{5, 6, 7, 8},
		{9, 10, 11, 12},
		{13, 14, 15, 16}
	};

	ft_print_grid(grid);
	return (0);
}

/*
Allowed functions: none

Goal:
Print every value in a 4x4 grid.

TODO:
1. Use a row loop.
2. Use a column loop.
3. Print grid[row][col].

Test notes:
Tests basic 2D array traversal.

Expected output:
1 2 3 4
5 6 7 8
9 10 11 12
13 14 15 16
*/
EOF

# ============================================================
# EX01 - FT_PRINT_ROW
# ============================================================

mkdir -p "$PROJECT/ex01"
cat > "$PROJECT/ex01/ft_print_row.c" <<'EOF'
#include "../training.h"

void	ft_print_row(int grid[4][4], int row)
{
	
}

int	main(void)
{
	int	grid[4][4] = {
		{1, 2, 3, 4},
		{5, 6, 7, 8},
		{9, 10, 11, 12},
		{13, 14, 15, 16}
	};

	ft_print_row(grid, 2);
	return (0);
}

/*
Allowed functions: none

Goal:
Print one selected row from a 4x4 grid.

TODO:
1. Use row as the fixed first index.
2. Loop through columns.
3. Print grid[row][col].

Test notes:
Tests accessing one row only.

Expected output:
9 10 11 12
*/
EOF

# ============================================================
# EX02 - FT_PRINT_COLUMN
# ============================================================

mkdir -p "$PROJECT/ex02"
cat > "$PROJECT/ex02/ft_print_column.c" <<'EOF'
#include "../training.h"

void	ft_print_column(int grid[4][4], int col)
{
	
}

int	main(void)
{
	int	grid[4][4] = {
		{1, 2, 3, 4},
		{5, 6, 7, 8},
		{9, 10, 11, 12},
		{13, 14, 15, 16}
	};

	ft_print_column(grid, 1);
	return (0);
}

/*
Allowed functions: none

Goal:
Print one selected column from a 4x4 grid.

TODO:
1. Use col as the fixed second index.
2. Loop through rows.
3. Print grid[row][col].

Test notes:
Tests column access.

Expected output:
2
6
10
14
*/
EOF

# ============================================================
# EX03 - FT_GET_VALUE
# ============================================================

mkdir -p "$PROJECT/ex03"
cat > "$PROJECT/ex03/ft_get_value.c" <<'EOF'
#include "../training.h"

int	ft_get_value(int grid[4][4], int row, int col)
{
	
}

int	main(void)
{
	int	grid[4][4] = {
		{1, 2, 3, 4},
		{5, 6, 7, 8},
		{9, 10, 11, 12},
		{13, 14, 15, 16}
	};

	printf("%d\n", ft_get_value(grid, 2, 3));
	printf("%d\n", ft_get_value(grid, 0, 0));
	return (0);
}

/*
Allowed functions: none

Goal:
Return one value from a 4x4 grid.

TODO:
1. Use row as first index.
2. Use col as second index.
3. Return grid[row][col].

Test notes:
Tests normal access and first cell access.

Expected output:
12
1
*/
EOF

# ============================================================
# EX04 - FT_SET_VALUE
# ============================================================

mkdir -p "$PROJECT/ex04"
cat > "$PROJECT/ex04/ft_set_value.c" <<'EOF'
#include "../training.h"

void	ft_set_value(int grid[4][4], int row, int col, int value)
{
	
}

int	main(void)
{
	int	grid[4][4] = {
		{1, 2, 3, 4},
		{5, 6, 7, 8},
		{9, 10, 11, 12},
		{13, 14, 15, 16}
	};

	ft_set_value(grid, 1, 2, 99);
	printf("%d\n", grid[1][2]);
	return (0);
}

/*
Allowed functions: none

Goal:
Change one value inside a 4x4 grid.

TODO:
1. Use row and col to find the cell.
2. Assign value to that cell.
3. Verify the grid changed.

Test notes:
Tests modifying grid[1][2].

Expected output:
99
*/
EOF

# ============================================================
# EX05 - FT_SUM_ROW
# ============================================================

mkdir -p "$PROJECT/ex05"
cat > "$PROJECT/ex05/ft_sum_row.c" <<'EOF'
#include "../training.h"

int	ft_sum_row(int grid[4][4], int row)
{
	
}

int	main(void)
{
	int	grid[4][4] = {
		{1, 2, 3, 4},
		{5, 6, 7, 8},
		{9, 10, 11, 12},
		{13, 14, 15, 16}
	};

	printf("%d\n", ft_sum_row(grid, 0));
	printf("%d\n", ft_sum_row(grid, 3));
	return (0);
}

/*
Allowed functions: none

Goal:
Return the sum of one row.

TODO:
1. Fix the row index.
2. Loop through columns.
3. Add every grid[row][col].

Test notes:
Tests first row and last row.

Expected output:
10
58
*/
EOF

# ============================================================
# EX06 - FT_SUM_COLUMN
# ============================================================

mkdir -p "$PROJECT/ex06"
cat > "$PROJECT/ex06/ft_sum_column.c" <<'EOF'
#include "../training.h"

int	ft_sum_column(int grid[4][4], int col)
{
	
}

int	main(void)
{
	int	grid[4][4] = {
		{1, 2, 3, 4},
		{5, 6, 7, 8},
		{9, 10, 11, 12},
		{13, 14, 15, 16}
	};

	printf("%d\n", ft_sum_column(grid, 0));
	printf("%d\n", ft_sum_column(grid, 3));
	return (0);
}

/*
Allowed functions: none

Goal:
Return the sum of one column.

TODO:
1. Fix the column index.
2. Loop through rows.
3. Add every grid[row][col].

Test notes:
Tests first column and last column.

Expected output:
28
40
*/
EOF

# ============================================================
# EX07 - FT_COPY_COLUMN
# ============================================================

mkdir -p "$PROJECT/ex07"
cat > "$PROJECT/ex07/ft_copy_column.c" <<'EOF'
#include "../training.h"

void	ft_copy_column(int grid[4][4], int col, int out[4])
{
	
}

int	main(void)
{
	int	grid[4][4] = {
		{1, 2, 3, 4},
		{5, 6, 7, 8},
		{9, 10, 11, 12},
		{13, 14, 15, 16}
	};
	int	out[4];
	int	i;

	ft_copy_column(grid, 2, out);
	i = 0;
	while (i < 4)
	{
		printf("%d\n", out[i]);
		i++;
	}
	return (0);
}

/*
Allowed functions: none

Goal:
Copy one column into a 1D array.

TODO:
1. Loop through rows.
2. Copy grid[row][col] into out[row].
3. Use this for column-based logic.

Test notes:
Tests copying column 2.

Expected output:
3
7
11
15
*/
EOF

# ============================================================
# EX08 - FT_HAS_VALUE_ROW
# ============================================================

mkdir -p "$PROJECT/ex08"
cat > "$PROJECT/ex08/ft_has_value_row.c" <<'EOF'
#include "../training.h"

int	ft_has_value_row(int grid[4][4], int row, int value)
{
	
}

int	main(void)
{
	int	grid[4][4] = {
		{1, 2, 3, 4},
		{5, 6, 7, 8},
		{9, 10, 11, 12},
		{13, 14, 15, 16}
	};

	printf("%d\n", ft_has_value_row(grid, 1, 7));
	printf("%d\n", ft_has_value_row(grid, 1, 12));
	return (0);
}

/*
Allowed functions: none

Goal:
Check if a row contains a value.

TODO:
1. Fix the row index.
2. Loop through columns.
3. Return 1 if value is found.

Test notes:
Tests found and not found cases.

Expected output:
1
0
*/
EOF

# ============================================================
# EX09 - FT_HAS_VALUE_COLUMN
# ============================================================

mkdir -p "$PROJECT/ex09"
cat > "$PROJECT/ex09/ft_has_value_column.c" <<'EOF'
#include "../training.h"

int	ft_has_value_column(int grid[4][4], int col, int value)
{
	
}

int	main(void)
{
	int	grid[4][4] = {
		{1, 2, 3, 4},
		{5, 6, 7, 8},
		{9, 10, 11, 12},
		{13, 14, 15, 16}
	};

	printf("%d\n", ft_has_value_column(grid, 2, 11));
	printf("%d\n", ft_has_value_column(grid, 2, 10));
	return (0);
}

/*
Allowed functions: none

Goal:
Check if a column contains a value.

TODO:
1. Fix the column index.
2. Loop through rows.
3. Return 1 if value is found.

Test notes:
Tests found and not found cases.

Expected output:
1
0
*/
EOF

# ============================================================
# EX10 - FT_TRANSPOSE_GRID
# ============================================================

mkdir -p "$PROJECT/ex10"
cat > "$PROJECT/ex10/ft_transpose_grid.c" <<'EOF'
#include "../training.h"

void	ft_transpose_grid(int grid[4][4], int out[4][4])
{
	
}

int	main(void)
{
	int	grid[4][4] = {
		{1, 2, 3, 4},
		{5, 6, 7, 8},
		{9, 10, 11, 12},
		{13, 14, 15, 16}
	};
	int	out[4][4];

	ft_transpose_grid(grid, out);
	printf("%d %d %d %d\n", out[0][0], out[0][1], out[0][2], out[0][3]);
	printf("%d %d %d %d\n", out[1][0], out[1][1], out[1][2], out[1][3]);
	return (0);
}

/*
Allowed functions: none

Goal:
Transpose a 4x4 grid.

TODO:
1. Loop through rows.
2. Loop through columns.
3. Set out[col][row] = grid[row][col].

Test notes:
Tests first two rows of the transposed grid.

Expected output:
1 5 9 13
2 6 10 14
*/
EOF

# ============================================================
# EX11 - FT_PRINT_CHAR_GRID
# ============================================================

mkdir -p "$PROJECT/ex11"
cat > "$PROJECT/ex11/ft_print_char_grid.c" <<'EOF'
#include "../training.h"

void	ft_print_char_grid(char grid[3][4])
{
	
}

int	main(void)
{
	char	grid[3][4] = {
		{'a', 'b', 'c', '\0'},
		{'d', 'e', 'f', '\0'},
		{'g', 'h', 'i', '\0'}
	};

	ft_print_char_grid(grid);
	return (0);
}

/*
Allowed functions: write

Goal:
Print a 2D char grid where each row is a string.

TODO:
1. Loop through rows.
2. Loop through characters until null terminator.
3. Print newline after each row.

Test notes:
Tests multidimensional chars and null terminators.

Expected output:
abc
def
ghi
*/
EOF

# ============================================================
# EX12 - FT_HAS_DUPLICATE_COL
# ============================================================

mkdir -p "$PROJECT/ex12"
cat > "$PROJECT/ex12/ft_has_duplicate_col.c" <<'EOF'
#include "../training.h"

int	ft_has_duplicate_col(int grid[4][4], int col)
{
	
}

int	main(void)
{
	int	grid[4][4] = {
		{1, 2, 3, 4},
		{2, 3, 4, 1},
		{3, 2, 1, 2},
		{4, 1, 2, 3}
	};

	printf("%d\n", ft_has_duplicate_col(grid, 0));
	printf("%d\n", ft_has_duplicate_col(grid, 1));
	return (0);
}

/*
Allowed functions: none

Goal:
Check if one column has duplicate numbers.

TODO:
1. Fix the column index.
2. Compare every row value with the rows after it.
3. Return 1 if duplicate is found.
4. Return 0 if no duplicate exists.

Test notes:
Column 0 has no duplicate.
Column 1 has duplicate value 2.

Expected output:
0
1
*/
EOF

# ============================================================
# EX13 - FT_IS_VALID_NUMBER
# ============================================================

mkdir -p "$PROJECT/ex13"
cat > "$PROJECT/ex13/ft_is_valid_number.c" <<'EOF'
#include "../training.h"

int	ft_is_valid_number(int grid[4][4], int row, int col, int nb)
{
	
}

int	main(void)
{
	int	grid[4][4] = {
		{1, 2, 0, 0},
		{2, 0, 0, 0},
		{0, 0, 0, 0},
		{0, 0, 0, 0}
	};

	printf("%d\n", ft_is_valid_number(grid, 0, 2, 3));
	printf("%d\n", ft_is_valid_number(grid, 0, 2, 2));
	printf("%d\n", ft_is_valid_number(grid, 2, 0, 1));
	return (0);
}

/*
Allowed functions: none

Goal:
Check if a number can be placed in a cell.

TODO:
1. Check if nb already exists in the same row.
2. Check if nb already exists in the same column.
3. Return 1 if placement is allowed.
4. Return 0 if placement is forbidden.

Test notes:
First test is valid.
Second test fails because 2 exists in the row.
Third test fails because 1 exists in the column.

Expected output:
1
0
0
*/
EOF

# ============================================================
# EX14 - FT_GET_COLUMN
# ============================================================

mkdir -p "$PROJECT/ex14"
cat > "$PROJECT/ex14/ft_get_column.c" <<'EOF'
#include "../training.h"

void	ft_get_column(int grid[4][4], int col, int out[4])
{
	
}

int	main(void)
{
	int	grid[4][4] = {
		{1, 2, 3, 4},
		{2, 3, 4, 1},
		{3, 4, 1, 2},
		{4, 1, 2, 3}
	};
	int	out[4];
	int	i;

	ft_get_column(grid, 1, out);
	i = 0;
	while (i < 4)
	{
		printf("%d\n", out[i]);
		i++;
	}
	return (0);
}

/*
Allowed functions: none

Goal:
Copy one column into a 1D array.

TODO:
1. Loop through rows.
2. Copy grid[i][col] into out[i].
3. Use the output array like a row.

Test notes:
Copies column 1 from the grid.

Expected output:
2
3
4
1
*/
EOF

# ============================================================
# EX15 - FT_VISIBLE_COUNT_REVERSE
# ============================================================

mkdir -p "$PROJECT/ex15"
cat > "$PROJECT/ex15/ft_visible_count_reverse.c" <<'EOF'
#include "../training.h"

int	ft_visible_count_reverse(int row[4])
{
	
}

int	main(void)
{
	int	row1[4] = {1, 2, 3, 4};
	int	row2[4] = {4, 3, 2, 1};
	int	row3[4] = {2, 1, 3, 4};

	printf("%d\n", ft_visible_count_reverse(row1));
	printf("%d\n", ft_visible_count_reverse(row2));
	printf("%d\n", ft_visible_count_reverse(row3));
	return (0);
}

/*
Allowed functions: none

Goal:
Count visible boxes from the right.

TODO:
1. Start at index 3.
2. Move backwards to index 0.
3. Track max height seen so far.
4. Count every new max.

Test notes:
Tests increasing, decreasing, and mixed rows.

Expected output:
1
4
1
*/
EOF

# ============================================================
# EX16 - FT_CHECK_ROW_VIEWS
# ============================================================

mkdir -p "$PROJECT/ex16"
cat > "$PROJECT/ex16/ft_check_row_views.c" <<'EOF'
#include "../training.h"

int	ft_check_row_views(int row[4], int left, int right)
{
	
}

int	main(void)
{
	int	row1[4] = {1, 2, 3, 4};
	int	row2[4] = {4, 3, 2, 1};
	int	row3[4] = {2, 1, 3, 4};

	printf("%d\n", ft_check_row_views(row1, 4, 1));
	printf("%d\n", ft_check_row_views(row2, 1, 4));
	printf("%d\n", ft_check_row_views(row3, 3, 1));
	printf("%d\n", ft_check_row_views(row3, 4, 1));
	return (0);
}

/*
Allowed functions: none

Goal:
Check if a row matches left and right clues.

TODO:
1. Count visibility from the left.
2. Count visibility from the right.
3. Compare both counts with the clues.
4. Return 1 only if both match.

Test notes:
Tests valid rows and one wrong clue.

Expected output:
1
1
1
0
*/
EOF

# ============================================================
# EX17 - FT_CHECK_COLUMN_VIEWS
# ============================================================

mkdir -p "$PROJECT/ex17"
cat > "$PROJECT/ex17/ft_check_column_views.c" <<'EOF'
#include "../training.h"

int	ft_check_column_views(int grid[4][4], int col, int up, int down)
{
	
}

int	main(void)
{
	int	grid[4][4] = {
		{1, 2, 3, 4},
		{2, 3, 4, 1},
		{3, 4, 1, 2},
		{4, 1, 2, 3}
	};

	printf("%d\n", ft_check_column_views(grid, 0, 4, 1));
	printf("%d\n", ft_check_column_views(grid, 1, 3, 2));
	printf("%d\n", ft_check_column_views(grid, 1, 4, 1));
	return (0);
}

/*
Allowed functions: none

Goal:
Check if a column matches up and down clues.

TODO:
1. Copy the column into an array.
2. Count visibility from the top.
3. Count visibility from the bottom.
4. Return 1 only if both match.

Test notes:
Tests two valid column clues and one invalid clue.

Expected output:
1
1
0
*/
EOF

# ============================================================
# EX18 - FT_CHECK_ALL_ROWS
# ============================================================

mkdir -p "$PROJECT/ex18"
cat > "$PROJECT/ex18/ft_check_all_rows.c" <<'EOF'
#include "../training.h"

int	ft_check_all_rows(int grid[4][4], int clues[16])
{
	
}

int	main(void)
{
	int	grid[4][4] = {
		{1, 2, 3, 4},
		{2, 3, 4, 1},
		{3, 4, 1, 2},
		{4, 1, 2, 3}
	};
	int	clues[16] = {4, 3, 2, 1, 1, 2, 2, 2, 4, 3, 2, 1, 1, 2, 2, 2};

	printf("%d\n", ft_check_all_rows(grid, clues));
	return (0);
}

/*
Allowed functions: none

Goal:
Check every row against the row clues.

TODO:
1. Use clues 8 to 11 for left views.
2. Use clues 12 to 15 for right views.
3. Check each row.
4. Return 0 if any row fails.

Test notes:
Uses the example grid and clues from Rush01.

Expected output:
1
*/
EOF

# ============================================================
# EX19 - FT_CHECK_ALL_COLUMNS
# ============================================================

mkdir -p "$PROJECT/ex19"
cat > "$PROJECT/ex19/ft_check_all_columns.c" <<'EOF'
#include "../training.h"

int	ft_check_all_columns(int grid[4][4], int clues[16])
{
	
}

int	main(void)
{
	int	grid[4][4] = {
		{1, 2, 3, 4},
		{2, 3, 4, 1},
		{3, 4, 1, 2},
		{4, 1, 2, 3}
	};
	int	clues[16] = {4, 3, 2, 1, 1, 2, 2, 2, 4, 3, 2, 1, 1, 2, 2, 2};

	printf("%d\n", ft_check_all_columns(grid, clues));
	return (0);
}

/*
Allowed functions: none

Goal:
Check every column against the column clues.

TODO:
1. Use clues 0 to 3 for up views.
2. Use clues 4 to 7 for down views.
3. Check each column.
4. Return 0 if any column fails.

Test notes:
Uses the example grid and clues from Rush01.

Expected output:
1
*/
EOF

# ============================================================
# EX20 - FT_CHECK_SOLUTION
# ============================================================

mkdir -p "$PROJECT/ex20"
cat > "$PROJECT/ex20/ft_check_solution.c" <<'EOF'
#include "../training.h"

int	ft_check_solution(int grid[4][4], int clues[16])
{
	
}

int	main(void)
{
	int	grid[4][4] = {
		{1, 2, 3, 4},
		{2, 3, 4, 1},
		{3, 4, 1, 2},
		{4, 1, 2, 3}
	};
	int	clues[16] = {4, 3, 2, 1, 1, 2, 2, 2, 4, 3, 2, 1, 1, 2, 2, 2};

	printf("%d\n", ft_check_solution(grid, clues));
	return (0);
}

/*
Allowed functions: none

Goal:
Check if the whole grid is a valid Rush01 solution.

TODO:
1. Check row duplicates.
2. Check column duplicates.
3. Check all row clues.
4. Check all column clues.

Test notes:
Tests the complete example solution.

Expected output:
1
*/
EOF

# ============================================================
# EX21 - FT_SOLVE
# ============================================================

mkdir -p "$PROJECT/ex21"
cat > "$PROJECT/ex21/ft_solve.c" <<'EOF'
#include "../training.h"

int	ft_solve(int grid[4][4], int clues[16], int pos)
{
	
}

int	main(void)
{
	int	grid[4][4] = {
		{0, 0, 0, 0},
		{0, 0, 0, 0},
		{0, 0, 0, 0},
		{0, 0, 0, 0}
	};
	int	clues[16] = {4, 3, 2, 1, 1, 2, 2, 2, 4, 3, 2, 1, 1, 2, 2, 2};

	printf("%d\n", ft_solve(grid, clues, 0));
	return (0);
}

/*
Allowed functions: none

Goal:
Solve the grid using backtracking.

TODO:
1. Convert pos into row and column.
2. Try numbers 1 to 4.
3. Place a valid number.
4. Recurse to the next position.
5. Undo if the path fails.

Test notes:
Tests whether the solver can find a solution from an empty grid.

Expected output:
1
*/
EOF

echo "Created $PROJECT with 22 exercises (ex00-ex21)."

static void	ft_putnbr(int nbr) __attribute__((unused));

static void	ft_putnbr(int nbr)
{
	long	n;
	char	c;

	n = nbr;
	if (n < 0)
	{
		write(1, "-", 1);
		n = -n;
	}
	if (n >= 10)
		ft_putnbr(n / 10);
	c = (n % 10) + '0';
	write(1, &c, 1);
}

#endif
EOF

mkdir -p "$PROJECT/ex00"
cat > "$PROJECT/ex00/ft_print_grid.c" <<'EOF'
#include "../training.h"

void	ft_print_grid(int grid[4][4])
{
	
}

int	main(void)
{
	int	grid[4][4] = {
		{1, 2, 3, 4},
		{5, 6, 7, 8},
		{9, 10, 11, 12},
		{13, 14, 15, 16}
	};

	ft_print_grid(grid);
	return (0);
}

/*
Allowed functions: none

Goal:
Print every value in a 4x4 grid.

TODO:
1. Use a row loop.
2. Use a column loop.
3. Print grid[row][col].

Test notes:
Tests basic 2D array traversal.

Expected output:
1 2 3 4
5 6 7 8
9 10 11 12
13 14 15 16
*/
EOF

mkdir -p "$PROJECT/ex01"
cat > "$PROJECT/ex01/ft_print_row.c" <<'EOF'
#include "../training.h"

void	ft_print_row(int grid[4][4], int row)
{
	
}

int	main(void)
{
	int	grid[4][4] = {
		{1, 2, 3, 4},
		{5, 6, 7, 8},
		{9, 10, 11, 12},
		{13, 14, 15, 16}
	};

	ft_print_row(grid, 2);
	return (0);
}

/*
Allowed functions: none

Goal:
Print one selected row from a 4x4 grid.

TODO:
1. Use row as the fixed first index.
2. Loop through columns.
3. Print grid[row][col].

Test notes:
Tests accessing one row only.

Expected output:
9 10 11 12
*/
EOF

mkdir -p "$PROJECT/ex02"
cat > "$PROJECT/ex02/ft_print_column.c" <<'EOF'
#include "../training.h"

void	ft_print_column(int grid[4][4], int col)
{
	
}

int	main(void)
{
	int	grid[4][4] = {
		{1, 2, 3, 4},
		{5, 6, 7, 8},
		{9, 10, 11, 12},
		{13, 14, 15, 16}
	};

	ft_print_column(grid, 1);
	return (0);
}

/*
Allowed functions: none

Goal:
Print one selected column from a 4x4 grid.

TODO:
1. Use col as the fixed second index.
2. Loop through rows.
3. Print grid[row][col].

Test notes:
Tests column access.

Expected output:
2
6
10
14
*/
EOF

mkdir -p "$PROJECT/ex03"
cat > "$PROJECT/ex03/ft_get_value.c" <<'EOF'
#include "../training.h"

int	ft_get_value(int grid[4][4], int row, int col)
{
	
}

int	main(void)
{
	int	grid[4][4] = {
		{1, 2, 3, 4},
		{5, 6, 7, 8},
		{9, 10, 11, 12},
		{13, 14, 15, 16}
	};

	printf("%d\n", ft_get_value(grid, 2, 3));
	printf("%d\n", ft_get_value(grid, 0, 0));
	return (0);
}

/*
Allowed functions: none

Goal:
Return one value from a 4x4 grid.

TODO:
1. Use row as first index.
2. Use col as second index.
3. Return grid[row][col].

Test notes:
Tests normal access and first cell access.

Expected output:
12
1
*/
EOF

mkdir -p "$PROJECT/ex04"
cat > "$PROJECT/ex04/ft_set_value.c" <<'EOF'
#include "../training.h"

void	ft_set_value(int grid[4][4], int row, int col, int value)
{
	
}

int	main(void)
{
	int	grid[4][4] = {
		{1, 2, 3, 4},
		{5, 6, 7, 8},
		{9, 10, 11, 12},
		{13, 14, 15, 16}
	};

	ft_set_value(grid, 1, 2, 99);
	printf("%d\n", grid[1][2]);
	return (0);
}

/*
Allowed functions: none

Goal:
Change one value inside a 4x4 grid.

TODO:
1. Use row and col to find the cell.
2. Assign value to that cell.
3. Verify the grid changed.

Test notes:
Tests modifying grid[1][2].

Expected output:
99
*/
EOF

mkdir -p "$PROJECT/ex05"
cat > "$PROJECT/ex05/ft_sum_row.c" <<'EOF'
#include "../training.h"

int	ft_sum_row(int grid[4][4], int row)
{
	
}

int	main(void)
{
	int	grid[4][4] = {
		{1, 2, 3, 4},
		{5, 6, 7, 8},
		{9, 10, 11, 12},
		{13, 14, 15, 16}
	};

	printf("%d\n", ft_sum_row(grid, 0));
	printf("%d\n", ft_sum_row(grid, 3));
	return (0);
}

/*
Allowed functions: none

Goal:
Return the sum of one row.

TODO:
1. Fix the row index.
2. Loop through columns.
3. Add every grid[row][col].

Test notes:
Tests first row and last row.

Expected output:
10
58
*/
EOF

mkdir -p "$PROJECT/ex06"
cat > "$PROJECT/ex06/ft_sum_column.c" <<'EOF'
#include "../training.h"

int	ft_sum_column(int grid[4][4], int col)
{
	
}

int	main(void)
{
	int	grid[4][4] = {
		{1, 2, 3, 4},
		{5, 6, 7, 8},
		{9, 10, 11, 12},
		{13, 14, 15, 16}
	};

	printf("%d\n", ft_sum_column(grid, 0));
	printf("%d\n", ft_sum_column(grid, 3));
	return (0);
}

/*
Allowed functions: none

Goal:
Return the sum of one column.

TODO:
1. Fix the column index.
2. Loop through rows.
3. Add every grid[row][col].

Test notes:
Tests first column and last column.

Expected output:
28
40
*/
EOF

mkdir -p "$PROJECT/ex07"
cat > "$PROJECT/ex07/ft_copy_column.c" <<'EOF'
#include "../training.h"

void	ft_copy_column(int grid[4][4], int col, int out[4])
{
	
}

int	main(void)
{
	int	grid[4][4] = {
		{1, 2, 3, 4},
		{5, 6, 7, 8},
		{9, 10, 11, 12},
		{13, 14, 15, 16}
	};
	int	out[4];
	int	i;

	ft_copy_column(grid, 2, out);
	i = 0;
	while (i < 4)
	{
		printf("%d\n", out[i]);
		i++;
	}
	return (0);
}

/*
Allowed functions: none

Goal:
Copy one column into a 1D array.

TODO:
1. Loop through rows.
2. Copy grid[row][col] into out[row].
3. Use this for column-based logic.

Test notes:
Tests copying column 2.

Expected output:
3
7
11
15
*/
EOF

mkdir -p "$PROJECT/ex08"
cat > "$PROJECT/ex08/ft_has_value_row.c" <<'EOF'
#include "../training.h"

int	ft_has_value_row(int grid[4][4], int row, int value)
{
	
}

int	main(void)
{
	int	grid[4][4] = {
		{1, 2, 3, 4},
		{5, 6, 7, 8},
		{9, 10, 11, 12},
		{13, 14, 15, 16}
	};

	printf("%d\n", ft_has_value_row(grid, 1, 7));
	printf("%d\n", ft_has_value_row(grid, 1, 12));
	return (0);
}

/*
Allowed functions: none

Goal:
Check if a row contains a value.

TODO:
1. Fix the row index.
2. Loop through columns.
3. Return 1 if value is found.

Test notes:
Tests found and not found cases.

Expected output:
1
0
*/
EOF

mkdir -p "$PROJECT/ex09"
cat > "$PROJECT/ex09/ft_has_value_column.c" <<'EOF'
#include "../training.h"

int	ft_has_value_column(int grid[4][4], int col, int value)
{
	
}

int	main(void)
{
	int	grid[4][4] = {
		{1, 2, 3, 4},
		{5, 6, 7, 8},
		{9, 10, 11, 12},
		{13, 14, 15, 16}
	};

	printf("%d\n", ft_has_value_column(grid, 2, 11));
	printf("%d\n", ft_has_value_column(grid, 2, 10));
	return (0);
}

/*
Allowed functions: none

Goal:
Check if a column contains a value.

TODO:
1. Fix the column index.
2. Loop through rows.
3. Return 1 if value is found.

Test notes:
Tests found and not found cases.

Expected output:
1
0
*/
EOF

mkdir -p "$PROJECT/ex10"
cat > "$PROJECT/ex10/ft_transpose_grid.c" <<'EOF'
#include "../training.h"

void	ft_transpose_grid(int grid[4][4], int out[4][4])
{
	
}

int	main(void)
{
	int	grid[4][4] = {
		{1, 2, 3, 4},
		{5, 6, 7, 8},
		{9, 10, 11, 12},
		{13, 14, 15, 16}
	};
	int	out[4][4];

	ft_transpose_grid(grid, out);
	printf("%d %d %d %d\n", out[0][0], out[0][1], out[0][2], out[0][3]);
	printf("%d %d %d %d\n", out[1][0], out[1][1], out[1][2], out[1][3]);
	return (0);
}

/*
Allowed functions: none

Goal:
Transpose a 4x4 grid.

TODO:
1. Loop through rows.
2. Loop through columns.
3. Set out[col][row] = grid[row][col].

Test notes:
Tests first two rows of the transposed grid.

Expected output:
1 5 9 13
2 6 10 14
*/
EOF

mkdir -p "$PROJECT/ex11"
cat > "$PROJECT/ex11/ft_print_char_grid.c" <<'EOF'
#include "../training.h"

void	ft_print_char_grid(char grid[3][4])
{
	
}

int	main(void)
{
	char	grid[3][4] = {
		{'a', 'b', 'c', '\0'},
		{'d', 'e', 'f', '\0'},
		{'g', 'h', 'i', '\0'}
	};

	ft_print_char_grid(grid);
	return (0);
}

/*
Allowed functions: write

Goal:
Print a 2D char grid where each row is a string.

TODO:
1. Loop through rows.
2. Loop through characters until null terminator.
3. Print newline after each row.

Test notes:
Tests multidimensional chars and null terminators.

Expected output:
abc
def
ghi
*/
EOF