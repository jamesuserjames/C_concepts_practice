#!/usr/bin/env bash
set -euo pipefail
DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

if [[ ! -e "$DIR/ft_static_counter.c" ]]; then
	cat > "$DIR/ft_static_counter.c" <<'GNL_EXERCISE_EOF'
#include <unistd.h>
#include <stdlib.h>
#include <stdarg.h>
#include <limits.h>
#include <stddef.h>
#include <stdint.h>

int ft_static_counter(void)
{
	
}

#include <stdio.h>
#include <string.h>

int main(void) {
printf("Test 1: %d\n", ft_static_counter());
printf("Test 2: %d\n", ft_static_counter());
printf("Test 3: %d\n", ft_static_counter());
return (0);
}

/*
ALLOWED FUNCTIONS:
none for implementation; test main may use libc.

GOAL:
Return an incrementing count retained across calls.

EXPLANATION:
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

EDGE CASES:
Inspect empty inputs, EOF, failures, and allocation ownership where relevant.

LEARNING CHECK:
1. What does each parameter represent?
2. What changes between calls?
3. Who must free any returned allocation?
4. Which test exposes an off-by-one error?

NOTE:
Function intentionally empty. Complete it before compiling with -Werror.
Keep implementation functions at or below 25 lines and respect 42 Norm.
*/
GNL_EXERCISE_EOF
	echo "Created ft_static_counter.c"
else
	echo "Skipped ft_static_counter.c (already exists)"
fi

if [[ ! -e "$DIR/ft_static_char.c" ]]; then
	cat > "$DIR/ft_static_char.c" <<'GNL_EXERCISE_EOF'
#include <unistd.h>
#include <stdlib.h>
#include <stdarg.h>
#include <limits.h>
#include <stddef.h>
#include <stdint.h>

char ft_static_char(char c)
{
	
}

#include <stdio.h>
#include <string.h>

int main(void) {
printf("Test 1: %d\n", (int)ft_static_char('A'));
printf("Test 2: %c\n", ft_static_char('B'));
printf("Test 3: %c\n", ft_static_char('C'));
return (0);
}

/*
ALLOWED FUNCTIONS:
none for implementation; test main may use libc.

GOAL:
Return the previous input character (initially NUL), then remember c.

EXPLANATION:
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

EDGE CASES:
Inspect empty inputs, EOF, failures, and allocation ownership where relevant.

LEARNING CHECK:
1. What does each parameter represent?
2. What changes between calls?
3. Who must free any returned allocation?
4. Which test exposes an off-by-one error?

NOTE:
Function intentionally empty. Complete it before compiling with -Werror.
Keep implementation functions at or below 25 lines and respect 42 Norm.
*/
GNL_EXERCISE_EOF
	echo "Created ft_static_char.c"
else
	echo "Skipped ft_static_char.c (already exists)"
fi

if [[ ! -e "$DIR/ft_static_buffer.c" ]]; then
	cat > "$DIR/ft_static_buffer.c" <<'GNL_EXERCISE_EOF'
#include <unistd.h>
#include <stdlib.h>
#include <stdarg.h>
#include <limits.h>
#include <stddef.h>
#include <stdint.h>

int ft_static_buffer(int value)
{
	
}

#include <stdio.h>
#include <string.h>

int main(void) {
printf("Test 1: %d\n", ft_static_buffer(3));
printf("Test 2: %d\n", ft_static_buffer(-1));
printf("Test 3: %d\n", ft_static_buffer(0));
return (0);
}

/*
ALLOWED FUNCTIONS:
none for implementation; test main may use libc.

GOAL:
Add value to a running total preserved across calls.

EXPLANATION:
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

EDGE CASES:
Inspect empty inputs, EOF, failures, and allocation ownership where relevant.

LEARNING CHECK:
1. What does each parameter represent?
2. What changes between calls?
3. Who must free any returned allocation?
4. Which test exposes an off-by-one error?

NOTE:
Function intentionally empty. Complete it before compiling with -Werror.
Keep implementation functions at or below 25 lines and respect 42 Norm.
*/
GNL_EXERCISE_EOF
	echo "Created ft_static_buffer.c"
else
	echo "Skipped ft_static_buffer.c (already exists)"
fi

if [[ ! -e "$DIR/ft_preserve_state.c" ]]; then
	cat > "$DIR/ft_preserve_state.c" <<'GNL_EXERCISE_EOF'
#include <unistd.h>
#include <stdlib.h>
#include <stdarg.h>
#include <limits.h>
#include <stddef.h>
#include <stdint.h>

int ft_preserve_state(int reset)
{
	
}

#include <stdio.h>
#include <string.h>

int main(void) {
printf("Test 1: %d\n", ft_preserve_state(0));
printf("Test 2: %d\n", ft_preserve_state(0));
printf("Test 3: %d\n", ft_preserve_state(1));
printf("Test 4: %d\n", ft_preserve_state(0));
return (0);
}

/*
ALLOWED FUNCTIONS:
none for implementation; test main may use libc.

GOAL:
Maintain a call counter; reset to zero when reset is nonzero.

EXPLANATION:
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

EDGE CASES:
Inspect empty inputs, EOF, failures, and allocation ownership where relevant.

LEARNING CHECK:
1. What does each parameter represent?
2. What changes between calls?
3. Who must free any returned allocation?
4. Which test exposes an off-by-one error?

NOTE:
Function intentionally empty. Complete it before compiling with -Werror.
Keep implementation functions at or below 25 lines and respect 42 Norm.
*/
GNL_EXERCISE_EOF
	echo "Created ft_preserve_state.c"
else
	echo "Skipped ft_preserve_state.c (already exists)"
fi

