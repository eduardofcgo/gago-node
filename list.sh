#!/bin/bash

linode-cli linodes list --text --format 'id,label,group,status,ipv4' "$@"
