#!/bin/bash

ipset flush blacklist

curl https://raw.githubusercontent.com/mareksr/spamip/master/black.ip.10  | while read ip
do
	ipset add blacklist $ip
done

