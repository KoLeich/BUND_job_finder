#!/bin/bash

export A=2

bash aufraumer.sh


touch links_z.txt



donevar=false
x=0
while [ $donevar = false ]
do
    bash e1.sh $x
    str="Seiten/Seite$x.html"
    python3 test.py $x    
    size="$(wc -c <"$str")"

#if [ $size = 0 ] ; then
if [ $x = 33  ] ; then
    donevar=true
    else
  x=$(( $x + 1 ))
fi

done
bash e3.sh
