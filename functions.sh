add(){
    a=$1
    b=$2
    c=$(( a + b ))
    echo $c
}
a=$1
b=$2
result=$(add $a $b)
echo "the addition is : $result"