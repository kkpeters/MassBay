#!/bin/bash
x=1
until [ $x -gt 5 ]
do
  echo "Welcome $x times"
  x=$(( $x + 1 ))
done
