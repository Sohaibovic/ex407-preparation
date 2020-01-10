# Create Ansible plays and playbooks

## * Know how to work with commonly used Ansible modules

Create common.yml playbook
```
cat <<EOL> common.yml
- name: common ansible modules
  hosts: all
  
  tasks:
  - name: create directory
    file: path=files state=directory
  - name: create file
    file: path=files/file1.txt state=touch
  - name: fill the file
    lineinfile: path=files/file1.txt line='ini adalah file ke satu'
EOL
```
lalu jalankan
```
ansible-playbook -i localhost, 06-common-ansible-modules.yml -c local
ansible-doc file
ls files && cat files/file1.txt
```

## * Use variables to retrieve the results of running commands

