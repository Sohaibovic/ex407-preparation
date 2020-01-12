# Use Ansible modules for system administration tasks

## * Software packages and repositories
create plays or playbook from below manual, scroll until example section, then test it
```
ansible-doc --list | grep reposito
ansible-doc apt_repository
ansible-doc yum_repository
vi packages.yml
```
```
ansible-playbook ubuntu -i inventory packages.yml
```

## * Services
```
ansible-doc service
```

## * Firewall rules
```
ansible-doc firewalld
```

## * Storage and File systems
```
ansible-doc --list | grep -i lvm
ansible-doc lvg
ansible-doc lvol
fallocate -l 1G /disk1
losetup /dev/loop11 /disk1
ansible localhost -m lvg -a "vg=vg1 pvs=/dev/loop11"
ansible localhost -m lvol -a "lv=lvol1 vg=vg1 pvs=/dev/loop11"
ansible-doc filesystem
ansible localhost -m filesystem -a "fstype=xfs dev=/dev/loop11"
```

## * File Content
```
ansible-doc file
```

## * Archiving
```
ansible-doc --list | grep zip
ansible-doc --list | grep archive
ansible-doc archive
ansible-doc unarchive
```

## * Schedule tasks
```
ansible-doc cron
```

## * Security
```
ansible-doc selinux
ansible-doc sysctl
ansible-doc pamd
```

## * Users and groups
```
ansible-doc user
```

