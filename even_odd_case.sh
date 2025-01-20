echo "enter a no"
read no
case $(( no % 2 )) in
    0)
        echo "even";;
    1)
        echo "odd";;
    *)
        echo "yo";;
esac