#!/bin/bash
domainlist="
www.iqiyi.com
www.taobao.com
www.jd.com
www.tudou.com
www.pptv.com
"

for domain in `echo $domainlist`
do
	echo "block $domain"
	iptables -I OUTPUT -d $domain -p tcp -j DROP
done
iptables -L OUTPUT --line-numbers
