#! /bin/bash

a=1
sum=0
while [ "$a" -le 100 ];
do
        sum=$[$a+$sum]
        a=$[$a+1]
done
echo "1 to 100:" $sum
