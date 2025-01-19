#!/bin/bash
echo "Enter a number:"
read number
# Initialize the factorial variable
factorial=1
i=1
# Calculate the factorial using a loop
while [ $i -le $number ]
do
    factorial=$((factorial * i))
    i=$(( $i + 1 ))
done
# Print the factorial
echo "The factorial of $number is: " $factorial