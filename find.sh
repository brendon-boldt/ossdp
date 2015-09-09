#!/bin/sh

files=$(find . -type f)
for file in $files
do
  lines=$(cat $file | grep $1)
  if [ $? -eq 0 ]
  then
    echo === $file ===
    echo $lines
  fi
done
