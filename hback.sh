#!/bin/sh

tar -czpv -f /media/gxnuhuang/Data_backup/usr_back_$(date +"%Y-%m-%d").tar.gz /usr | tee /media/gxnuhuang/Data_backup/usr_back_$(date +"%Y-%m-%d").log 
echo "-----------------------------done usr and start backup for etc-----------------------------------------------"
tar -czpv -f /media/gxnuhuang/Data_backup/etc_back_$(date +"%Y-%m-%d").tar.gz /etc | tee /media/gxnuhuang/Data_backup/etc_back_$(date +"%Y-%m-%d").log
echo "-----------------------------done etc and start backup for root-----------------------------------------------"
tar -czpv -f /media/gxnuhuang/Data_backup/root_back_$(date +"%Y-%m-%d").tar.gz /root | tee /media/gxnuhuang/Data_backup/root_back_$(date +"%Y-%m-%d").log

echo "-----------------------------done root and start backup for home-----------------------------------------------"
tar -czpv -f /media/gxnuhuang/Data_backup/home_sda7_back_$(date +"%Y-%m-%d").tar.gz /home/gxnuhuang/ --exclude=/home/gxnuhuang/share_data/* | tee /media/gxnuhuang/Data_backup/home_back_$(date +"%Y-%m-%d").log

echo "-----------------------------done home and start backup for data_h-----------------------------------------------"
tar -czpv -f /media/gxnuhuang/Data_backup/data_h_sda5_back_$(date +"%Y-%m-%d").tar.gz /data_h  | tee /media/gxnuhuang/Data_backup/data_back_$(date +"%Y-%m-%d").log
