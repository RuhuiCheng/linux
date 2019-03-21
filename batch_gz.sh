
list_alldir(){  
    for file2 in `ls $2`
    do  
    	echo $1/$file2.tgz $2/$file2/
        tar -czf $1/$file2.tgz $2/$file2/
    done  
}
cd /home/crh/temp2018/local/mac_addr_data/mac_addr
list_alldir "./tar2019" "./2019-01-23"