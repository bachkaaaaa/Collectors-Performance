#!/bin/bash
sudo apt update -y && sudo apt upgrade && sudo apt install -y ansible git 
ansible-pull -U https://github.com/bachkaaaaa/Collectors-Performance.git -i localhost, -c local ansible-playbook/playbook.yml
