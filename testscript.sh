#!/bin/bash
HOST_IP=$1
PASSWORD=$2
echo "starting mysql database"
mysql --user=root --password=root <<MY_QUERY
USE db_test;
INSERT INTO tbl_test1 (fname) VALUES ('test2');
MY_QUERY
 2>null
echo "Backup has been done"
read -p "Press [Enter] key to exit..."