#!/bin/bash

label=$1

./list.sh --no-headers --format 'id,label' | grep $label | awk -F ' ' '{print $1}'
