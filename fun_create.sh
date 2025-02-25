#! /bin/bash
<<info 
creating a user
info

function creating.user {
read -p "enter the username: " username
sudo useradd -m "$username"

echo "$username is created"
}

for (( num=1 ; num <=5 ; num++ ))
do
	creating.user
done
