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

## Referensi
* https://www.tecmint.com/create-ansible-plays-and-playbooks/
* https://github.com/splunk-elk-admin/ex407-ansible/blob/master/a.txt
* https://docs.ansible.com/ansible/latest/user_guide/playbooks_error_handling.html
