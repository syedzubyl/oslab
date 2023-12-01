echo "enter the string"
read s
rvs=`echo $s | rev`
if [ $s = $rvs ]
then 
	echo "its an palindrome"
else
	echo "its an not palindrome"
fi
