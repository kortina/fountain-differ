#!/usr/bin/env bash
left="$1"
right="$2"
lines=50000

set -v
git --no-pager diff --no-index "-U$lines" \
"$left" \
"$right"

echo ""
echo "Copying to clipboard..."
git --no-pager diff --no-index "-U$lines" \
"$left" \
"$right" \
| pbcopy