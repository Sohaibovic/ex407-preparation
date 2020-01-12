# Create and use templates to create customized configuration files

We use jinja2 formatted for ansible template

```
mkdir template
cat <<EOL>> template/motd.j2
---
Welcome to {{ ansible_hostname }}
This host and the networks is under monitoring
Please use with caution
---
EOL
```
if we run from ansible ad-hoc command, like this
```
ansible all -m template -a "src=template/motd.j2 dest=/etc/motd"
```
or with playbook script, become this
```
cat <<EOL>> motd.yml
- hosts: all
  become: yes
  tasks:
  - template: src=template/motd.j2 dest=/etc/motd
EOL
ansible-playbook -i inventory motd.yml
```
