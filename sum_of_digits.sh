echo "enter a number"
read no
echo $no
result=0
while [ $no -gt 0 ]
do 
    r=$(( no % 10 ))
    result=$(( result + r ))
    no=$(( no / 10 ))
done
echo $result