#!/bin/bash

# Script to setup repository

ansible all -b -m shell -a "mv /etc/yum.repos.d/*.repo /tmp"
ansible all -b -m copy -a "src=ansible.repo dest=/etc/yum.repos.d/ owner=root group=root mode=0660"
