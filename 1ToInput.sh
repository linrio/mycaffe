#! /bin/bash

sum=0
read -p "Please input a number:" a
if ((a < 1)) ; then
        read -p "Please input a number:" a
else
        for i in $(seq 0 $a);
        do
                sum=$[$sum+$i]
        done
fi
echo $sum  
