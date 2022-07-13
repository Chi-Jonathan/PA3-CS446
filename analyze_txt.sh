#!/bin/bash

filename="$1"
grep -o -E "\w+" "$filename" | sort | uniq -i -c

echo ""

grep -o -E "\w+" "$filename" | sort | grep -i "th$" | uniq -i -c

echo ""

grep -o -E "\w+" "$filename" | sort | grep -i "^th" | uniq -i -c

echo ""

grep "[A-Z]" "$filename" | sort | uniq -c -i

echo ""

head -n 5 "$filename"

echo ""

tail -n 7 "$filename"

echo ""