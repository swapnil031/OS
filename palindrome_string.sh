#!/bin/bash

# Function to check if a string is palindrome
check_palindrome() {
    original="$1"
    reversed=$(echo "$original" | rev)  # Reverse the string

    if [ "$original" -eq "$reversed" ]; then
        echo "$original is a palindrome."
    else
        echo "$original is NOT a palindrome."
    fi
}

# Read string from user or provide one
# echo "Enter a string to check if it's a palindrome:"
# read string
for string in $@; do

    check_palindrome $string
done
