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
