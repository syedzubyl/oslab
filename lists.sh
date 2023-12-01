mylist={"apple","date","cherry"}
ele="cherry"
found=0
for item in ${mylist[@]}
do
	if [ $item == $ele ]
	then 
		found=1
		break
	fi
done 
if [ $found == 1 ]
then 
	echo "element in list"
else
	echo "not"
fi
