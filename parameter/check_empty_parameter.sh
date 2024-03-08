#!bin/bash

# myname is empty, so result is chunyue
result1=${myname:-chunyue}
echo ${result1}
echo what is myname: ${myname}

# myname is empty, set result to chunyue, and set myname to chunyue
result2=${myname:=chunyue}
echo ${result2}
echo what is myname: ${myname}

# check if myname is empty, and return default value
echo ${myname:?need to set new name}
# echo ${my_new_name:?need to set new name}

# myname is empty :+ will not do anything 
unset myname
echo "myname is unset: " $myname
echo "do nothing if parameter is empty:" ${myname:+says hello}
myname=chunyue
echo "do something if parameter is non-empty:" ${myname:+ $myname says hello}

