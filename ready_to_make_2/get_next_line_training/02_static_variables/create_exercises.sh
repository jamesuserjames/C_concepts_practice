#!/usr/bin/env bash
set -euo pipefail
cd "$(dirname "$0")" || exit 1

cat > 00_ft_static_counter.c <<'GNL_EXERCISE_EOF'
#include <unistd.h>
#include <stdlib.h>
#include <stddef.h>
#include <stdio.h>

int	ft_static_counter(void)
{
	
}

/*
GOAL:
Return an incrementing count retained across calls.

TODO:
1. Understand the function contract and test inputs.
2. Use one static local integer.
3. Handle boundaries and errors as documented.
4. Compare outputs with EXPECTED OUTPUT below.

EXPECTED OUTPUT:
Test 1: 1
Test 2: 2
Test 3: 3
*/

int	main(void)
{
	printf("Test 1: %d\n", ft_static_counter());
	printf("Test 2: %d\n", ft_static_counter());
	printf("Test 3: %d\n", ft_static_counter());
	return (0);
}

/*
EDGE CASES:
Test empty or boundary inputs, failure paths, and ownership relevant to: return an incrementing count retained across calls.

LEARNING CHECK:
1. What does the function return for a normal input?
2. How should this function handle an empty or invalid input?
3. What state or memory changes between calls?
4. Which boundary condition should you test next?

NOTE:
The function is intentionally empty. Implement it yourself.
Keep implementation functions at or below 25 lines and respect 42 Norm.
*/
GNL_EXERCISE_EOF

cat > 01_ft_static_char.c <<'GNL_EXERCISE_EOF'
#include <unistd.h>
#include <stdlib.h>
#include <stddef.h>
#include <stdio.h>

char ft_static_char(char c)
{
	
}

/*
GOAL:
Return the previous input character (initially NUL), then remember c.

TODO:
1. Understand the function contract and test inputs.
2. Use a static char and update it after saving the previous value.
3. Handle boundaries and errors as documented.
4. Compare outputs with EXPECTED OUTPUT below.

EXPECTED OUTPUT:
Test 1: 0
Test 2: A
Test 3: B
*/

int	main(void)
{
	printf("Test 1: %d\n", (int)ft_static_char('A'));
	printf("Test 2: %c\n", ft_static_char('B'));
	printf("Test 3: %c\n", ft_static_char('C'));
	return (0);
}

/*
EDGE CASES:
Test empty or boundary inputs, failure paths, and ownership relevant to: return the previous input character (initially NUL), then remember c.

LEARNING CHECK:
1. What does the function return for a normal input?
2. How should this function handle an empty or invalid input?
3. What state or memory changes between calls?
4. Which boundary condition should you test next?

NOTE:
The function is intentionally empty. Implement it yourself.
Keep implementation functions at or below 25 lines and respect 42 Norm.
*/
GNL_EXERCISE_EOF

cat > 02_ft_static_buffer.c <<'GNL_EXERCISE_EOF'
#include <unistd.h>
#include <stdlib.h>
#include <stddef.h>
#include <stdio.h>

int	ft_static_buffer(int value)
{
	
}

/*
GOAL:
Add value to a running total preserved across calls.

TODO:
1. Understand the function contract and test inputs.
2. Use a static int initialized to 0.
3. Handle boundaries and errors as documented.
4. Compare outputs with EXPECTED OUTPUT below.

EXPECTED OUTPUT:
Test 1: 3
Test 2: 2
Test 3: 2
*/

int	main(void)
{
	printf("Test 1: %d\n", ft_static_buffer(3));
	printf("Test 2: %d\n", ft_static_buffer(-1));
	printf("Test 3: %d\n", ft_static_buffer(0));
	return (0);
}

/*
EDGE CASES:
Test empty or boundary inputs, failure paths, and ownership relevant to: add value to a running total preserved across calls.

LEARNING CHECK:
1. What does the function return for a normal input?
2. How should this function handle an empty or invalid input?
3. What state or memory changes between calls?
4. Which boundary condition should you test next?

NOTE:
The function is intentionally empty. Implement it yourself.
Keep implementation functions at or below 25 lines and respect 42 Norm.
*/
GNL_EXERCISE_EOF

cat > 03_ft_preserve_state.c <<'GNL_EXERCISE_EOF'
#include <unistd.h>
#include <stdlib.h>
#include <stddef.h>
#include <stdio.h>

int	ft_preserve_state(int reset)
{
	
}

/*
GOAL:
Maintain a call counter; reset to zero when reset is nonzero.

TODO:
1. Understand the function contract and test inputs.
2. Keep state in a static local variable and do not increment during reset.
3. Handle boundaries and errors as documented.
4. Compare outputs with EXPECTED OUTPUT below.

EXPECTED OUTPUT:
Test 1: 1
Test 2: 2
Test 3: 0
Test 4: 1
*/

int	main(void)
{
	printf("Test 1: %d\n", ft_preserve_state(0));
	printf("Test 2: %d\n", ft_preserve_state(0));
	printf("Test 3: %d\n", ft_preserve_state(1));
	printf("Test 4: %d\n", ft_preserve_state(0));
	return (0);
}

/*
EDGE CASES:
Test empty or boundary inputs, failure paths, and ownership relevant to: maintain a call counter; reset to zero when reset is nonzero.

LEARNING CHECK:
1. What does the function return for a normal input?
2. How should this function handle an empty or invalid input?
3. What state or memory changes between calls?
4. Which boundary condition should you test next?

NOTE:
The function is intentionally empty. Implement it yourself.
Keep implementation functions at or below 25 lines and respect 42 Norm.
*/
GNL_EXERCISE_EOF

echo "Reset 4 exercises in 02_static_variables"
