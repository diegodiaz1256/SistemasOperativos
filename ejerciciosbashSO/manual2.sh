#!/bin/bash
var=$(ls /bin)
for i in $var; do
		if [ "$(ls /usr/share/man/man1/"$i.1.gz" 2> /dev/null)" = /usr/share/man/man1/"$i.1.gz" ];
		then
			echo "$i" encontrado;
		else
			echo "$i" no encontrado;
		fi		
done
