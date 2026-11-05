#ifndef TRAINING_H
# define TRAINING_H

# include <stdio.h>
# include <stdlib.h>
# include <unistd.h>
# include <string.h>
# include <limits.h>PROJECT="multidimensional_arrays_training"

mkdir -p "$PROJECT"

# ============================================================
# SHARED HEADER
# ============================================================

cat > "$PROJECT/training.h" <<'EOF'
#ifndef TRAINING_H
# define TRAINING_H

# include <stdio.h>
# include <stdlib.h>
# include <unistd.h>
# include <string.h>
# include <limits.h>

static void	ft_putnbr(int nbr) __attribute__((unused));

static void	ft_putnbr(int nbr)
{
	long	n;
	char	c;

	n = nbr;
	if (n < 0)
	{
		write(1, "-", 1);
		n = -n;
	}
	if (n >= 10)
		ft_putnbr(n / 10);
	c = (n % 10) + '0';
	write(1, &c, 1);
}

#endif
