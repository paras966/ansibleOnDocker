#!/bin/bash
echo "Input Number of nodes to be connected to ansible server!"
read var
echo "Okay, Enter all the ${var} IP's of nodes in seperate lines..."
for (( i=1; i<=var; i++ ))
do
  read ip
  echo "${ip} ansible_ssh_user=devops ansible_ssh_pass=devops ansible_ssh_port=22" >> /etc/ansible/hosts
done
echo "Successfully added to Ansible server!"
/bin/bash