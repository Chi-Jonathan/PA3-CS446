#!/bin/bash

#Jonathan Chi/Chi-Jonathan
#This code is meant to get us familiar with bash scripting by: outputting each unique word with a word count in alphabetical order, get every word with the suffix and prefix th sorted and counted, output every unique sentence with an uppercase letter, and output the first 5 and last 7 lines of a text

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