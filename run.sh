#!/bin/sh

pushd .
cd Mission1/vagrant/
vagrant up
echo ">>>>> VM up"
read -t 5 -p "Continue?"

popd
pushd .
cd Mission1/ansible

pip3 install ansible

echo ">>>>> Ansible Installed"
read -t 5 -p "Continue?"

# Using Ansible Ad-Hoc Command to Install nginx & Docker on a VM
ansible -i hosts default --become -m apt -a 'name=nginx state=present'
ansible -i hosts default --become -m shell -a 'curl -fsSL get.docker.com -o get-docker.sh && bash get-docker.sh'

echo ">>>>> Ansible ad-hoc command installed nginx & docker on VM"
read -t 5 -p "Continue?"

# Using Ansible Playbook to Install nginx & Docker on a host
ansible-playbook -i hosts install_NginxAndDocker.yml -v
echo ">>>>> Ansible playbook command installed nginx & docker on VM"
read -t 5 -p "Continue?"

# Create a docker image with ansible installed
ansible-playbook -i hosts create_DockerImageWithAnsibleInside.yml -v
echo ">>>>> Ansible playbook command created a docker image"
read -t 5 -p "Continue?"

# Use ansible to create and start Jenkins, Gogs
ansible-playbook -i hosts start_Jenkins-host.yml
ansible-playbook -i hosts start_Gogs-host.yml

echo ">>>>> Ansible playbook start Jenkins and Gogs"
read -t 5 -p "Continue?"

popd
