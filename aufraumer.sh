c#!/bin/bash

rm Seiten/*

while read buzzword
do
    echo $buzzword
    mv $buzzword.txt $buzzword"_old.txt"
    touch $buzzword.txt
done < buzzwords.txt
