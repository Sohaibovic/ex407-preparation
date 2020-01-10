# Utilize an existing dynamic inventory script

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
