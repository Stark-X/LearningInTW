# Probation

## Mission 1 - Begin at July 4th

- [x] Start a vagrant virtual machine
    - `Mission1/vagrant/Vagrantfile`
- [x] Using Ansible Ad-Hoc Command to Install nginx & Docker on a VM
    - `cd Mission1/ansible/`
    - `ansible -i hosts default --become -m apt -a 'name=nginx state=present'`
    - `ansible -i hosts default --become -m shell -a 'curl -fsSL get.docker.com -o get-docker.sh && bash get-docker.sh'`
- [x] Using Ansible Playbook to Install nginx & Docker on a host
    - `cd Mission1/ansible/`
    - `ansible-playbook -i hosts install_NginxAndDocker.yml -v`
- [x] Create a docker image with ansible installed
    - `ansible-playbook -i hosts create_DockerImageWithAnsibleInside.yml -v`
- [ ] Start Jenkins, Gogs in docker by ansible
- [ ] Using ansible to create a image as deploy server ( JAVA, MYSQL )
- [ ] Create a pipeline to build image ( Build latest Jenkins , JAVA, GOGS )
- [ ] deploy a simple spring boot application

