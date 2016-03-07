#!/bin/bash

ipset flush blacklist

wget https://raw.githubusercontent.com/mareksr/spamip/master/black.ip.10 -O /tmp/black.ip.10 
cat /tmp/black.ip.10  | while read ip
do
	ip2=`echo $ip |sed "s/ .*//g"`
	ipset add blacklist $ip2
done

