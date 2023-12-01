echo "enter the number "
read n
if [ $n -lt 2 ];
then 
	echo "ITs not a prime number"
	exit
fi

for ((i=2; i<=$n/2; i++)); do 
	ans=$(( n%1 ))
	if [ $ans -eq 0 ]; then
		echo "Its is not a prime "
		exit
	fi
done
echo "its a prime number"


