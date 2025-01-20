echo "enter the RollNo "
read Ro
echo "enter the updated marks"
read mark

test="file_03.txt"
temp="temp_03.txt"
#echo "Roll|Name|Marks" >> "$temp"
# echo "$(wc -l < "$test")"

tail -n +2 "$test" | while IFS='|' read -r Roll Name Marks;do
    if [ $Ro -eq $Roll ];then
        Marks=$mark
    fi
    echo "$Roll|$Name|$Marks" >> "$temp"
done 

mv "$temp" "$test"

#for deleting a record just write continue in line 12
