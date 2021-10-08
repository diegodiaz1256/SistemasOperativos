#!/bin/bash
if [ $# -eq 0 ]
  then
    ls "$(pwd)"| grep -E '^a|^b' | grep -v "~"
  else
    ls "$1"| grep -E '^a|^b' | grep -v "~"
fi

