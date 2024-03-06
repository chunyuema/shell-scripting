#!bin/bash

for n in {1..3}; 
do str1=`seq -s ":" 10`;
echo $str1; 
done

# ${#str2} is the fastest
time 
for n in {1..1000};
do str2=`seq -s ":" 100`;
echo ${#str2} &>/dev/null;
done

# ${str2}|wc -L is slower
time 
for n in {1..1000};
do str2=`seq -s ":" 100`;
echo ${str2}|wc -L &>/dev/null;
done