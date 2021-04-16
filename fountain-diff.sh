#!/usr/bin/env bash
left="$1"
right="$2"
# compute num lines each
leftLines=`wc -l $left | awk '{print $1}'`
rightLines=`wc -l $right | awk '{print $1}'`
# add 10 to the greater (kind of sloppy, but just in case)
if (( leftLines > rightLines )) ; then
    lines=$(( leftLines + 10 ));
else
    lines=$(( rightLines + 10 ));
fi


# set -v
git --no-pager diff --no-index "-U$lines" \
"$left" \
"$right"

echo "-----------------------"
echo "Copying to clipboard..."
echo "-----------------------"
git --no-pager diff --no-index "-U$lines" \
"$left" \
"$right" \
| pbcopy