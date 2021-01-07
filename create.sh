#!/bin/bash

group=$1
label=$2

echo -n Password: 
read -s password

linode-cli linodes create --region eu-west --type g6-nanode-1 --image linode/ubuntu20.04 --root_pass $password --group $group --label $label
