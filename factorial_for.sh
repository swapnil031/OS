#todo use  " ./factorial.sh "  instead of   " sh factorial.sh " in case of for loop
echo "Enter a number:"
read number
# Initialize the factorial variable
factorial=1
# Calculate the factorial using a loop
for (( i = 1; i <=number; i++ ))
do
factorial=$((factorial * i))
done
# Print the factorial
echo "The factorial of $number is: $factorial"