#!/bin/bash

# Iterate through all .txt files in the "files" directory
for file in files/*.txt; do
    # Get the first character of the file name and convert it to lowercase
    first_char="$(basename "$file" | head -c 1 | tr '[:upper:]' '[:lower:]')"

    # Check if the first character is a letter (a-z)
    if [[ $first_char =~ [a-z] ]]; then
        # Move the file to the corresponding folder
        mv "$file" "$first_char/"
    fi
done