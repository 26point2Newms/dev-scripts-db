#!/bin/bash
# sql_to_csv.sh
# Takes a SQL script file name as the 1st arg and the output CSV 
# file name as the 2nd arg, such as:
# ./sql_to_csv.sh my_query.sql out.csv

# Connection format is: "psql -h hostname -U user database""
CONN="psql -h mydbhost.example.com -U username mydatabase"

QUERY="$(sed 's/;//g;/^--/ d;s/--.*//g;' $1 | tr '\n' ' ')"
echo "$QUERY"

echo "\\copy ($QUERY) to '$2' with csv header" | $CONN > /dev/null
