#!/usr/bin/env bash
left="$1"
right="$2"
lines=50000

set -v
git diff --no-index "-U$lines" \
"$left" \
"$right"

echo ""
echo "Copying to clipboard..."
git diff --no-index "-U$lines" \
"$left" \
"$right" \
| pbcopy