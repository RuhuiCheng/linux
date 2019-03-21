#!/bin/bash

file_split(){
    . '/home/crh/uuspace/sh/test.sh'
    echo $t1
    s_num='20000'
    for file in `ls | grep '^es-json-.*[0-9]$'`; do
        b=$(wc -l $file)
        ln=${b%% *}
        if test $ln -gt $s_num
        then
            #split
            split -l $s_num $file $file'-'
            #rm old
            rm $file
        fi
    done
}

cd /home/crh/install/2019-01-11 && file_split