echo "Enter your Birthdate"
IFS='/'
read -r Day Month Year
Month=$(( 10#$Month ))
cd=20
cm=1
cy=2025

arr=("31" "28" "31" "30" "31" "30" "31" "31" "30" "31" "30" "31")
echo "${arr[@]}"

if [ $Day -gt $cd ];then
    cd=$(( cd + arr[Month - 1] ))
    cm=$(( cm - 1 ))
fi
if [ $Month -gt $cm ];then
    cm=$(( cm + 12 ))
    cy=$(( cy - 1 ))
fi
calculD=$(( cd - Day ))
calculM=$(( cm - Month ))
calculY=$(( cy - Year ))
echo "$calculD $calculM $calculY"
#y2=$(( 2025 - Year ))
