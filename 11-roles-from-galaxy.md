# Download roles from an Ansible Galaxy and use them

```
ansible-galaxy list | more
ansible-galaxy search nginx_install | grep widya
#widyaunix.nginx_install                                your description
ansible-galaxy info widyaunix.nginx_install
mkdir roles
ansible-galaxy install widyaunix.nginx_install -p roles/
cat <<EOL>> nginx-install.yml
- hosts: all
  become: yes
  roles:
  - widyaunix.nginx_install
EOL
# try at localhost
sudo ansible-playbook -i localhost -i inventory nginx-install.yml -u root
# try it to webserver group at inventory
ansible-playbook webserver -i inventory nginx-install.yml
```
