import MySQLdb
import csv

file = open('/home/sudeeppandey/Desktop/unix/workingfiles/myCSV.csv', 'r')

conn = MySQLdb.connect(host="localhost",user="root",passwd="alterbridge1",db="mydb")
cur = conn.cursor()

fr=csv.reader(file)
for row in fr:
	print row[0],row[1]
	try:
		cur.execute("""Insert into Sales_record VALUES (%s,%s,%s,%s,%s,%s,%s,%s,%s,%s)""",(row[0],row[1],row[2],row[3],row[4],row[5],row[6],row[7],row[8],row[9]))
		conn.commit()
	except:
		conn.rollback()
conn.close()
