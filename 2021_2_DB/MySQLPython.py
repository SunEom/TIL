import pymysql

# Connection
con = pymysql.connect(host='localhost',
                      user='root',
                      password='xodid0701',
                      db='mydb',
                      charset='utf8')

cursorObject = con.cursor()

print("connect successful!!")

# SQL query string
sqlQuery = "select ID, name, salary from instructor"

# Execute the sqlQuery
cursorObject.execute(sqlQuery)

# Fetch all the rows
rows = cursorObject.fetchall()

for row in rows:
    #print(row)
    print(row[0], ",", row[1], ",", row[2])


# Close connection
con.commit()
con.close()


