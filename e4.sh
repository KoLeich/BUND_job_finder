#!/bin/bash

while read buzzword
do

    python3 neu.py $buzzword

done < buzzwords.txt


