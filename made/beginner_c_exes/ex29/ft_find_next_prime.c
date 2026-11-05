#include <stdio.h>

int	ft_is_prime(int nb)
{
	int	i;

	i = 2;
	if (nb < 2)
		return (0);
	while (i <= nb / i)
	{
		if (nb % i == 0)
			return (0);
		i++;
	}
	return (1);
}

int	ft_find_next_prime(int nb)
{
	while (!ft_is_prime(nb))
		nb++;
	return (nb);
}

int	main(void)
{
	printf("%d\n", ft_find_next_prime(14));
	printf("%d\n", ft_find_next_prime(17));
	printf("%d\n", ft_find_next_prime(0));
	return (0);
}

/*
Allowed functions: none

Goal:
Return the smallest prime number greater than or equal to nb.

TODO:
1. Start checking at nb
2. Determine whether the current number is prime
3. Continue upward until a prime number is found

Test notes:
The tests cover moving forward to a prime, receiving an already-prime value, and an input below the smallest prime.

Expected output:
17
17
2
*/
