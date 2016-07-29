#!/bin/bash
#author:Lingfeng Lin

echo "this script is used for get avg value of log file"
i=0
num=0711
for i in {0..15}
do
        echo "$i find:" 
        #ls ./log_pb/$i | egrep -n "0714-"
        #find ./log_pb/$i -type f | egrep -n "0714-"
        for file0 in `ls ./log_pb/$i | egrep -n "20160711"`
        do
                #echo "filename:"
                file0=${file0:3:50}
                echo $file0
                cat ./log_pb/$i/$file0 | awk 'NR==3317'>>./0711/$i.txt
        done


        #cd ./log_pb/$i
        #find ./log_pb/$i -type f | egrep -n "0715"
        #ls ./log_pb/$i | egrep -n "0715"
        for file1 in `ls ./log_pb/$i | egrep -n "20160712"`
        do
                #echo "filename:"
                file1=${file1:3:50}
                echo $file1
                #vi $file
                cat ./log_pb/$i/$file1 | awk 'NR==3317'>>./0711/$i.txt
                #tail -n 7 ./log_pb/$i/$file
                #sed -n '4p'./log_pb/$i/$file
                #continue
        done


#cat ./result_0714/$i.txt>>./result_0714/final.txt
#cat ./result_0714/$i.txt >>./result_0714/a_$i.txt

cat ./$num/$i.txt | awk '{print $11}' >>./$num/final_$i.txt
cat ./$num/final_$i.txt | awk '{a+=$3}END{print a/NR}' >>./$num/avg.txt

done

#cat final.txt |awk '{print $11}'>>./result_0714/result.txt
