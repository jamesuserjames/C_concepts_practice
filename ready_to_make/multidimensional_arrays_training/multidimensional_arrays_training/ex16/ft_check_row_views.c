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
