#!/bin/bash
# echo "hello world"
# cat << Hello    #! use of delemeter
# i am good 
# oh yeah
# Hello
# args=("$@")       #! taking command line input using array of elements 

# #echo ${args[0]} ${args[1]} ${args[2]}
# echo ${args[@]}   #!prints the elements of the array
# echo ${#args[#]}  #! length of the array

# while read line  #! reading from a file
# do 
#     echo "$line"
# done < "${1:-/dev/stdin}"

ls -al 1>01_correct.txt 2>02_incorrect.txt  #! transfer the standard output to one file