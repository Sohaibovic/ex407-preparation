# Exam ansible ex407

1. langsung dihadapkan dengan PC linux (masih konsole awalnya)
2. penjaga exam membukakan akses exam dan PC linux lgsg berubah ke tampilan desktop
3. isi nama dan redhat ID, lalu penjaga mengaccept dan baru mulai bisa exam
4. di PC linux (desktop Gnome) sudah langsung terlihat link icon VIEW EXAM setelah di klik langsung terbuka browser yang berisi instruksi dan soal exam
5. bisa di lihat instruksi nya terlebih dahulu, di sana terdapat keterangan nama vm server yang telah disediakan, 1 vm sebagai ansible control, 6 vm sebagai node
6. buka terminal / console linux dari menu di desktop lalu ssh ke vm ansible control dengan ip nya >>> ssh 172.24.1.12
7. soal pertama install ansible >>> yum install ansible -y
8. soal kedua konfigurasi direktori kerja di /home/admin/ansible, command nya >>>
```
cd /home/admin && mkdir ansible && cd ansible
cat <<EOL>> ansible.cfg
[defaults]
inventory = /home/admin/ansible/inventory
roles_path = /home/admin/ansible/roles
EOL
```
9. soal selanjutnya buat inventory file, node1 sebagai group dev, node2 sebagai group test, node3 dan node4 sebagai group prod, node5 sebagai group balancer, node6 sebagai group qa, dan group webserver yang anggota group nya adalah group prod, isi nya >>>
```
cd /home/admin/ansible
cat <<EOL>> inventory
[dev]
node1.example.com ansible_host=172.24.1.5
[test]
node2.example.com ansible_host=172.24.1.6
[prod]
node3.example.com ansible_host=172.24.1.7
node4.example.com ansible_host=172.24.1.8
[balancer]
node5.example.com ansible_host=172.24.1.9
[qa]
node6.example.com ansible_host=172.24.1.10
[webservers:children]
prod
EOL
```
10. test dengan ansible adhoc command
```
ansible all -m ping
```
11. soal selanjutnya menggunakan ansible adhoc command juga, masih yang simple
12. 10 soal selanjutnya itu akan banyak buat playbook dan roles
13. tandai option box done jika sudah selesai di tiap pertanyaan
14. jangan close terminal atau lock / logout komputer jika ingin ditinggal, biarkan seperti itu sampai selesai

# Contoh Soal Exam

### - [ ] [Instruction](https://google.com)

___

### - [ ] [Soal Pertama](https://goo.gl)
### - [ ] [Soal Kedua](https://ddg.gg)
