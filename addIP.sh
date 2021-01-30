#!/bin/bash
if [ $(($#)) -gt 1 ];
then
        for ip in $*;
        do
                sed -i '$i \\t deny '$ip'' access;
        done
fi

ansible-playbook blockIP.yml -f 2