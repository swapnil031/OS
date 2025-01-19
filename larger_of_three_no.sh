echo "enter the 1st no"
read a
echo "enter the 1st no"
read b
echo "enter the 1st no"
read c
if [ $a -gt $b ] && [ $a -gt $c ];then
    largest=$a
elif [ $b -gt $a ] && [ $b -gt $c ];then
    largest=$b
else   
    largest=$c
fi

echo "the largest no is: $largest"