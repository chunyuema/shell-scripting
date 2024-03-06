#!bin/bash
name=chunyuema
echo regular printing: ${name} , $name

# get length
echo length of name: 
echo ${#name}
echo "${name}" | awk '{print length($0)}'

# indexing
echo start from an index: ${name:2} , ${name:4}
echo get substring: ${name:2:5}

# delete
echo delete the first 'chun': ${name#chun}
echo after deletion $name
echo "=== user pattern matching for delete ===="
str1=abcABC123abc
echo original str1: $str1
echo delete matching shortest subtring from start: ${str1#a*c}
echo delete matching longest substring from start: ${str1##a*c}
echo delete matching shortest subtring from end: ${str1%a*c}
echo delete matching longest substring from end: ${str1%%a*c}

# replace
str1=abcabc
echo origin str1: $str1
echo replace first occurence: ${str1/abc/def}
echo replace all occurences: ${str1//abc/ABCD}