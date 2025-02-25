#!/bin/bash
<<note
this is the shell script 
to create the user
note

echo "========Creation of user started============"

read -p "enter the user:" username
read -p "enter the password:" password

sudo useradd -m "$username"

echo -e "$password\n$password" | sudo passwd "$username"

echo "=========Creation of user completed=========="

sudo userdel "$username"
echo "========Deletion of user complete==========="

if [ $(cat /etc/passwd |grep $username | wc |awk '{print $1}') == 0];
then
	echo "as wc is 0 user is deleted"
else
	echo "the user was not deleted"
fi
