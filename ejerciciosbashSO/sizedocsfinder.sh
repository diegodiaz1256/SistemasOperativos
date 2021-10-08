#!/bin/bash

if [ $# -eq 0 ]
  then
    du "$(pwd)" -as -d 1 --exclude=| sort -n -r |tail -n +2| head -n 2 
  else
    du "$1" -as -d 1 | sort -n -r |tail -n +2| head -n 2 
fi
