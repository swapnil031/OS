factorial(){
    a=$1
    result=1
    for (( i = 1 ; i <=a ; i++ ))
    do 
        result=$(( result * i ))
    done
    echo $result
}
a=10
fact=$(factorial $a)
echo "The number is $fact"

echo "enter the limit"
read limit
for(( i=0 ; i<limit ; i++))
do 
    y=$((i + 1 ))
    fact=$(factorial $y)
    x=$(( limit ** y ))
    y=$(( x / fact ))
    z=$(( z + y ))
done
echo "The number is "$z