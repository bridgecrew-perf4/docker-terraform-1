#cloud-config
repo_update: true
repo_upgrade: all

write_files:
- path: /home/centos/config/meta_data.json
  permissions: '0777'
  content: |
     {
     "meta": {
      "server_role" : "web"
     }
             }
             
- path: /home/centos/testing.sh
  permissions: '0777'
  owner: centos:centos
  content: |
     #!/bin/sh
     touch /home/centos/testing.txt

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
     
     echo "localhost" > /etc/ansible/hosts
     
     sudo mkdir -p /root/.ssh
     
     sudo ssh-keygen -f /root/.ssh/id_rsa -P ""
     
     cat /root/.ssh/id_rsa.pub >> /root/.ssh/authorized_keys

     git clone https://github.com/krishnamaram2/configuration-manager.git

     cd configuration-manager/src/webapp

     ansible-playbook -i hosts plays/webapp.yml


runcmd:
 - touch /home/centos/touch.txt
 - [ sh, /home/centos/testing.sh ]
#- [ sh, /home/centos/ssh_keys.sh ]
 - [ sh, /home/centos/play_books.sh ]

