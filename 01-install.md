# install ansible control node

## * install required packages

### centos
```
yum install python2
yum install epel-release
yum install ansible
```
### centos pip
```
yum install epel-release
yum install python2-pip
pip install ansible==2.7.10
```
### ubuntu
```
apt install software-properties-common
apt-add-repository --yes --update ppa:ansible/ansible
apt install ansible
```

## * create a static host inventory file
```
ansible-doc --list | grep file
ansible-doc file
ansible localhost -m file -a "name=inventory state=directory"

cat <<EOL> inventory/hosts 
[centos]
c7213 ansible_host=192.168.98.213
c7214 ansible_host=192.168.98.214
[ubuntu]
u16223 ansible_host=192.168.98.223
u16224 ansible_host=192.168.98.224
EOL

ansible-doc --list | grep lineinfile
ansible-doc lineinfile
ansible localhost -m lineinfile -a "path=./inventory/hosts line='localhost connection=local' create=yes state=present"
```

### Referensi
* https://releases.ansible.com/ansible/rpm/release/epel-7-x86_64/

