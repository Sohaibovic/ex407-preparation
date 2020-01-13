# Create and work with roles

Roles are simply functionalities of playbooks.

Each role is limited to a particular task or the desired output.

```
mkdir roles
ansible init nginx -p roles
cat <<EOL>> nginx-install.yml
- hosts: webserver
  become: yes
  roles:
  - nginx
EOL
```

