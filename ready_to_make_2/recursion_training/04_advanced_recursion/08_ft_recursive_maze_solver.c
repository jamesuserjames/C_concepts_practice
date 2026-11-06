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
