#!/bin/bash

set -e

./list.sh --no-headers --text --format 'id' --group $1 | while read id
do
	./delete.sh $id
	echo "Deleted $id"
done
