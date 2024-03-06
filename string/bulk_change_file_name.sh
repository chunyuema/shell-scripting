#!bin/bash

cd playground
ls *finished* 
for file_name in `ls *finished*.txt`;
do echo $file_name;
echo changing file name ;
mv $file_name ${file_name//_finished/} ;
done