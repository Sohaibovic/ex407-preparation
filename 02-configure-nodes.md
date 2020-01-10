# Configure Ansible managed nodes

## * Create and distribute SSH keys to managed nodes
```
mkdir ~/.ssh
ssh-keygen -t rsa -b 2048 -N "" -f ~/.ssh/id_rsa
ansible-doc openssh_keypair
ansible localhost -m openssh_keypair -a "path=~/.ssh/id_rsa size=2048"
ansible centos -i inventory -m user -a "name=ansible"
ansible centos -i inventory -m authorized_key -a "user=ansible state=present key='{{ lookup('file', '~/.ssh/id_rsa.pub') }}'" -u root -k
ansible centos -i inventory -m lineinfile -a "path=/etc/sudoers line='ansible ALL=(ALL) NOPASSWD: ALL'" -u root -k
ansible centos -i inventory -m ping -u ansible
ansible centos -i inventory -m lineinfile -a "path=/etc/motd create=yes line='welcome at {{ inventory_hostname }}'" -u ansible -b
```
