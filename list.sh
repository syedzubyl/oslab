mylist={"apple","banana","date","cherry","potato"}
ele_found="date"
found=0
for item in ${mylist[@]}
do
if [ $item == $ele_found ]
then
found=1
exit
fi
done
if [ $found == 1 ]
then 
echo "$ele_found are in the list"
else 
echo "$ele_found are not in the list"
fi
