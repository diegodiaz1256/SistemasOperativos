#!/bin/bash
if [ $# -eq 0 ]
  then
    var=$(ls)
    set -- "$(pwd)"
  else
    var=$(ls "$1")
fi

for i in $var;do
    if [[ $i = *.sh ]]
        then
            chmod +x "$1"/"$i"
            echo "$1"/"$i" executable
    fi
done

