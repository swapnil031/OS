palindrome(){
    num=$1
    temp=$num
    x=0;
    y=0;

    while [ $temp -gt 0 ];do
        x=$(( temp % 10 ));
        y=$(( y * 10 ))
        y=$(( y + x ))
        temp=$(( temp / 10 ))
    done
    if [ $num -eq $y ];then
        echo "palindrome" 
    fi
}

for num in $@
do
    palindrome "$num"
done