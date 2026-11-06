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
