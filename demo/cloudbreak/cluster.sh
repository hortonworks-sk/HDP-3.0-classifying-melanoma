#!/bin/bash

#  Run Post Cluster Install 

AMBARIPASSWORD="BadPass#1"

HOSTNAME=$(hostname --fqdn)

##############################
#  Add users
##############################

useradd user1
usermod -aG hdfs user1

useradd dockeruser


##############################
#  Create HDFS Directories
##############################


sudo -u hdfs hdfs dfs -mkdir /user/admin
sudo -u hdfs hdfs dfs -chown admin /user/admin
sudo -u hdfs hdfs dfs -mkdir /user/user1
sudo -u hdfs hdfs dfs -chown user1 /user/user1

sudo -u hdfs hdfs dfs -mkdir /data
sudo -u hdfs hdfs dfs -mkdir /data/benign
sudo -u hdfs hdfs dfs -mkdir /data/malignant
sudo -u hdfs hdfs dfs -mkdir /data/performance

sudo -u hdfs hdfs dfs -chmod -R 777 /data

##############################
#  Stage Data
##############################

sudo -u hdfs hdfs dfs -put /demo/data/test/benign/* /data/benign
sudo -u hdfs hdfs dfs -put /demo/data/test/malignant/* /data/malignant

exit

##############################
#  Set Up Zeppelin 
##############################



cd /demo/zeppelin

# Get session ID for API Calls (Working)

SESSION=$(curl -i -d "userName=admin&password=$AMBARIPASSWORD" -X POST http://$HOSTNAME:9995/api/login | grep -o 'JSESSIONID.*HttpOnly' | tail -1)

# Load Zeppelin Notebook to Zeppelin (Working)

curl -v -d "@ModelPerformance.json" -b $SESSION -X POST http://$HOSTNAME:9995/api/notebook



# below work for getting and setting session id
#curl -i -d 'userName=admin&password=#BadPass#1' -X POST http://$HOSTNAME:9995/api/login | grep JSESSIONID
#SESSION=$(curl -i -d 'userName=admin&password=admin' -X POST http://$HOSTNAME:9995/api/login | grep -o 'JSESSIONID.*HttpOnly' | tail -1)
#below works for listing notebooks
#curl -v -i -b $SESSION http://$HOSTNAME:9995/api/notebook




