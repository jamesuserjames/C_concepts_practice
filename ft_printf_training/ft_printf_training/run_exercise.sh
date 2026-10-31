#!/usr/bin/env bash
set -euo pipefail
ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
if [[ $# -ne 1 ]]; then
    echo "Usage: $0 <folder/exercise.c>" >&2
    exit 1
fi
SOURCE="$ROOT/$1"
if [[ ! -f "$SOURCE" ]]; then
    echo "Exercise not found: $SOURCE" >&2
    exit 1
fi
BINARY="$(mktemp "${TMPDIR:-/tmp}/ft_printf_exercise.XXXXXX")"
trap 'rm -f "$BINARY"' EXIT
cc -Wall -Wextra -Wno-unused-parameter -Wno-return-type "$SOURCE" -o "$BINARY"
"$BINARY"
