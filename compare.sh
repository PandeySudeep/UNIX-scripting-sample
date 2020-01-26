#!/bin/sh
cmp --silent /home/sudeeppandey/Desktop/unix/workingfiles/mydump.csv /home/sudeeppandey/Desktop/unix/workingfiles/myCSV.csv || echo "files are different">/home/sudeeppandey/Desktop/unix/insertsuccess.txt
