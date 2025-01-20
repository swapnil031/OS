read -p "enter the path of 1st directory" dr1
read -p "enter the path of 1st directory" dr2

filecount1=0
filecount2=0

for files in "$dr1"/*;do
    if [ -f "$files" ];then
        echo "$files"
        filecount1=$(( filecount1 + 1 ))
    fi
done
echo "$filecount1"

for files in "$dr2"/*;do
    if [ -f "$files" ];then
        echo "$files"
        filecount2=$(( filecount1 + 1 ))
    fi
done
echo "$filecount2"
