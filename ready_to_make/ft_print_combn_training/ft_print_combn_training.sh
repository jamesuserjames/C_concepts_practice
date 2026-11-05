#!/usr/bin/env bash
set -e

# Creates the exact folder and files from the supplied ZIP.
# Run this script from anywhere; output is next to this script.
SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"
PROJECT="$SCRIPT_DIR/ft_print_combn_training"

mkdir -p "$PROJECT"
mkdir -p "$PROJECT/ex00"
cat > "$PROJECT/ex00/ft_putchar.c" <<'__FT_COMBN_EXERCISE_FILE_END__'
#include <unistd.h>

void	ft_putchar(char c)
{
	
}

int	main(void)
{
	ft_putchar('A');
	write(1, "\n", 1);
	return (0);
}

/*
Allowed functions: write

Goal:
Print one character.

TODO:
1. Use write.
2. Pass address of character.
3. Write exactly one byte.

Test notes:
Normal case prints 'A'.
Edge case prints '\n'.
Boundary case prints '\0'.

Expected output:
A
*/
__FT_COMBN_EXERCISE_FILE_END__

mkdir -p "$PROJECT/ex01"
cat > "$PROJECT/ex01/ft_print_digit.c" <<'__FT_COMBN_EXERCISE_FILE_END__'
#include <unistd.h>

void	ft_print_digit(int digit)
{
	
}

int	main(void)
{
	ft_print_digit(5);
	write(1, "\n", 1);
	ft_print_digit(0);
	write(1, "\n", 1);
	return (0);
}

/*
Allowed functions: write

Goal:
Print a digit from 0 to 9.

TODO:
1. Convert digit to character.
2. Use write to print it.

Test notes:
Normal case prints 5.
Edge case prints 0.
Boundary case digit 9.

Expected output:
5
0
*/
__FT_COMBN_EXERCISE_FILE_END__

mkdir -p "$PROJECT/ex02"
cat > "$PROJECT/ex02/ft_print_array.c" <<'__FT_COMBN_EXERCISE_FILE_END__'
#include <unistd.h>

void	ft_print_array(int arr[10], int n)
{
	
}

int	main(void)
{
	int	arr[10] = {0, 1, 2, 3};
	ft_print_array(arr, 3);
	write(1, "\n", 1);
	return (0);
}

/*
Allowed functions: write

Goal:
Print first n digits of array.

TODO:
1. Loop through array.
2. Convert each digit.
3. Print each digit.

Test notes:
Normal case prints 012.
Edge case n = 1.
Boundary case n = 0.

Expected output:
012
*/
__FT_COMBN_EXERCISE_FILE_END__

mkdir -p "$PROJECT/ex03"
cat > "$PROJECT/ex03/ft_is_last_combination.c" <<'__FT_COMBN_EXERCISE_FILE_END__'
#include <stdio.h>

int	ft_is_last_combination(int arr[10], int n)
{
	
}

int	main(void)
{
	int	a[3] = {7, 8, 9};
	int	b[3] = {1, 2, 3};

	printf("%d\n", ft_is_last_combination(a, 3));
	printf("%d\n", ft_is_last_combination(b, 3));
	return (0);
}

/*
Allowed functions: none

Goal:
Check if combination is last.

TODO:
1. Compare each position.
2. Expected max value is 10 - n + i.
3. Return 1 if all match.

Test notes:
Normal case: last combination.
Edge case: first combination.
Boundary case n = 1.

Expected output:
1
0
*/
__FT_COMBN_EXERCISE_FILE_END__

mkdir -p "$PROJECT/ex04"
cat > "$PROJECT/ex04/ft_init_combination.c" <<'__FT_COMBN_EXERCISE_FILE_END__'
#include <unistd.h>

void	ft_init_combination(int arr[10], int n)
{
	
}

int	main(void)
{
	int	arr[10];

	ft_init_combination(arr, 3);
	write(1, "\n", 1);
	return (0);
}

/*
Allowed functions: none

Goal:
Initialize first combination.

TODO:
1. Fill array with 0..n-1.
2. Each next value increases by 1.

Test notes:
Normal case n = 3.
Edge case n = 1.
Boundary case n = 0.

Expected output:
012
*/
__FT_COMBN_EXERCISE_FILE_END__

mkdir -p "$PROJECT/ex05"
cat > "$PROJECT/ex05/ft_find_increment_pos.c" <<'__FT_COMBN_EXERCISE_FILE_END__'
#include <stdio.h>

int	ft_find_increment_pos(int arr[10], int n)
{
	
}

int	main(void)
{
	int	arr[3] = {0, 1, 9};

	printf("%d\n", ft_find_increment_pos(arr, 3));
	return (0);
}

/*
Allowed functions: none

Goal:
Find index that can be incremented.

TODO:
1. Start from last index.
2. Check if value < max allowed.
3. Return index or -1.

Test notes:
Normal case finds valid index.
Edge case no index possible.
Boundary case n = 1.

Expected output:
1
*/
__FT_COMBN_EXERCISE_FILE_END__

mkdir -p "$PROJECT/ex06"
cat > "$PROJECT/ex06/ft_reset_after_pos.c" <<'__FT_COMBN_EXERCISE_FILE_END__'
#include <unistd.h>

void	ft_reset_after_pos(int arr[10], int n, int pos)
{
	
}

int	main(void)
{
	int	arr[4] = {0, 3, 9, 0};

	ft_reset_after_pos(arr, 4, 1);
	write(1, "\n", 1);
	return (0);
}

/*
Allowed functions: none

Goal:
Reset digits after position.

TODO:
1. Start at pos + 1.
2. Set values increasing.
3. Ensure valid sequence.

Test notes:
Normal case resets correctly.
Edge case pos last index.
Boundary case pos 0.

Expected output:
0456
*/
__FT_COMBN_EXERCISE_FILE_END__

mkdir -p "$PROJECT/ex07"
cat > "$PROJECT/ex07/ft_next_combination.c" <<'__FT_COMBN_EXERCISE_FILE_END__'
#include <stdio.h>

int	ft_next_combination(int arr[10], int n)
{
	
}

int	main(void)
{
	int	arr[3] = {0, 1, 2};

	printf("%d\n", ft_next_combination(arr, 3));
	return (0);
}

/*
Allowed functions: none

Goal:
Generate next combination.

TODO:
1. Find increment position.
2. Increase value.
3. Reset following values.

Test notes:
Normal case moves to next.
Edge case last combination.
Boundary case n = 1.

Expected output:
1
*/
__FT_COMBN_EXERCISE_FILE_END__

mkdir -p "$PROJECT/ex08"
cat > "$PROJECT/ex08/ft_print_combn.c" <<'__FT_COMBN_EXERCISE_FILE_END__'
#include <unistd.h>

void	ft_print_combn(int n)
{
	
}

int	main(void)
{
	ft_print_combn(2);
	write(1, "\n", 1);
	return (0);
}

/*
Allowed functions: write

Goal:
Print all combinations of n digits.

TODO:
1. Initialize combination.
2. Print combination.
3. Generate next until last.

Test notes:
Normal case n = 2.
Edge case n = 1.
Boundary case n = 0 prints nothing.

Expected output:
01, 02, 03, 04, 05, 06, 07, 08, 09, 12, 13, 14, 15, 16, 17, 18, 19, 23, 24, 25, 26, 27, 28, 29, 34, 35, 36, 37, 38, 39, 45, 46, 47, 48, 49, 56, 57, 58, 59, 67, 68, 69, 78, 79, 89
*/
__FT_COMBN_EXERCISE_FILE_END__

echo "Created ft_print_combn_training with 13 C exercise files (no a.txt)."
