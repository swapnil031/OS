# test_file="file_01.txt"
read1(){
    test_file=$1
    while IFS= read -r line;do
        #cho "$line"
        IFS=' '
        for word in $line;do
            echo "$word"
        done
    done < "$test_file"
}

for name in $@
    do 
        read1 $name
    done