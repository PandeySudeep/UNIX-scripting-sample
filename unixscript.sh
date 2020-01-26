#!/bin/sh

for f in /home/sudeeppandey/Desktop/unix/rawfiles/*
do
	x=${f##*.}
	if [ $x = 'csv' ]
	then
		mv $f /home/sudeeppandey/Desktop/unix/workingfiles
	else
		mv $f /home/sudeeppandey/Desktop/unix/Archive
	fi
		
done
zip /home/sudeeppandey/Desktop/unix/workingfiles/myzip.zip /home/sudeeppandey/Desktop/unix/Archive/*
rm /home/sudeeppandey/Desktop/unix/Archive/*
chmod 755 /home/sudeeppandey/Desktop/unix/workingfiles/myCSV.csv
sed -i -e "1d" /home/sudeeppandey/Desktop/unix/workingfiles/myCSV.csv
python /home/sudeeppandey/Desktop/unix/codes/pyinsert.py
sh mydump.sh
sh /home/sudeeppandey/Desktop/unix/codes/compare.sh





