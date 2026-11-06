#!/usr/bin/env bash
set -euo pipefail

ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

for script in "$ROOT"/0[0-8]_*/create_exercises.sh; do
	[[ -f "$script" ]] || continue
	echo "== $(basename "$(dirname "$script")") =="
	bash "$script"
done

echo "All training exercises reset."
