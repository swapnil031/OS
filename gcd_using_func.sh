gcd(){

    a=$1
    b=$2
    if [ $a -lt $b ];then
        s=$a
    else
        s=$b
    fi
    for (( i=1;i<=s;i++ ))
    do  
        if [ $((a % i))==0 ] && [ $((b % i))==0 ];then
            r=$i
        fi
    done
    echo $r
}


echo "the no of arguments is: $#"
a=$1
b=$2
result=$(gcd $a $b)
echo "the gcd is $result"