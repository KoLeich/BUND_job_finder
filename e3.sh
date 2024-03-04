#!/bin/bash

mv links.txt links_alt.txt
python3 python_alt.py

while read line
do
    STR=$( curl -L   "$line")
    while read buzzword
    do



        if [[ "$STR" == *"$buzzword"* ]]; then
            echo $line >>$buzzword.txt
            echo $buzzword
        fi
    done < buzzwords.txt

done < links.txt

mv links.txt links_old.txt