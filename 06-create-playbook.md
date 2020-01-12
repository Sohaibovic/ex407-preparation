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

```
ansible localhost -m setup | grep mount
df -Th /
ansible-playbook -i localhost, 06-retrieve-var.yml -c local
ansible-playbook -i localhost, 06-condition.yml -c local
```

## * Use variables to retrieve the results of running commands

Use register arguments and debug module

## * Use conditionals to control play execution

Use when arguments

## * Configure error handling

Use any_fatal_errors and ignore_errors at plays or tasks

## * Create playbooks to configure systems to a specified state

Use state option at service module

## Some usefull ansible-playbook

```
ansible-playbook --help
ansible-playbook -i localhost, play.yml --syntax-check
ansible-playbook -i localhost, play.yml -C
ansible-playbook -i localhost, play.yml --start-at-task "install web"
ansible-playbook -i localhost, play.yml -tags "install"
ansible-playbook -i localhost, play.yml --skip-tags "install"

```
## Referensi
* https://www.tecmint.com/create-ansible-plays-and-playbooks/
* https://github.com/splunk-elk-admin/ex407-ansible/blob/master/a.txt
* https://docs.ansible.com/ansible/latest/user_guide/playbooks_error_handling.html
* http://eshanshafeeq.com/2019-02-19-playbooks-and-common-modules/
