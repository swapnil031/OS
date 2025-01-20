prime(){
    a=$1
    b=$2
    count=0;

    for (( i=a ; i<=b ; i++ )) do
        for (( j=1 ; j<=i ; j++ )) do
            if [ $(( i % j )) -eq 0 ];then
                count=$(( count + 1 ))
                #echo "$count"
            fi
        done
        if [ $count -gt 2 ];then
            echo "$i is composite"
        else 
            echo "$i is prime"
        fi
        count=0
    done 
}


a=$1
b=$2
prime $a $b