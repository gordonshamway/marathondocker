#!/bin/bash

echo "Hello Pupsi!"
#Install the SQL-Server

#setup the sqlcmd in path
echo 'export PATH="$PATH:/opt/mssql-tools/bin"' >> ~/.bashrc
source ~/.bashrc

# RUN the slcmd program and open setup.sql
sleep 30s

# now I can use the service-name as a hostname and the normal port to access it under a different container!
/opt/mssql-tools/bin/sqlcmd -S db,1433 -U SA -P Password1 -i /setup.sql

echo "Work done"
