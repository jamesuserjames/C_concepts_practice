#!/usr/bin/env bash

set -euo pipefail

cd "$(dirname "$0")" || exit 1

cat > 00_ft_recursive_print_digits.c <<'EOF'
#include <unistd.h>

void	ft_recursive_print_digits(int n)
{
	
}

/*
GOAL:
Print the non-negative decimal representation with recursive decomposition.

ALLOWED FUNCTIONS:
write

TODO:
1. Print higher digits first using n / 10.
2. Convert the final digit to a character.
3. Write that digit; print zero correctly.

EXPECTED OUTPUT:
Test 1: 123
Test 2: 7
Test 3: 0
*/

int	main(void)
{
	write(1, "Test 1: ", 8);
	ft_recursive_print_digits(123);
	write(1, "\nTest 2: ", 9);
	ft_recursive_print_digits(7);
	write(1, "\nTest 3: ", 9);
	ft_recursive_print_digits(0);
	write(1, "\n", 1);
	return (0);
}

/*
EDGE CASES:
Accept only non-negative integers; do not use printf in the solution.

LEARNING CHECK:
1. How does the recursive decomposition differ from a simple loop?
2. Where does the algorithm branch or combine smaller results?
3. Which condition prevents invalid input in ft_recursive_print_digits()?
4. What value or state is carried into the next recursive call?

NOTE:
The function is intentionally empty. Implement it yourself.
Keep implementation functions at or below 25 lines and respect 42 Norm.
*/
EOF

cat > 01_ft_recursive_print_binary.c <<'EOF'
#include <unistd.h>

void	ft_recursive_print_binary(unsigned int n)
{
	
}

/*
GOAL:
Print an unsigned integer in binary using write and recursion.

ALLOWED FUNCTIONS:
write

TODO:
1. Recurse on n / 2 when n >= 2.
2. Select ASCII 0 or 1 using n % 2.
3. Write the final bit and handle zero.

EXPECTED OUTPUT:
Test 1: 101
Test 2: 1010
Test 3: 0
*/

int	main(void)
{
	write(1, "Test 1: ", 8);
	ft_recursive_print_binary(5);
	write(1, "\nTest 2: ", 9);
	ft_recursive_print_binary(10);
	write(1, "\nTest 3: ", 9);
	ft_recursive_print_binary(0);
	write(1, "\n", 1);
	return (0);
}

/*
EDGE CASES:
Unlike binary_digits, this exercise writes output directly and handles large unsigned values.

LEARNING CHECK:
1. How does the recursive decomposition differ from a simple loop?
2. Where does the algorithm branch or combine smaller results?
3. Which condition prevents invalid input in ft_recursive_print_binary()?
4. What value or state is carried into the next recursive call?

NOTE:
The function is intentionally empty. Implement it yourself.
Keep implementation functions at or below 25 lines and respect 42 Norm.
*/
EOF

cat > 02_ft_recursive_print_hex.c <<'EOF'
#include <unistd.h>

void	ft_recursive_print_hex(unsigned int n)
{
	
}

/*
GOAL:
Print an unsigned integer in lowercase hexadecimal recursively.

ALLOWED FUNCTIONS:
write

TODO:
1. Recurse on n / 16 when n >= 16.
2. Map the last digit through 0123456789abcdef.
3. Write the chosen character and handle zero.

EXPECTED OUTPUT:
Test 1: ff
Test 2: 1000
Test 3: 0
*/

int	main(void)
{
	write(1, "Test 1: ", 8);
	ft_recursive_print_hex(255);
	write(1, "\nTest 2: ", 9);
	ft_recursive_print_hex(4096);
	write(1, "\nTest 3: ", 9);
	ft_recursive_print_hex(0);
	write(1, "\n", 1);
	return (0);
}

/*
EDGE CASES:
Use lowercase letters a through f; only write is permitted.

LEARNING CHECK:
1. How does the recursive decomposition differ from a simple loop?
2. Where does the algorithm branch or combine smaller results?
3. Which condition prevents invalid input in ft_recursive_print_hex()?
4. What value or state is carried into the next recursive call?

NOTE:
The function is intentionally empty. Implement it yourself.
Keep implementation functions at or below 25 lines and respect 42 Norm.
*/
EOF

cat > 03_ft_recursive_permutations.c <<'EOF'
#include <stdio.h>

int	ft_recursive_permutations(int n)
{
	
}

/*
GOAL:
Count permutations by explicitly exploring unused choices with recursive backtracking (not by factorial multiplication).

ALLOWED FUNCTIONS:
none

TODO:
1. Create a local used[] array initialized to zero.
2. For each unused item, mark it and recursively choose the next item.
3. Unmark the item when returning and count complete arrangements.

EXPECTED OUTPUT:
Test 1: 24
Test 2: 2
Test 3: 1
*/

int	main(void)
{
	printf("Test 1: %d\n", ft_recursive_permutations(4));
	printf("Test 2: %d\n", ft_recursive_permutations(2));
	printf("Test 3: %d\n", ft_recursive_permutations(0));
	return (0);
}

/*
EDGE CASES:
Only 0 <= n <= 8; use a small test helper for the visited-state recursion.

LEARNING CHECK:
1. How does the recursive decomposition differ from a simple loop?
2. Where does the algorithm branch or combine smaller results?
3. Which condition prevents invalid input in ft_recursive_permutations()?
4. What value or state is carried into the next recursive call?

NOTE:
The function is intentionally empty. Implement it yourself.
Keep implementation functions at or below 25 lines and respect 42 Norm.
*/
EOF

cat > 04_ft_recursive_combinations.c <<'EOF'
#include <stdio.h>

int	ft_recursive_combinations(int n, int k)
{
	
}

/*
GOAL:
Count combinations of k items chosen from n distinct items.

ALLOWED FUNCTIONS:
none

TODO:
1. Return zero for invalid choices.
2. Return one for k == 0 or k == n.
3. Branch into including or excluding the last item.

EXPECTED OUTPUT:
Test 1: 10
Test 2: 1
Test 3: 0
*/

int	main(void)
{
	printf("Test 1: %d\n", ft_recursive_combinations(5, 2));
	printf("Test 2: %d\n", ft_recursive_combinations(4, 4));
	printf("Test 3: %d\n", ft_recursive_combinations(3, 5));
	return (0);
}

/*
EDGE CASES:
Related to binomial coefficients; emphasize the choose/skip decision tree.

LEARNING CHECK:
1. How does the recursive decomposition differ from a simple loop?
2. Where does the algorithm branch or combine smaller results?
3. Which condition prevents invalid input in ft_recursive_combinations()?
4. What value or state is carried into the next recursive call?

NOTE:
The function is intentionally empty. Implement it yourself.
Keep implementation functions at or below 25 lines and respect 42 Norm.
*/
EOF

cat > 05_ft_recursive_subsets.c <<'EOF'
#include <stdio.h>

int	ft_recursive_subsets(int n)
{
	
}

/*
GOAL:
Count subsets of n distinct elements using two recursive branches per item.

ALLOWED FUNCTIONS:
none

TODO:
1. Return one for the empty set when n == 0.
2. Branch into taking or skipping an element.
3. Combine both recursive counts for n - 1.

EXPECTED OUTPUT:
Test 1: 8
Test 2: 2
Test 3: 1
*/

int	main(void)
{
	printf("Test 1: %d\n", ft_recursive_subsets(3));
	printf("Test 2: %d\n", ft_recursive_subsets(1));
	printf("Test 3: %d\n", ft_recursive_subsets(0));
	return (0);
}

/*
EDGE CASES:
Use n >= 0 and <= 20 to avoid int overflow; count, do not enumerate.

LEARNING CHECK:
1. How does the recursive decomposition differ from a simple loop?
2. Where does the algorithm branch or combine smaller results?
3. Which condition prevents invalid input in ft_recursive_subsets()?
4. What value or state is carried into the next recursive call?

NOTE:
The function is intentionally empty. Implement it yourself.
Keep implementation functions at or below 25 lines and respect 42 Norm.
*/
EOF

cat > 06_ft_recursive_tower_of_hanoi.c <<'EOF'
#include <stdio.h>

int	ft_recursive_tower_of_hanoi(int disks)
{
	
}

/*
GOAL:
Return the minimum number of moves to transfer n Hanoi disks.

ALLOWED FUNCTIONS:
none

TODO:
1. Return zero for zero disks.
2. Move n - 1 disks recursively to a spare peg.
3. Count one large-disk move and another n - 1 transfer.

EXPECTED OUTPUT:
Test 1: 7
Test 2: 1
Test 3: 0
*/

int	main(void)
{
	printf("Test 1: %d\n", ft_recursive_tower_of_hanoi(3));
	printf("Test 2: %d\n", ft_recursive_tower_of_hanoi(1));
	printf("Test 3: %d\n", ft_recursive_tower_of_hanoi(0));
	return (0);
}

/*
EDGE CASES:
Count the moves; this version does not print individual peg operations.

LEARNING CHECK:
1. How does the recursive decomposition differ from a simple loop?
2. Where does the algorithm branch or combine smaller results?
3. Which condition prevents invalid input in ft_recursive_tower_of_hanoi()?
4. What value or state is carried into the next recursive call?

NOTE:
The function is intentionally empty. Implement it yourself.
Keep implementation functions at or below 25 lines and respect 42 Norm.
*/
EOF

cat > 07_ft_recursive_flood_fill.c <<'EOF'
#include <stdio.h>

int	ft_recursive_flood_fill(int grid[4][4], int row, int col, int target, int replacement)
{
	
}

/*
GOAL:
Replace a connected 4-direction region and return cells changed.

ALLOWED FUNCTIONS:
none

TODO:
1. Reject out-of-bounds and non-target cells.
2. Replace the current matching cell immediately.
3. Recurse in four directions and count changed cells.

EXPECTED OUTPUT:
Test 1: 3
Test 2: 9 9
Test 3: 0
*/

int	main(void)
{
	int grid[4][4] = {
		{1, 1, 0, 0},
		{1, 0, 0, 2},
		{0, 0, 2, 2},
		{3, 3, 2, 0}
	};

	printf("Test 1: %d\n", ft_recursive_flood_fill(grid, 0, 0, 1, 9));
	printf("Test 2: %d %d\n", grid[0][0], grid[1][0]);
	printf("Test 3: %d\n", ft_recursive_flood_fill(grid, 0, 3, 1, 9));
	return (0);
}

/*
EDGE CASES:
Target and replacement must differ; recursion uses 4-neighbor connectivity.

LEARNING CHECK:
1. How does the recursive decomposition differ from a simple loop?
2. Where does the algorithm branch or combine smaller results?
3. Which condition prevents invalid input in ft_recursive_flood_fill()?
4. What value or state is carried into the next recursive call?

NOTE:
The function is intentionally empty. Implement it yourself.
Keep implementation functions at or below 25 lines and respect 42 Norm.
*/
EOF

cat > 08_ft_recursive_maze_solver.c <<'EOF'
#include <stdio.h>

int	ft_recursive_maze_solver(char maze[5][6], int row, int col)
{
	
}

/*
GOAL:
Find a path from S to E in a fixed 5x5 maze using backtracking.

ALLOWED FUNCTIONS:
none

TODO:
1. Reject walls, visited cells, and out-of-bounds positions.
2. Return one on reaching E.
3. Mark open positions visited and search four neighbors.

EXPECTED OUTPUT:
Test 1: 1
Test 2: 0
*/

int	main(void)
{
	char maze[5][6] = {
		"S...#",
		"##..#",
		"...##",
		".#...",
		"...E#"
	};
	char blocked[5][6] = {
		"S####",
		"#####",
		"#####",
		"####E",
		"#####"
	};

	printf("Test 1: %d\n", ft_recursive_maze_solver(maze, 0, 0));
	printf("Test 2: %d\n", ft_recursive_maze_solver(blocked, 0, 0));
	return (0);
}

/*
EDGE CASES:
S and E are traversable; use an in-place visited marker for open cells.

LEARNING CHECK:
1. What is the termination condition?
2. How do you prevent revisiting cells?
3. Why must you check bounds first?
4. How does backtracking recover from dead ends?

NOTE:
The function is intentionally empty. Implement it yourself.
Keep implementation functions at or below 25 lines and respect 42 Norm.
*/
EOF

cat > 09_ft_recursive_merge_sort.c <<'EOF'
#include <stdio.h>

void	ft_recursive_merge_sort(int *arr, int left, int right)
{
	
}

/*
GOAL:
Sort an inclusive array range ascending using recursive merge sort.

ALLOWED FUNCTIONS:
none

TODO:
1. Stop at ranges of zero or one element.
2. Split the range and recursively sort both halves.
3. Merge the sorted halves using a temporary buffer.

EXPECTED OUTPUT:
Test 1: -1 0 2 3 3 5
Test 2: 7
*/

int	main(void)
{
	int values[6] = {5, -1, 3, 3, 0, 2};
	int single[1] = {7};

	ft_recursive_merge_sort(values, 0, 5);
	printf("Test 1: %d %d %d %d %d %d\n", values[0], values[1],
		values[2], values[3], values[4], values[5]);

	ft_recursive_merge_sort(single, 0, 0);
	printf("Test 2: %d\n", single[0]);
	return (0);
}

/*
EDGE CASES:
Use one or more self-written helpers; only valid ranges are supplied.

LEARNING CHECK:
1. How does the recursive decomposition differ from a simple loop?
2. Where does the algorithm branch or combine smaller results?
3. Which condition prevents invalid input in ft_recursive_merge_sort()?
4. What value or state is carried into the next recursive call?

NOTE:
The function is intentionally empty. Implement it yourself.
Keep implementation functions at or below 25 lines and respect 42 Norm.
*/
EOF

cat > 10_ft_recursive_quick_sort.c <<'EOF'
#include <stdio.h>

void	ft_recursive_quick_sort(int *arr, int left, int right)
{
	
}

/*
GOAL:
Sort an inclusive array range ascending using recursive quicksort.

ALLOWED FUNCTIONS:
none

TODO:
1. Stop at ranges with at most one value.
2. Partition values around a chosen pivot.
3. Recursively sort subranges on both sides.

EXPECTED OUTPUT:
Test 1: -1 0 2 2 5 8
Test 2: 9
*/

int	main(void)
{
	int values[6] = {8, 2, -1, 5, 2, 0};
	int single[1] = {9};

	ft_recursive_quick_sort(values, 0, 5);
	printf("Test 1: %d %d %d %d %d %d\n", values[0], values[1],
		values[2], values[3], values[4], values[5]);

	ft_recursive_quick_sort(single, 0, 0);
	printf("Test 2: %d\n", single[0]);
	return (0);
}

/*
EDGE CASES:
Partition correctly when duplicates exist; avoid reading beyond the range.

LEARNING CHECK:
1. How does the recursive decomposition differ from a simple loop?
2. Where does the algorithm branch or combine smaller results?
3. Which condition prevents invalid input in ft_recursive_quick_sort()?
4. What value or state is carried into the next recursive call?

NOTE:
The function is intentionally empty. Implement it yourself.
Keep implementation functions at or below 25 lines and respect 42 Norm.
*/
EOF

cat > 11_ft_recursive_n_queens.c <<'EOF'
#include <stdio.h>

int	ft_recursive_n_queens(int n)
{
	
}

/*
GOAL:
Count the valid arrangements of n queens on an n-by-n chessboard.

ALLOWED FUNCTIONS:
none

TODO:
1. Place one queen in each row.
2. Reject columns and diagonals occupied by previous queens.
3. Backtrack through candidate columns and count complete placements.

EXPECTED OUTPUT:
Test 1: 2
Test 2: 1
Test 3: 0
*/

int	main(void)
{
	printf("Test 1: %d\n", ft_recursive_n_queens(4));
	printf("Test 2: %d\n", ft_recursive_n_queens(1));
	printf("Test 3: %d\n", ft_recursive_n_queens(3));
	return (0);
}

/*
EDGE CASES:
Use 1 <= n <= 8; helper state may use local arrays, not globals.

LEARNING CHECK:
1. How does the recursive decomposition differ from a simple loop?
2. Where does the algorithm branch or combine smaller results?
3. Which condition prevents invalid input in ft_recursive_n_queens()?
4. What value or state is carried into the next recursive call?

NOTE:
The function is intentionally empty. Implement it yourself.
Keep implementation functions at or below 25 lines and respect 42 Norm.
*/
EOF

echo "Reset 12 exercises in 04_advanced_recursion."
