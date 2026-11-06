#!/usr/bin/env bash
set -euo pipefail
ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
for script in "$ROOT"/[0-9][0-9]_*/create_exercises.sh; do
	[[ -f "$script" ]] || continue
	echo "Resetting $(basename "$(dirname "$script")")"
	bash "$script"
done
echo "All training folders reset!"
