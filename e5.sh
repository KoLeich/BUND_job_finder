#!/bin/bash

bash e4.sh | sed -n -e '/'$1'-begin/,/'$1'-end/ p' >> "$MINT"todelete.txt

tail -n +2 "$MINT"todelete.txt > "$MINT"todelete2.txt
head -n -1 "$MINT"todelete2.txt > "$MINT"todelete.txt


while read line
do
    firefox $line

done < "$MINT"todelete.txt 

rm "$MINT"todelete.txt
rm "$MINT"todelete2.txt

