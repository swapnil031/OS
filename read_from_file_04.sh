test="file_03.txt"
IFS='|'

i=0;

while [ $i -lt 2 ]; do
    read -r roll name marks

    # if [ "$roll" -eq "exit" ];then
    #     break
    # fi
    
    echo "$roll|$name|$marks" >> "$test"
    i=$(( i + 1 ))
    
done