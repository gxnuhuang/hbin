#!/bin/bash
#COMPARE_TIME=2014-06-29
echo -e "\033[41;20m--------------------start backup system----------------------\033[0m"

tar -N '2014-06-29' -czpv -f /media/gxnuhuang/Data_backup/usr_back_$(date +"%Y-%m-%d").tar.gz /usr | tee /media/gxnuhuang/Data_backup/usr_back_$(date +"%Y-%m-%d").log 

echo -e "\033[41;20m--------------------done usr and start backup for etc----------------------\033[0m"

tar -N '2014-06-29' -czpv -f /media/gxnuhuang/Data_backup/etc_back_$(date +"%Y-%m-%d").tar.gz /etc | tee /media/gxnuhuang/Data_backup/etc_back_$(date +"%Y-%m-%d").log

echo -e "\033[41;20m------------------done etc and start backup for root---------------------------\033[0m"

tar -N '2014-06-29' -czpv -f /media/gxnuhuang/Data_backup/root_back_$(date +"%Y-%m-%d").tar.gz /root | tee /media/gxnuhuang/Data_backup/root_back_$(date +"%Y-%m-%d").log

echo -e "\033[41;20m----------------done root and start backup for home--------------------------\033[0m"

tar -N '2014-06-29' -czpv -f /media/gxnuhuang/Data_backup/home_sda7_back_$(date +"%Y-%m-%d").tar.gz /home/gxnuhuang/ --exclude=/home/gxnuhuang/share_data/* | tee /media/gxnuhuang/Data_backup/home_back_$(date +"%Y-%m-%d").log

echo -e "\033[41;20m--------------done home and start backup for data_h---------------------------\033[0m"

tar -N '2014-06-29' -czpv -f /media/gxnuhuang/Data_backup/data_h_sda5_back_$(date +"%Y-%m-%d").tar.gz /data_h  | tee /media/gxnuhuang/Data_backup/data_back_$(date +"%Y-%m-%d").log
