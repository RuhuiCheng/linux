#!/bin/bash
#

dump=/usr/bin/mongodump
out_dir=/data-bk/mongodb_bcp/mongodb_bcp_now
tar_dir=/data-bk/mongodb_bcp/mongodb_bcp_list
date=`date +%Y_%m_%d`
db_user=''
db_pwd=''
days=20
tar_bcp="mongodb_bcp_$date.tar.gz"

cd $out_dir
rm -rf $out_dir/*
mkdir -p $out_dir/$date
$dump -h 127.0.0.1:27017 -d mangguo_webhook -o $out_dir/$date

tar -zcvPf $tar_dir/$tar_bcp $out_dir/$date

find $tar_dir/ -mtime +$days -delete

exit


