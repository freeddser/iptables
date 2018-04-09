#!/bin/bash
iplist="
201.11.18.12
123.145.12.1
"

for ip in `echo $iplist`
do
	echo "block $ip"
	iptables -I OUTPUT -d $ip -p tcp -j DROP
done
iptables -L OUTPUT --line-numbers
