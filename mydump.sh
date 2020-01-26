#!/bin/sh
mysql -u me < /home/sudeeppandey/Desktop/unix/codes/dump.sql | sed 's/\t/,/g' > /home/sudeeppandey/Desktop/unix/workingfiles/mydump.csv

