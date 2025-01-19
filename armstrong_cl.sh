armstrong(){
    num=$1
    s=${#num}
    sum=0
    temp=$num
    while [ $temp -gt 0 ]; do
        x=$(( temp % 10 ))
        sum=$(( sum + x**s ))
        temp=$(( temp / 10 ))
    done

    if [ $num -eq $sum ]; then
        echo "armstrong"
    else
        echo "not"
    fi
}


if [ $# = 0 ]; then
    echo "error"
fi

for num in $@ 
do 
    armstrong $num
done
# a=$1 
# echo ${#a}    print the no of digits in an argument
# echo $#       print the no of arguments
# echo $@       print all the arguments