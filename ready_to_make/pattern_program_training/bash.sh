PROJECT="pattern_program_training"

mkdir -p "$PROJECT/ex00"
cat > "$PROJECT/ex00/ft_print_square.c" <<'EOF'
#include <unistd.h>

void	ft_print_square(int size)
{
	
}

int	main(void)
{
	ft_print_square(3);
	return (0);
}

/*
Allowed functions: write

Goal:
Print a square of stars.

TODO:
1. Loop over rows.
2. Loop over columns.
3. Print '*' for each column.
4. Print newline after each row.

Test notes:
Normal case: size 3.
Edge case: size 1.
Boundary case: size 0 prints nothing.

Expected output:
***
***
***
*/
EOF

mkdir -p "$PROJECT/ex01"
cat > "$PROJECT/ex01/ft_print_rectangle.c" <<'EOF'
#include <unistd.h>

void	ft_print_rectangle(int width, int height)
{
	
}

int	main(void)
{
	ft_print_rectangle(4, 3);
	return (0);
}

/*
Allowed functions: write

Goal:
Print a rectangle of stars.

TODO:
1. Loop height times.
2. Inside, loop width times.
3. Print '*' for each column.
4. Print newline after each row.

Test notes:
Normal case: width 4, height 3.
Edge case: width 1.
Boundary case: height 0 prints nothing.

Expected output:
****
****
****
*/
EOF

mkdir -p "$PROJECT/ex02"
cat > "$PROJECT/ex02/ft_print_right_triangle.c" <<'EOF'
#include <unistd.h>

void	ft_print_right_triangle(int height)
{
	
}

int	main(void)
{
	ft_print_right_triangle(4);
	return (0);
}

/*
Allowed functions: write

Goal:
Print a right triangle.

TODO:
1. Loop from 1 to height.
2. Print i stars for each row.
3. Print newline after each row.

Test notes:
Normal case: height 4.
Edge case: height 1.
Boundary case: height 0 prints nothing.

Expected output:
*
**
***
****
*/
EOF

mkdir -p "$PROJECT/ex03"
cat > "$PROJECT/ex03/ft_print_reverse_triangle.c" <<'EOF'
#include <unistd.h>

void	ft_print_reverse_triangle(int height)
{
	
}

int	main(void)
{
	ft_print_reverse_triangle(4);
	return (0);
}

/*
Allowed functions: write

Goal:
Print a reverse triangle.

TODO:
1. Start from height.
2. Decrease stars each row.
3. Print newline after each row.

Test notes:
Normal case: height 4.
Edge case: height 1.
Boundary case: height 0 prints nothing.

Expected output:
****
***
**
*
*/
EOF

mkdir -p "$PROJECT/ex04"
cat > "$PROJECT/ex04/ft_print_pyramid.c" <<'EOF'
#include <unistd.h>

void	ft_print_pyramid(int height)
{
	
}

int	main(void)
{
	ft_print_pyramid(4);
	return (0);
}

/*
Allowed functions: write

Goal:
Print a centered pyramid.

TODO:
1. Print spaces before stars.
2. Print odd number of stars.
3. Decrease spaces each row.

Test notes:
Normal case: height 4.
Edge case: height 1.
Boundary case: height 0 prints nothing.

Expected output:
   *
  ***
 *****
*******
*/
EOF

mkdir -p "$PROJECT/ex05"
cat > "$PROJECT/ex05/ft_print_diamond.c" <<'EOF'
#include <unistd.h>

void	ft_print_diamond(int size)
{
	
}

int	main(void)
{
	ft_print_diamond(4);
	return (0);
}

/*
Allowed functions: write

Goal:
Print a diamond pattern.

TODO:
1. Print upper pyramid.
2. Print lower pyramid.
3. Avoid duplicating middle line.

Test notes:
Normal case: size 4.
Edge case: size 1.
Boundary case: size 0 prints nothing.

Expected output:
   *
  ***
 *****
*******
 *****
  ***
   *
*/
EOF

mkdir -p "$PROJECT/ex06"
cat > "$PROJECT/ex06/ft_print_hollow_square.c" <<'EOF'
#include <unistd.h>

void	ft_print_hollow_square(int size)
{
	
}

int	main(void)
{
	ft_print_hollow_square(4);
	return (0);
}

/*
Allowed functions: write

Goal:
Print a hollow square.

TODO:
1. Print '*' on borders.
2. Print spaces inside.
3. Print newline after each row.

Test notes:
Normal case: size 4.
Edge case: size 1.
Boundary case: size 0 prints nothing.

Expected output:
****
*  *
*  *
****
*/
EOF

mkdir -p "$PROJECT/ex07"
cat > "$PROJECT/ex07/ft_print_checkerboard.c" <<'EOF'
#include <unistd.h>

void	ft_print_checkerboard(int size)
{
	
}

int	main(void)
{
	ft_print_checkerboard(5);
	return (0);
}

/*
Allowed functions: write

Goal:
Print a checkerboard.

TODO:
1. Use row and column indices.
2. Print '*' if (row + col) is even.
3. Print space otherwise.

Test notes:
Normal case: size 5.
Edge case: size 1.
Boundary case: size 0 prints nothing.

Expected output:
* * *
 * * 
* * *
 * * 
* * *
*/
EOF

mkdir -p "$PROJECT/ex08"
cat > "$PROJECT/ex08/ft_print_number_triangle.c" <<'EOF'
#include <unistd.h>

void	ft_print_number_triangle(int height)
{
	
}

int	main(void)
{
	ft_print_number_triangle(5);
	return (0);
}

/*
Allowed functions: write

Goal:
Print a triangle of increasing numbers.

TODO:
1. Loop through rows from 1 to height.
2. Loop through columns from 1 to the current row.
3. Print the column number instead of a star.
4. Print newline after each row.

Test notes:
Normal case: height 5.
Edge case: height 1.
Boundary case: height 0 prints nothing.
Use single-digit numbers (height <= 9).

Expected output:
1
12
123
1234
12345
*/
EOF