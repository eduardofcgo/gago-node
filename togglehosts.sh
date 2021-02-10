#!/bin/bash

backup_hosts="/etc/hosts.bu"

([ -f "$backup_hosts" ] && cp "$backup_hosts" /etc/hosts && rm "$backup_hosts" && echo "Restored hosts") \
|| ([ ! -f "$backup_hosts" ] && cp /etc/hosts "$backup_hosts" && ./hosts.sh >> /etc/hosts && echo "Added hosts")
