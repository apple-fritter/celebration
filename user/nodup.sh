awk '!a[$0]++' $1 > temp.txt
sort temp.txt > $1
rm temp.txt
