
echo "enter the number"
read num
fact=1
for ((i=1; i<=$num; i++))
do
	fact=$(($fact * $i))
done
echo " $fact the sum the answer are here"


