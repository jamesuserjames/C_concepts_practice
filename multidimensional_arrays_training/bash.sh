PROJECT="multidimensional_arrays_training"

mkdir -p "$PROJECT"

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