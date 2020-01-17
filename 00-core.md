# Core components of ansible

## inventories

inventory is a list (or group of lists) of managed nodes (or hosts).

default location for inventory is a file called /etc/ansible/hosts, or it can be on other location that specified using -i <path> from ansible / ansible-playbook command line.

default group of inventory is all and ungrouped.

inventory can add ansible variables and group variables.

variables can be grouped at /etc/ansible/host_vars and /etc/ansible/group_vars.

in ansible / ansible-playbook command line, can be used multiple inventory at the same time and can be called by the directory.
```
ansible appserver -i inventory -m ping
ansible-playbook -l appserver -i inventory ping.yml
```
ping.yml
```
- hosts: all
  tasks:
  - name: ping
    ping:
```
test to localhost
```
ansible-playbook -i localhost, ping.yml
```

[Back](https://github.com/widansible/ex407-preparation){: .btn}

[Send feedback](http://www.google.com){: .btn}
