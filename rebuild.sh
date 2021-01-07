#!/bin/bash

echo -n Password: 
read -s password

linode-cli linodes rebuild $1 --root_pass $password
