# Sample UNIX SHELL SCRIPTING Project:

I present a sample project that highlights using unix shell scripting to work with files.

Following is the step by step tasks accomplished via the primary shell script file 'unixscript.sh'. Before that please visit the file 'sql1.sql' to familiarize
the relational MySQL data table we will be using.

(1) The first part of the script (unixscript.sh) includes a 'for' loop and 'if else conditional statement' to iterate through the            directory and move different files to different locations based on the file extension.
(2) The second part of the script contains some file manipulations like zipping and deleting.
(3) File permission of a particular file (that we will be working on) is changed.
(4) Next part of the script features using 'sed' tool to remove the header line of the file.
(5) The next key part of the script includes triggering a python script 'pyinser.py' to insert data from file into relational data table in MySQL.
(6) Then 'mydump.sh' script is run to dump the data from relational table into a CSV file.
(7) Finally 'compare.sh' script is triggered to compare the source file with the dump file to ensure whether insertion into relational       table from file happened without error.
