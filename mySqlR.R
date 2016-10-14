library(dbConnect)

username = 'data607'
password = 'project3'
dbname = 'dataScienceSkills'
host = 'data607-project3.ce2dfe0qxt5q.us-west-2.rds.amazonaws.com'
myDb = dbConnect(MySQL(), user=username, password=password, dbname=dbname, host=host)

# exmple of an insert query; enter NULL for skill_id as skill_id is auto incrementing primary key
insertQry = dbSendQuery(myDb, "INSERT INTO skill_names (skill_id, skill_name) 
                        VALUES (NULL, 'R'), (NULL, 'Python');")
fetch(insertQry, n = -1)

# example of a select query
selectQry = dbSendQuery(myDb, "SELECT * FROM skill_names;")
results = fetch(selectQry, n = -1)
results
