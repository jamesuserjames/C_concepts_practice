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
