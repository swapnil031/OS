echo "enter the number"
read num
t=1
x=$num

for (( i=1; i<num; i++ )) do
    t2=$(( i + 1 ))
    x=$(( num / 2 ))
    x=$(( x ** t2))
    #echo "$x"
    if [ $(( i % 2 )) -eq 0 ]; then
        x=$(( -1 * x ));
    fi
    t=$(( t + x ))
done
echo "$t"