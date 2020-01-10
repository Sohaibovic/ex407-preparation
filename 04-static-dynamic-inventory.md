# Use both static and dynamic inventories to define groups of hosts

look at number 5 for reference

```
ansible-inventory -i 05-gce.py --list

cat <<EOL>> inventory/hosts
[tag_http-server]

[tag_https-server]

[widmetrocom:children]
tag_http-server
tag_https-server
EOL

ansible tag_http-server -i 05-gce.py -i inventory --list
ansible widmetrocom -i 05-gce.py -i inventory --list
```

## Reference
* https://docs.ansible.com/ansible/latest/user_guide/intro_dynamic_inventory.html#static-groups-of-dynamic-groups
* https://awsbloglink.wordpress.com/2017/05/17/how-to-use-ansible-inventory-together-dynamic-static/
