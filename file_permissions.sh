read -p "enter the file name" file
echo "the file permissions are "
ls -l "$file"
echo "enter new permissions"
read perm
chmod "$perm" "$file"

ls -l "$file"