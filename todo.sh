#!/bin/bash
# echo $1 $2
if [ $1 == 'add' ]
then
    echo $2 >> ~/.todo.txt
elif [ $1 == 'list' ]
then
    cat -n ~/.todo.txt
elif [ $1 == 'del' ]
then
    sed -i.bak -e $2d ~/.todo.txt
else
    echo 'Wrong argv'
fi
