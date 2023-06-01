#!/bin/bash

set -e

if [[ $(/usr/bin/id -u) -ne 0 ]]; then
    echo "Not running as root"
    exit
fi


cp randomhost /usr/bin/randomhost
chmod +x /usr/bin/randomhost
cp randomhost.service /etc/systemd/system/
systemctl daemon-reload
systemctl enable randomhost
