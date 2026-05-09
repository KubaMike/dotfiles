#!/bin/bash

if ! command -v ansible-playbook &> /dev/null; then
sudo apt-get update
sudo apt-get install ansible
echo "Ansible installed."
fi

ansible-playbook ~/.bootstrap/setup.yml --ask-become-pass
