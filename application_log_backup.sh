#! /bin/bash

##define variables
#app log path
app_log_path=/home/ghost/a/

#destination path
dst_log_bck_path=/home/ghost/b/

#get current date
current_date=$(date +"%Y-%m-%d")

#make tarball of log directory
tar -zcvf ${dst_log_back_path}/${current_date}_backup.tar.gz -C $app_log_path .

#remove orginal log files from original path
rm -f ${app_log_path}/*.log

#remove files older than one month from destination path
find $dst_log_bck_path -type f -name "*.gz" -mtime +30 -exec rm -f {} \;

