# Probation

## Mission 1 - Begin at July 4th

- [x] Start a vagrant virtual machine
    - `Mission1/vagrant/Vagrantfile`
- [x] Using Ansible Ad-Hoc Command to Install nginx & Docker on a VM
    - `cd Mission1/ansible/`
    - `ansible -i hosts default --become -m apt -a 'name=nginx,docker state=present'`
- [x] Using Ansible Playbook to Install nginx & Docker on a host
    - `cd Mission1/ansible/`
    - `ansible-playbook -i hosts install_NginxAndDocker.yml -v`
- [ ] Create a docker image with ansible installed
- [ ] Start Jenkins, Gogs in docker by ansible
- [ ] Using ansible to create a image as deploy server ( JAVA, MYSQL )
- [ ] Create a pipeline to build image ( Build latest Jenkins , JAVA, GOGS )
- [ ] deploy a simple spring boot application

