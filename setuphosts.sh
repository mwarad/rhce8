#!/bin/bash

ansible all -u root -k -m yum -a "name=python3 state=present"
ansible all -u root -k -m user -a "name=ansible state=present"
ansible all -u root -k -m copy -a "content='ansible ALL=(ALL)	NOPASSWD: ALL' dest=/etc/sudoers.d/ansible"
ansible all -u root -m authorized_key -a "user=ansible state=present key='{{ lookup('file', '/home/ansible/.ssh/id_rsa.pub') }}'" 
ansible all -m ping

