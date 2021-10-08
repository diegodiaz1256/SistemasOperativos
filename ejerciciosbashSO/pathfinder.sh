#!/bin/bash
var=$(echo "$PATH" | tr ":" "\n")
for i in $var; do
    if [ "$(ls "$i"/"$1" 2> /dev/null)" = "$i"/"$1" ]
    then
        echo "$1" encontrado en "$i"
    fi
done