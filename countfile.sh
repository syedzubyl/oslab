echo "this program going display num lines and words"
read -p "enter the file name " file
cat -n < $file
words=`wc --words < $file`
lines=`wc --lines < $file`
echo "words $words"
echo "lines $lines"
