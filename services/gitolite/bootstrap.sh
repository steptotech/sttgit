#!/bin/bash

FOLDER=/home/git/repositories/gitolite-admin.git
if [ -f "$FOLDER" ]; then
    echo ""
else 
    su git -c "/home/git/bin/gitolite setup -pk /tmp/admin.pub"
fi

#/usr/sbin/sshd
#/etc/init.d/ssh start
service ssh start

# Bash
/bin/bash
