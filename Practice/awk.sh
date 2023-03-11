#1/bin/env bash
cat names | uniq -c | awk 'BEGIN { rows = 0 }
$1 == 1 && $2 ~ /^B[^ ]*$/ { rows += $1 }
END { print rows }'
