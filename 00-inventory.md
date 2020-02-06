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
Jika sudah dibuat inventory files, biasanya kita buat di direktori kerja / direktori aktif yang sama dengan playbook kita (sebelumnya sudah di define juga di ansible.cfg, bisa dilihat contohnya di /etc/ansible/ansible.cfg) maka pada saat menjalankan command ansible-playbook itu bisa tanpa option -i

Contoh command di atas menjadi:
```
ansible-playbook ping.yml
```

Pertanyaan terkait inventory ini di exam ansible adalah kita diminta untuk membuat file inventory yang berisi group dev memiliki host node1, group prod memiliki host node2 dan node3, group test memiliki host node4, group balancer memiliki host node5, group qa memiliki host node6, dan group prod merupakan sub group webservers, maka inventory nya menjadi:
```
[dev]
node1.example.com ansible_host=172.24.0.6
[prod]
node2.example.com ansible_host=172.24.0.7
node3.example.com ansible_host=172.24.0.8
[test]
node4.example.com ansible_host=172.24.0.9
[balancer]
node5.example.com ansible_host=172.24.0.10
[qa]
node6.example.com ansible_host=172.24.0.11
[webservers:children]
prod
```
