echo "enter the range"
read range
echo "the number is $range"
output_file="fibonacci_output.txt"
x=0
y=1

if [ $range = 1 ]; then
    echo "$x" >> "$output_file"
    
elif [ $range = 2 ]; then
    echo "$x" >> "$output_file"
    echo "$y" >> "$output_file"

else
    echo "$x " >> "$output_file"
    echo "$y " >> "$output_file"
    range=$(( range - 2 ))
    for(( i=0 ; i<range; i++ ))
    do
        z=$(( x + y))
        echo "$z " >> "$output_file"
        x=$y
        y=$z
    done
fi
