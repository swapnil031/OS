# dir="."
read -p "enter the directory path" dir
filecount=0;
for file in "$dir"/*;do
    if [ -f "$file" ];then
        echo "$file is a file"
        filecount=$(( filecount + 1 ))
    fi
done 
echo "$filecount"