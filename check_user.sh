#!/bin/bash

<<info
To check user exists or not
info

read -p "enter the username:" username
count=$(cat /etc/passwd | grep $username | wc | awk '{print $1}')
 
if [ $count == 0 ];
 then
	 echo " user doesn't exists"
 else
	 echo " user exists"
 fi
