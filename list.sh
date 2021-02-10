#!/bin/bash

linode-cli linodes list --text --format 'id,ipv4,group,status,label' --no-headers "$@"
