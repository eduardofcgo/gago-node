#!/bin/bash

usersfile=$1
group=$2

cat ./turmas/$usersfile | while read user 
do
  password="${user}2004${user}2005"	
  label=$user
  echo "Creating node for user $user with password $password"
  echo $password | bash create.sh $group $label > /dev/null
done

