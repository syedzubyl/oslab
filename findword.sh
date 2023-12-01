echo "here going to find 'UNIX' words and bank lines"
read -p "enter the file" file
grep -i "UNIX" $file
echo "_____________________________________"
bank=$(grep -c '^$' "$file")
echo "the line are $bank"
