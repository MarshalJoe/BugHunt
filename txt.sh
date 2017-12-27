#!/bin/bash

total=0

for FILE in `find . -type f -name "*.txt"`

do
    wc -w $FILE
    words=`wc -w < $FILE | tr -d ' '`
    total=$(($total + $words))
done

printf "%'d" $total

echo " words"