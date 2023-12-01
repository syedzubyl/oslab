echo "going to find the letter o and swap the words"
echo "o are"
sed -n '/^[Oo]/ {=;p}' input.txt
echo "swap"
sed 's/\([^ ]*\) \([^ ]*\)/\2\1/' swap.txt

