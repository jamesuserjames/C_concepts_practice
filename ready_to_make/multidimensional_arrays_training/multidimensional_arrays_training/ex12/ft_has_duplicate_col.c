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
