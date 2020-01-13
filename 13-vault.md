# Use Ansible Vault in playbooks to protect sensitive data

```
ansible-vault --help
ansible-vault create 13-vault.yml
#enter vault password
ansible-vault edit 13-vault.yml
ansible-vault decrypt 13-vault.yml
cat <<EOL>> 13-vault.yml
- name: vault.yml example
  hosts: all
  
  tasks:
  - name: show shadow
    command: cat /etc/shadow
    register: shadow
  - debug: var=shadow.stdout_lines
EOL
sudo ansible-playbook -i localhost, 13-vault.yml -u root --ask-vault-pass
```

