output="output.txt"
inp="grade_case.txt"

# Initialize the output file
> "$output"
grade='0'
#echo "$Name|$Roll|$Marks|$grade" >> "$output"
# Process the input file
# while IFS='|' read -r Name Roll Marks; do
#     echo "Name: $Name, Roll: $Roll, Marks: $Marks"
#     echo "$Name|$Roll|$Marks|$grade" >> "$output"
    # Check if Marks is a valid number
    # if ! [[ "$Marks" =~ ^[0-9]+$ ]]; then
    #     echo "Invalid marks for $Name $Roll: $Marks" >> "$output"
    #     continue
    # fi

    # Determine grade based on Marks
    # case $(( Marks / 10 )) in
    #     5)
    #         grade='6'
    #         ;;
    #     6)
    #         grade='7'
    #         ;;
    #     7)
    #         grade='8'
    #         ;;
    #     8)
    #         grade='9'
    #         ;;
    #     9)
    #         grade='10'
    #         ;;
    #     *)
    #         echo "Invalid marks for $Name $Roll: $Marks" >> "$output"
    #         continue
    #         ;;
    # esac
while IFS=' ' read -r name roll marks ; do
    if [ $marks -gt 80 ]; then
        grade="A"
    elif [ $marks -gt 40 ] && [ $marks -le 80 ]; then
        grade="A+"
    else
        grade="F"
    fi
echo "$name $roll $marks $grade" >> "$output"

    # Append to output file
    #echo "$Name|$Roll|$Marks|$grade" >> "$output"
    #printf "%s|%s|%s|%s" "$Name" "$Roll" "$Marks" "$grade" >> "$output"
done < "$inp"
#cat "$output"
