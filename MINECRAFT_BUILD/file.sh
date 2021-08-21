#!/bin/bash

sushi="abcd0123"
case "$sushi" in
  *"012"*) echo "01" ;;
  "a"*) echo "02" ;;
  ?b*) echo "03";;
  a*) echo "04";;
  [!b-c]*) echo "05";;
  [a-c]*) echo "06";;
  ??c*) echo "07";;
esac
exit
