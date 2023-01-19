#!/bin/bash
echo "Enter a username:"
read username

if id -u $username > /dev/null 2>&1
then
  i=1
  while id -u $username$i > /dev/null 2>&1
  do
  ((i++))
  done
  username=$username$i
  else
  username=$username
fi
useradd $username
passwd $username
