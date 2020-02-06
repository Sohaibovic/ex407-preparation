ansible-galaxy install linux-system-roles.timesync -p roles/
#atau
yum install rhel-system-roles
#roles akan terinstall di /usr/share/ansible/roles/
kalau pakai yum berarti di ansible.cfg harus di tambah
roles_path = /usr/share/ansible/roles:/home/namauser/ansible/roles

Referensi:
* https://access.redhat.com/articles/3050101
* https://linux-system-roles.github.io/
* https://galaxy.ansible.com/linux-system-roles/timesync
