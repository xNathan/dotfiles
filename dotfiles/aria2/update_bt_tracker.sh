#!/bin/sh

conf_file=${HOME}/.aria2/aria2.conf

tracker_url="https://github.com/ngosang/trackerslist/raw/master/trackers_best_ip.txt"

list=`curl -sL $tracker_url | sed "/^$/d" | paste -d"," -s -`
echo $list

if [ -z "`grep 'bt-tracker' $conf_file`" ]; then
    sed -i --follow-symlinks "$ a bt-tracker=${list}" $conf_file
    echo "Add bt-tracker"
else
    sed -i --follow-symlinks "s@bt-tracker=.*@bt-tracker=${list}@g" $conf_file
    echo "Update bt-tracker"
fi
