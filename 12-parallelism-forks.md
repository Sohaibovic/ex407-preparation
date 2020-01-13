# Manage parallelism

Parallelism in ansible can be defined from ansible and ansible-playbook command line, just use -f [ how many forks / parallel ]
```
ansible all -i inventory -f 999 -a "uptime"
ansible-playbook webserver -i inventory -f 999 nginx.yml
```

or it can be defined at ansible.cfg using forks = [ number of forks parallel ]
```
[defaults]
inventory      = /data/ansible/ex407-preparation/inventory/hosts
roles_path    = /data/ansible/ex407-preparation/roles
forks          = 999
host_key_checking = False
remote_user = ansible
```
