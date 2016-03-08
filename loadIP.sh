#!/bin/bash

ipset flush blacklist

curl https://raw.githubusercontent.com/mareksr/spamip/master/black.ip.11  | while read ip
do
        ip2=`echo $ip |sed "s/ .*//g"`
        ipset add blacklist $ip2
done

