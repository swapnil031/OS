test="file_02.txt"
max_number=0
min_number=0
while IFS= read -r line;do
    IFS=' '
    for no in $line;
    do 
        if [ $no -gt $max_number ];then
            max_number=$no
        fi
    done 
done < "$test"
echo "$max_number"