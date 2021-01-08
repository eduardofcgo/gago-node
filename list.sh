#!/bin/bash

linode-cli linodes list --format 'id,label,group,status,ipv4' "$@"
