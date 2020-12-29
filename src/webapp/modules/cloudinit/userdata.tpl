#cloud-config
repo_update: true
repo_upgrade: all

write_files: 

- path: /home/centos/ssh_keys.sh
  permissions: '0777'
  owner: centos:centos
  content: |
     #!/bin/sh
     ssh-keygen -q -t rsa -N '' -f /home/centos/.ssh/id_rsa <<<y 2>&1 >/dev/null

     cat /home/centos/.ssh/id_rsa.pub >> /home/centos/.ssh/authorized_keys

     ssh -o StrictHostKeyChecking=no centos@localhost
     
- path: /home/centos/play-books.sh
  permissions: '0777'
  owner: centos:centos
  content: |
     #!/bin/sh
     git clone https://github.com/cloudstones/ansible.git

     cd ansible/src/webapp

     ansible-playbook -i hosts plays/webapp.yml


runcmd:
#- [ sh, /home/centos/ssh_keys.sh ]
#- [ sh, /home/centos/play_books.sh ]

