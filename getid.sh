#!/bin/bash

label=$1

./list.sh | grep $label | awk -F ' | ' '{print $2}'
