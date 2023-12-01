echo "lists of file name in current direcoty:"
echo "the only file display are read, wirte, executable file:"
for file in *
do
	if [ -f $file ]
	then 
		if [ -r $file -a -w $file -a -x $file ]
		then 
			ls -l $file
		fi
	fi
done
