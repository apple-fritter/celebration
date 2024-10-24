#!/bin/bash

# Loop through all files in the current directory
for file in *; do
    # Skip directories
    if [ -f "$file" ]; then
        # Apply your existing script to each file
        awk '!a[$0]++' "$file" > temp.txt
        sort temp.txt > "$file"
        rm temp.txt
        echo "Processed $file"
    fi
done
