# Utilize an existing dynamic inventory script

## Example ssh_config.py script
```
git clone https://github.com/ansible/ansible
cp ansible/contrib/inventory/ssh_config.py 05-ssh_config.py
mkdir
cat <<EOL>> ~/.ssh/config
Host serverkamu
 Hostname serverkamu.com
 User root
 Port 3922
 IdentityFile ~/.ssh/id_rsa
EOL
ansible all -i 05-ssh_config.py -m ping
```

## Example GCP dynamic inventory script
```
git clone https://github.com/ansible/ansible
cp ansible/contrib/inventory/gce* .
apt install python-google-auth python-requests
```
create gcp service account and key on gcp project as describe at https://itnext.io/getting-started-with-red-hat-ansible-for-google-cloud-platform-fa666c42a00c

And then edit gce.ini based on gcp service account, key, project, zone

```
ansible '*' -i gce.py --list
```
add sshkey from gcp - metadata then test with ping module
```
ansible all -i gce.py -m ping -u widyamedia -e 'ansible_ssh_port=3922'
```

## Referensi
* https://itnext.io/getting-started-with-red-hat-ansible-for-google-cloud-platform-fa666c42a00c
