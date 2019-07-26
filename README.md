# dev-scripts-db
Development scripts for working with databases

## sql-to-csv.sh ##

This is a simple bash shell script to read a postgresql SQL file, run the query and output the contents to a CSV (Comma Seperated Value) file.

To run the script simply pass it two arguments, the 1st argument is the name of your external SQL file and the 2nd argument is the name of the file you want to send the CSV output to. 

For example:
`./sql_to_csv.sh myquery.sql myoutput.csv`

However, you will need to update 3 things in the script first: 
1) Your database hostname (shown as `mydbhost.example.com` in the script)
2) Your database username (shown as `username` in the script)
3) Your database name (shown as `mydatabase` in the script)

You will want to edit this line in the script with the information above:<br/>
`CONN="psql -h mydbhost.example.com -U username mydatabase"`

Once you have that working, you should get a nice CSV file output from your external SQL file.

