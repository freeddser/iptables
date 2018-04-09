#!/bin/bash
iptables -I OUTPUT -s 172.105.214.223 -p tcp --sport 10000
iptables -L OUTPUT --line-numbers
sudo iptables -n -v -L -t filter |grep -i 'spt:10000' |awk -F' ' '{print $2}' 
